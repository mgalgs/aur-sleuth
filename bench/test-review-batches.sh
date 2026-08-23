#!/usr/bin/env bash
# Unit test for review_batches() in bench/review-pending.py: the advisory read
# covers every flagged report, a batch at a time.
#
# It used to read only the first 10, so a concern in report 11 was never seen.
# Reading them all means several requests, which means one of them can fail
# without the others being lost -- that is what most of this checks.
#
# Costs nothing: ask_model is replaced with a stub, so no model is called.
#
# Usage: bash bench/test-review-batches.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

python3 - "$PWD/bench/review-pending.py" "${1:-}" <<'PY'
import importlib.util, sys

spec = importlib.util.spec_from_file_location("rp", sys.argv[1])
rp = importlib.util.module_from_spec(spec)
spec.loader.exec_module(rp)  # __name__ != "__main__", so main() does not run

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

def entries(n):
    return [{"package": f"pkg{i}", "model": "m", "result": "unsafe", "text": "body"}
            for i in range(n)]

# Every batch answers, each naming its first package.
def all_ok(batch, model, base_url, api_key):
    return {"concerns": [{"package": batch[0]["package"], "kind": "1", "detail": "d"}],
            "summary": "fine"}

rp.ask_model = all_ok
got = rp.review_batches(entries(20), "m", "u", "k", 8, 4)
check("20 reports in batches of 8 is 3 batches", got["batches"] == 3)
check("every batch succeeded", got["batches_ok"] == 3)
check("every report was read", got["read"] == 20)
check("concerns are gathered from all batches", len(got["concerns"]) == 3)
# Order is the batch order, not completion order, so a sweep reads the same twice.
check("results keep batch order",
      [c["package"] for c in got["concerns"]] == ["pkg0", "pkg8", "pkg16"])
check("no errors", got["errors"] == [])

# The middle batch fails. The others must survive it.
def middle_fails(batch, model, base_url, api_key):
    if batch[0]["package"] == "pkg8":
        return {"_error": "boom"}
    return all_ok(batch, model, base_url, api_key)

rp.ask_model = middle_fails
got = rp.review_batches(entries(20), "m", "u", "k", 8, 4)
check("a failed batch does not lose the others", len(got["concerns"]) == 2)
check("the failure is counted", got["batches_ok"] == 2)
check("the failure is reported", len(got["errors"]) == 1 and "boom" in got["errors"][0])
check("read counts only what was read", got["read"] == 12)

# A batch that raises, rather than returning an error.
def raises(batch, model, base_url, api_key):
    raise RuntimeError("thrown")

rp.ask_model = raises
got = rp.review_batches(entries(20), "m", "u", "k", 8, 4)
check("a raising batch is caught, not fatal", got["batches_ok"] == 0)
check("nothing read when every batch fails", got["read"] == 0)
check("each failure is reported", len(got["errors"]) == 3)

# One batch: the single-request path, still the common small case.
rp.ask_model = all_ok
got = rp.review_batches(entries(3), "m", "u", "k", 8, 4)
check("fewer reports than a batch is one request", got["batches"] == 1)
check("and reads them all", got["read"] == 3)

# A concern that is not a dict must not crash the gather.
rp.ask_model = lambda b, m, u, k: {"concerns": ["not a dict", {"package": "p"}]}
got = rp.review_batches(entries(4), "m", "u", "k", 8, 4)
check("junk in concerns is dropped, not fatal", len(got["concerns"]) == 1)

if fails:
    print(f"FAILED: {fails} check(s)")
    sys.exit(1)
print("review batches: all checks passed")
PY
