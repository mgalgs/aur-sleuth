#!/usr/bin/env bash
# Unit test for parse_model_json() in bench/review-pending.py: the tolerant parse
# of a model's JSON reply. The advisory review broke on a real reply that carried
# a literal newline inside a string ("Unterminated string ..."); this proves the
# common malformations parse and that a truly broken reply returns None.
#
# Costs nothing: no model is called.
#
# Usage: bash bench/test-review-parse.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

python3 - "$PWD/bench/review-pending.py" "${1:-}" <<'PY'
import importlib.util, sys

spec = importlib.util.spec_from_file_location("rp", sys.argv[1])
rp = importlib.util.module_from_spec(spec)
spec.loader.exec_module(rp)  # __name__ != "__main__", so main() does not run
p = rp.parse_model_json

quiet = len(sys.argv) > 2 and sys.argv[2] == "-q"
fails = 0
def check(name, cond):
    global fails
    if cond:
        if not quiet:
            print(f"  ok    {name}")
    else:
        print(f"  FAIL  {name}")
        fails += 1

check("plain object", p('{"summary":"s","concerns":[]}') == {"summary": "s", "concerns": []})
check("```json fence", p('```json\n{"a":1}\n```') == {"a": 1})
check("bare ``` fence", p('```\n{"a":1}\n```') == {"a": 1})
check("prose around the object", p('Sure:\n{"a":1}\nhope that helps') == {"a": 1})
# The real failure: a literal newline inside a string value is invalid strict
# JSON but parses with strict=False.
check("literal newline in a string", p('{"summary":"line1\nline2"}') == {"summary": "line1\nline2"})
check("trailing junk after the object", p('{"a":1} and more text') == {"a": 1})
check("truncated: unterminated string", p('{"summary":"unterminated') is None)
check("truncated: no closing brace", p('{"concerns":[{"detail":"abc') is None)
check("a list is not a dict", p('[1,2,3]') is None)
check("a scalar is not a dict", p('42') is None)
check("empty string", p('') is None)
check("none", p(None) is None)

if fails:
    print(f"FAILED: {fails} check(s)")
    sys.exit(1)
print("review parse: all checks passed")
PY
