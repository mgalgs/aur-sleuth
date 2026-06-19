#!/usr/bin/env bash
# Benchmark cheaper judge models against Opus 4.8 baseline.
# Runs candidate models on a fixed set of packages and compares verdicts/costs.
#
# Usage: judge-bench.sh [--packages PKG1,PKG2,...] [--models MODEL1,MODEL2,...]
set -euo pipefail

cd "$(dirname "$0")/.."

DATA_DIR="${AUR_SLEUTH_DATA_DIR:-$HOME/aur-sleuth-data}"
BENCH_DIR="/tmp/claude-scratch/judge-bench"
OPUS_DIR="$DATA_DIR/judge"

# Packages with diverse Opus verdicts (safe/high, safe/medium, inconclusive)
DEFAULT_PACKAGES=(
    posthog-cli          # safe/high, 3 FPs, 5 learnings
    android-udev-git     # safe/high, disagreement trigger
    octopi               # safe/high, clean
    i2p                  # safe/high, disagreement trigger
    codex-native-git     # safe/medium, 3 FPs
    android-studio-canary # inconclusive/medium, ra=true
    firefox-nightly      # inconclusive/medium, ra=true
    backintime-cli       # inconclusive/high, error trigger
)

DEFAULT_MODELS=(
    "google/gemini-2.5-pro"
    "anthropic/claude-sonnet-4.6"
    "deepseek/deepseek-r1"
    "qwen/qwen3-235b-a22b-2507"
)

PACKAGES=("${DEFAULT_PACKAGES[@]}")
MODELS=("${DEFAULT_MODELS[@]}")

while [[ $# -gt 0 ]]; do
    case "$1" in
        --packages) IFS=',' read -ra PACKAGES <<< "$2"; shift 2 ;;
        --models) IFS=',' read -ra MODELS <<< "$2"; shift 2 ;;
        *) echo "Unknown arg: $1" >&2; exit 1 ;;
    esac
done

log() { echo "[$(date '+%H:%M:%S')] $*"; }

mkdir -p "$BENCH_DIR"

# Verify Opus baseline exists for all packages
log "Verifying Opus baseline verdicts..."
for pkg in "${PACKAGES[@]}"; do
    if [[ ! -f "$OPUS_DIR/${pkg}.json" ]]; then
        log "WARNING: No Opus baseline for $pkg, skipping"
        continue
    fi
done

# Print Opus baseline
log ""
log "=== Opus 4.8 Baseline ==="
printf "%-30s %-15s %-10s %-5s %-10s\n" "Package" "Verdict" "Confidence" "RA" "Cost"
printf "%-30s %-15s %-10s %-5s %-10s\n" "-------" "-------" "----------" "--" "----"
for pkg in "${PACKAGES[@]}"; do
    OPUS_FILE="$OPUS_DIR/${pkg}.json" PKG_NAME="$pkg" python3 << 'PYEOF'
import json, os
d = json.load(open(os.environ["OPUS_FILE"]))
pkg = os.environ["PKG_NAME"]
v = d.get("correct_verdict", "?")
c = d.get("confidence", "?")
ra = "Y" if d.get("re_audit_recommended") else "N"
cost = d.get("_judge_usage", {}).get("cost")
cost_str = f"${cost:.4f}" if cost else "?"
print(f"{pkg:<30s} {v:<15s} {c:<10s} {ra:<5s} {cost_str}")
PYEOF
done

# Run each candidate model
log ""
log "=== Running Benchmark ==="
RESULTS_FILE="$BENCH_DIR/results.jsonl"
: > "$RESULTS_FILE"

total_models=${#MODELS[@]}
total_packages=${#PACKAGES[@]}
model_idx=0

for model in "${MODELS[@]}"; do
    model_idx=$((model_idx + 1))
    model_slug="${model//\//-}"
    model_dir="$BENCH_DIR/$model_slug"
    mkdir -p "$model_dir"

    log ""
    log "--- Model $model_idx/$total_models: $model ---"

    pkg_idx=0
    for pkg in "${PACKAGES[@]}"; do
        pkg_idx=$((pkg_idx + 1))

        if [[ ! -f "$OPUS_DIR/${pkg}.json" ]]; then
            continue
        fi

        # Skip if already benchmarked
        if [[ -f "$model_dir/${pkg}.json" ]]; then
            log "  [$pkg_idx/$total_packages] $pkg — cached"
            echo "{\"model\":\"$model\",\"package\":\"$pkg\",\"cached\":true}" >> "$RESULTS_FILE"
            continue
        fi

        log "  [$pkg_idx/$total_packages] Judging $pkg..."

        if output=$(bash bench/judge.sh \
            --package "$pkg" \
            --judge-model "$model" \
            --judge-dir "$model_dir" \
            --no-archive 2>&1); then
            echo "$output" | tail -3
            echo "{\"model\":\"$model\",\"package\":\"$pkg\",\"ok\":true}" >> "$RESULTS_FILE"
        else
            echo "$output" | tail -3
            log "  ERROR: Failed for $pkg"
            echo "{\"model\":\"$model\",\"package\":\"$pkg\",\"ok\":false}" >> "$RESULTS_FILE"
        fi
    done
done

# Generate comparison report
log ""
log "=== Comparison Report ==="

BENCH_MODELS="$(IFS=,; echo "${MODELS[*]}")" \
BENCH_PACKAGES="$(IFS=,; echo "${PACKAGES[*]}")" \
BENCH_DIR="$BENCH_DIR" \
OPUS_DIR="$OPUS_DIR" \
python3 << 'PYEOF'
import json, os, sys

bench_dir = os.environ.get("BENCH_DIR", "/tmp/claude-scratch/judge-bench")
opus_dir = os.environ.get("OPUS_DIR", os.path.expanduser("~/aur-sleuth-data/judge"))
models_str = os.environ.get("BENCH_MODELS", "")
packages_str = os.environ.get("BENCH_PACKAGES", "")

models = [m.strip() for m in models_str.split(",") if m.strip()]
packages = [p.strip() for p in packages_str.split(",") if p.strip()]

# Load Opus baselines
opus = {}
for pkg in packages:
    path = os.path.join(opus_dir, f"{pkg}.json")
    if os.path.exists(path):
        opus[pkg] = json.load(open(path))

# Load candidate results
results = {}
for model in models:
    slug = model.replace("/", "-")
    results[model] = {}
    for pkg in packages:
        path = os.path.join(bench_dir, slug, f"{pkg}.json")
        if os.path.exists(path):
            results[model][pkg] = json.load(open(path))

# Print per-model summary
print()
print(f"{'Model':<40s} {'Agree':>5s} {'Total':>5s} {'Rate':>6s} {'Avg Cost':>10s} {'Total Cost':>10s}")
print(f"{'-'*40:<40s} {'-----':>5s} {'-----':>5s} {'------':>6s} {'--------':>10s} {'----------':>10s}")

for model in models:
    agree = 0
    total = 0
    costs = []
    for pkg in packages:
        if pkg not in opus or pkg not in results[model]:
            continue
        total += 1
        opus_v = opus[pkg].get("correct_verdict", "?")
        cand_v = results[model][pkg].get("correct_verdict", "?")
        if opus_v == cand_v:
            agree += 1
        cost = results[model][pkg].get("_judge_usage", {}).get("cost")
        if cost is not None:
            costs.append(cost)

    rate = f"{agree/total*100:.0f}%" if total > 0 else "N/A"
    avg_cost = f"${sum(costs)/len(costs):.4f}" if costs else "?"
    total_cost = f"${sum(costs):.4f}" if costs else "?"
    print(f"{model:<40s} {agree:>5d} {total:>5d} {rate:>6s} {avg_cost:>10s} {total_cost:>10s}")

# Opus baseline cost
opus_costs = []
for pkg in packages:
    if pkg in opus:
        c = opus[pkg].get("_judge_usage", {}).get("cost")
        if c is not None:
            opus_costs.append(c)
avg_opus = f"${sum(opus_costs)/len(opus_costs):.4f}" if opus_costs else "?"
total_opus = f"${sum(opus_costs):.4f}" if opus_costs else "?"
print(f"{'anthropic/claude-opus-4.8 (baseline)':<40s} {'N/A':>5s} {len(opus_costs):>5d} {'N/A':>6s} {avg_opus:>10s} {total_opus:>10s}")

# Detailed per-package comparison
print()
print("=== Per-Package Verdicts ===")
header = f"{'Package':<30s} {'Opus':<15s}"
for model in models:
    short = model.split("/")[-1][:15]
    header += f" {short:<15s}"
print(header)
print("-" * len(header))

for pkg in packages:
    if pkg not in opus:
        continue
    opus_v = opus[pkg].get("correct_verdict", "?")
    opus_c = opus[pkg].get("confidence", "?")
    row = f"{pkg:<30s} {opus_v}/{opus_c:<14s}"
    for model in models:
        if pkg in results[model]:
            v = results[model][pkg].get("correct_verdict", "?")
            c = results[model][pkg].get("confidence", "?")
            match = "✓" if v == opus_v else "✗"
            row += f" {match} {v}/{c:<12s}"
        else:
            row += f" {'?':<15s}"
    print(row)

# Detailed per-package cost comparison
print()
print("=== Per-Package Costs ===")
header = f"{'Package':<30s} {'Opus':<10s}"
for model in models:
    short = model.split("/")[-1][:15]
    header += f" {short:<15s}"
print(header)
print("-" * len(header))

for pkg in packages:
    if pkg not in opus:
        continue
    oc = opus[pkg].get("_judge_usage", {}).get("cost")
    row = f"{pkg:<30s} {'$'+f'{oc:.4f}' if oc else '?':<10s}"
    for model in models:
        if pkg in results[model]:
            mc = results[model][pkg].get("_judge_usage", {}).get("cost")
            row += f" {'$'+f'{mc:.4f}' if mc else '?':<15s}"
        else:
            row += f" {'?':<15s}"
    print(row)

# Learnings quality comparison
print()
print("=== Learnings Count ===")
header = f"{'Package':<30s} {'Opus':<6s}"
for model in models:
    short = model.split("/")[-1][:15]
    header += f" {short:<15s}"
print(header)
print("-" * len(header))

for pkg in packages:
    if pkg not in opus:
        continue
    ol = len(opus[pkg].get("learnings", []))
    row = f"{pkg:<30s} {ol:<6d}"
    for model in models:
        if pkg in results[model]:
            ml = len(results[model][pkg].get("learnings", []))
            row += f" {ml:<15d}"
        else:
            row += f" {'?':<15s}"
    print(row)

PYEOF

log ""
log "Benchmark complete. Results in $BENCH_DIR/"
