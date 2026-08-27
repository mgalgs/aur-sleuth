#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - "$PWD/aur-sleuth" "${1:-}" <<'PY'
import importlib.machinery, importlib.util, sys
loader = importlib.machinery.SourceFileLoader("aur_sleuth", sys.argv[1])
spec = importlib.util.spec_from_loader(loader.name, loader)
m = importlib.util.module_from_spec(spec)
loader.exec_module(m)
quiet = len(sys.argv) > 2 and sys.argv[2] == "-q"
fails = 0
def check(name, cond, got=None):
    global fails
    if cond:
        if not quiet: print(f"  ok    {name}")
    else:
        print(f"  FAIL  {name}: {got!r}")
        fails += 1

aliases = m.parse_model_aliases("cheap=deepseek/deepseek-v4-flash;final=openai/gpt-5.4")
check("mapping parses", aliases == {"cheap": "deepseek/deepseek-v4-flash", "final": "openai/gpt-5.4"}, aliases)
check("alias resolves with provenance", m.resolve_model_reference("@final", aliases) == ("openai/gpt-5.4", "final"))
check("concrete ids remain concrete", m.resolve_model_reference("openai/gpt-5.4", aliases) == ("openai/gpt-5.4", ""))

for value in ("broken", "x=a/b;x=c/d", "9bad=a/b", "x=$(id)", "x=a b"):
    try:
        m.parse_model_aliases(value)
    except ValueError:
        pass
    else:
        check(f"invalid mapping refused: {value}", False, value)
try:
    m.resolve_model_reference("@missing", aliases)
except ValueError:
    pass
else:
    check("unknown alias refused", False)

raise SystemExit(1 if fails else 0)
PY
