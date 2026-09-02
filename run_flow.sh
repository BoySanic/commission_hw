#!/usr/bin/env bash
#
# run_flow.sh — Run the LibreLane OpenROAD ASIC implementation flow for
# commission_hw/top_level, headlessly (no IPython/Colab UI).
#
# This mirrors the Colab notebook (notebook.ipynb) but runs on a plain
# Ubuntu NVIDIA (vast.ai) image with bash instead of a notebook kernel.
#
# It will, in order:
#   1. Install Nix (Determinate Systems installer) and set PATH.
#   2. Clone (or update) https://github.com/BoySanic/commission_hw.git
#   3. Download & extract LibreLane, install its Nix deps and pip package.
#   4. Enable the sky130 PDK via ciel.
#   5. Run Synthesis -> Floorplan -> Tap/Endcap -> IO -> PDN -> Global /
#      Detailed placement -> CTS -> ResizerTimingPostCTS -> Repair ->
#      Global/Detailed routing -> Fill -> RCX -> STA -> StreamOut -> DRC ->
#      Spice extraction -> LVS.
#
# The flow currently fails at OpenROAD.ResizerTimingPostCTS (DPL-0036) due to
# pervasive hold violations; the script stops at the first failing step and
# reports which step and that its logs are under <WORKDIR>/librelane_run/.
#
# Usage:
#   bash run_flow.sh                 # uses default REPO_URL + working dir PWD
#   bash run_flow.sh https://github.com/USER/REPO.git   # alternate repo
#
set -u

# ---------------------------------------------------------------------------
# Configurable knobs (override via env)
# ---------------------------------------------------------------------------
REPO_URL="${1:-https://github.com/BoySanic/commission_hw.git}"
REPO_DIR="${REPO_DIR:-commission_hw}"
WORKDIR="${WORKDIR:-$PWD}"
LIBRELANE_VERSION="${LIBRELANE_VERSION:-main}"   # "main" == "latest"
PDK_ROOT="${PDK_ROOT:-$HOME/.ciel}"
PDK="${PDK:-sky130}"

# ---------------------------------------------------------------------------
# 1. Install Nix if needed
# ---------------------------------------------------------------------------
export PATH="/nix/var/nix/profiles/default/bin:/root/.nix-profile/bin:$PATH"
if ! command -v nix-env >/dev/null 2>&1; then
    echo ">> Installing Nix via Determinate Systems installer..."
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix > /tmp/nix_installer.sh
    bash /tmp/nix_installer.sh install \
        --prefer-upstream-nix \
        --no-confirm \
        --extra-conf $'extra-substituters = https://nix-cache.fossi-foundation.org\nextra-trusted-public-keys = nix-cache.fossi-foundation.org:3+K59iFwXqKsL7BNu6Guy0v+uTlwsxYQxjspXzqLYQs=\n'
    export PATH="/nix/var/nix/profiles/default/bin:/root/.nix-profile/bin:$PATH"
fi
echo ">> Nix version: $(nix --version 2>&1 || true)"
NIX_STORE_OK=$(nix-store --version 2>&1 || true)
# after a fresh Nix install on a fresh shell, need to source the profile env
[ -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh ] && \
    . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

cd "$WORKDIR" || exit 1

# ---------------------------------------------------------------------------
# 2. Clone (or update) the design repo
# ---------------------------------------------------------------------------
if [ ! -d "$REPO_DIR/.git" ]; then
    echo ">> Cloning $REPO_URL ..."
    git clone "$REPO_URL" "$REPO_DIR" || { echo "FATAL: clone failed"; exit 1; }
else
    echo ">> Updating existing $REPO_DIR ..."
    ( cd "$REPO_DIR" && git pull --ff-only ) || echo ">> (pull non-fast-forward; continuing)"
fi
REPO_ABS="$WORKDIR/$REPO_DIR"
cd "$REPO_ABS" || exit 1

# ---------------------------------------------------------------------------
# 3. LibreLane: download source, install Nix deps + pip package
# ---------------------------------------------------------------------------
LIBRELANE_DIR="$PWD/librelane_ipynb"
rm -rf "$LIBRELANE_DIR"
mkdir -p "$LIBRELANE_DIR"
echo ">> Downloading LibreLane@$LIBRELANE_VERSION ..."
curl -L "https://github.com/librelane/librelane/tarball/$LIBRELANE_VERSION" \
    | tar -xzC "$LIBRELANE_DIR" --strip-components 1

if ! python3 -c "import tkinter" >/dev/null 2>&1; then
    echo ">> Installing python3-tk ..."
    apt-get update -y >/dev/null 2>&1
    DEBIAN_FRONTEND=noninteractive apt-get install -y python3-tk >/dev/null 2>&1 || \
        echo ">> (apt install python3-tk failed; continuing)"
fi

if [ ! -f "$LIBRELANE_DIR/flake.nix" ]; then
    echo "FATAL: librelane tarball did not contain flake.nix at $LIBRELANE_DIR"; exit 1
fi

# Nix flakes resolve ".#colab-env" against the *Git trackbable* tree at $PWD.
# librelane_ipynb/ is freshly extracted and untracked, so Nix refuses to read
# its flake unless we mark the directory as intent-to-add in Git's index.
echo ">> Marking $LIBRELANE_DIR intent-to-add so Nix can read its flake ..."
git -C "$REPO_ABS" add -N librelane_ipynb 2>/dev/null || true

echo ">> nix profile install .#colab-env (LibreLane toolchain) ..."
( cd "$LIBRELANE_DIR" && nix profile install ".#colab-env" ) || {
    echo "FATAL: nix profile install failed"; exit 1;
}

echo ">> pip install . (LibreLane Python package) ..."
( cd "$LIBRELANE_DIR" && pip3 install . ) || {
    echo "FATAL: pip install librelane failed"; exit 1;
}

# ---------------------------------------------------------------------------
# 4. Enable the PDK via ciel
# ---------------------------------------------------------------------------
echo ">> Enabling PDK $PDK via ciel ..."
python3 - "$PDK_ROOT" "$PDK" "$LIBRELANE_DIR" <<'PY'
import sys, os, yaml
pdk_root, pdk, libdir = sys.argv[1], sys.argv[2], sys.argv[3]
sys.path.insert(0, libdir)
import ciel
from ciel.source import StaticWebDataSource
with open(os.path.join(libdir, "librelane", "pdk_hashes.yaml")) as f:
    pdk_hashes = yaml.safe_load(f)
ciel.enable(
    ciel.get_ciel_home(pdk_root),
    pdk,
    pdk_hashes[pdk],
    data_source=StaticWebDataSource("https://fossi-foundation.github.io/ciel-releases"),
)
print(">> PDK enabled at", ciel.get_ciel_home(pdk_root))
PY
[ $? -eq 0 ] || { echo "FATAL: ciel.enable failed"; exit 1; }

# ---------------------------------------------------------------------------
# 5. Run the implementation flow
# ---------------------------------------------------------------------------
echo ">> Running LibreLane implementation flow ..."
REPO_REL="$REPO_DIR" WORKDIR="$WORKDIR" PDK_ROOT="$PDK_ROOT" \
PYTHONPATH="$LIBRELANE_DIR" \
python3 <<'PY'
import os, sys, traceback

workdir = os.environ["WORKDIR"]
repo_rel = os.environ["REPO_REL"]          # e.g. "commission_hw"
repo_path = os.path.join(workdir, repo_rel)
sys.path.insert(0, repo_path + "/librelane_ipynb")

import logging
logging.getLogger().handlers.clear()
# keep it quiet; step() prints its own progress
logging.basicConfig(level=logging.WARNING)

import librelane
print("librelane version:", librelane.__version__)

from librelane.config import Config

# Only *flow-common* variables are accepted by Config.interactive in LibreLane
# 3.x. Step-scoped knobs (density, resizer, displacement) must be passed on the
# individual Step constructors below, not here.
#
# The SDC path must be a clean absolute path: a "./" prefix makes the config
# validator treat it as relative to DESIGN_DIR and it fails the existence check.
sdc_path = os.path.join(repo_path, "commission_coproc_asic", "constraint.sdc")
assert os.path.exists(sdc_path), f"constraint.sdc not found: {sdc_path}"

Config.interactive(
    "top_level",
    PDK="sky130A",
    CLOCK_PORT="clock",
    CLOCK_NET="clock",
    CLOCK_PERIOD=25,
    PRIMARY_GDSII_STREAMOUT_TOOL="klayout",
    FALLBACK_SDC=sdc_path,
    MAX_FANOUT_CONSTRAINT=8,
)

# Step-scoped knobs (valid only on the step that consumes them):
#   * PL_TARGET_DENSITY_PCT is the canonical density knob (percent), replacing
#     the removed PL_TARGET_DENSITY fraction. 35 == the old "0.35".
#   * PL_MAX_DISPLACEMENT_X/Y defaults (500/100) already match the notebook.
#   * The resizer knobs (PL_RESIZER_HOLD_*) are ignored by this flow version;
#     hold-fix buffer bloat is controlled via the SDC clock uncertainties.
PLACEMENT_STEP_KW  = dict(PL_TARGET_DENSITY_PCT=35)

from librelane.state import State
from librelane.steps import Step

def v(f):
    # notebook uses absolute repo paths in VERILOG_FILES; keep them absolute.
    return os.path.join(repo_path, f)

VERILOG_FILES = [
    v("commission_coproc_asic/top_level.sv"),
    v("commission_coproc_asic/filter_seeds_core.sv"),
    v("commission_coproc_asic/XrsrNextInternal.sv"),
    v("commission_coproc_asic/XrsrRandom_seed_fork.sv"),
    v("commission_coproc_asic/add_u32.sv"),
    v("commission_coproc_asic/add_u64.sv"),
    v("commission_coproc_asic/add_goldenratio.sv"),
    v("commission_coproc_asic/mix1_multiplier.sv"),
    v("commission_coproc_asic/mix2_multiplier.sv"),
    v("commission_coproc_asic/sub_i32.sv"),
    v("commission_coproc_asic/mul_u32.sv"),
    v("commission_coproc_asic/noise_yo_fork.sv"),
    v("commission_coproc_asic/octave_yo_mod1.sv"),
]

chain = [
    ("Yosys.Synthesis", dict(VERILOG_FILES=VERILOG_FILES)),
    ("OpenROAD.Floorplan", {}),
    ("OpenROAD.TapEndcapInsertion", {}),
    ("OpenROAD.IOPlacement", {}),
    ("OpenROAD.GeneratePDN", dict(FP_PDN_VWIDTH=2, FP_PDN_HWIDTH=2,
                                  FP_PDN_VPITCH=30, FP_PDN_HPITCH=30)),
    ("OpenROAD.GlobalPlacement", PLACEMENT_STEP_KW),
    ("OpenROAD.DetailedPlacement", {}),
    ("OpenROAD.CTS", {}),
    ("OpenROAD.ResizerTimingPostCTS", {}),
    ("OpenROAD.RepairDesignPostGRT", {}),
    ("OpenROAD.GlobalRouting", {}),
    ("OpenROAD.DetailedRouting", {}),
    ("OpenROAD.FillInsertion", {}),
    ("OpenROAD.RCX", {}),
    ("OpenROAD.STAPostPNR", {}),
    ("KLayout.StreamOut", {}),
    ("Magic.DRC", {}),
    ("Magic.SpiceExtraction", {}),
    ("Netgen.LVS", {}),
]

state = State()
last_name = None
try:
    for name, kw in chain:
        last_name = name
        print("\n=== STEP %s ===" % name, flush=True)
        step = Step.factory.get(name)(state_in=state, **kw)
        step.start()
        state = step.state_out
        print("   -> %s OK" % name, flush=True)
except Exception as e:
    print("\n!!! FLOW STEP FAILED !!!", flush=True)
    print("Failed in step:", last_name, flush=True)
    print("Error:", repr(e), flush=True)
    traceback.print_exc()
    sys.exit(1)

print("\n=== FLOW COMPLETED SUCCESSFULLY ===")
PY
flow_exit=$?
if [ $flow_exit -ne 0 ]; then
    echo ""
    echo ">> LibreLane flow did NOT complete (exit $flow_exit)."
    echo ">> Check logs under $WORKDIR/librelane_run/"
    exit $flow_exit
fi
echo ">> done."