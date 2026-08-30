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
# Two top-level objects: no single slice parses, so a leading decoy cannot shadow
# the real answer -- the reply is reported as broken instead.
check("decoy first object -> None", p('{"summary":"all clear"} {"concerns":[{"detail":"real"}]}') is None)
# An empty object parses (it IS valid JSON); the caller, not the parser, treats a
# reply with neither concerns nor summary as broken rather than an all-clear.
check("empty object parses", p('{}') == {})
check("truncated: unterminated string", p('{"summary":"unterminated') is None)
check("truncated: no closing brace", p('{"concerns":[{"detail":"abc') is None)
check("a list is not a dict", p('[1,2,3]') is None)
check("a scalar is not a dict", p('42') is None)
check("empty string", p('') is None)
check("none", p(None) is None)

# email_concern(): the operator's own email address is decidable in code
# (a needle, checked before this read runs), not by a model guessing whose
# address it saw. Two real reports were flagged this way and blocked a
# publish before this existed.
ec = rp.email_concern
check("real concern: allowed_signers address (cockpit-pacman-git)", ec(
    {"quote": "hi@josie.lol",
     "detail": "The operator's email address is exposed in the allowed_signers file."}))
check("real concern: LICENSE copyright address (hytale-launcher-bin)", ec(
    {"quote": "copyrighted by [SCDevel/root@scdevel.net]",
     "detail": "The LICENSE file contains the operator's email address root@scdevel.net, "
               "which is a private credential/contact of the package maintainer."}))
check("an API key is not an email concern",
      not ec({"quote": "sk-live-abc123", "detail": "an API key"}))
check("an address incidental to a real concern still stands", not ec(
    {"quote": "token=abc for root@scdevel.net", "detail": "a bearer token in the report"}))
# Same quote, detail says "email" instead: this is the case the previous
# check did not cover, because its detail happened to avoid the word
# "email" and so passed regardless of the gate below. A credential sitting
# beside an address must not be dismissed just because the model's detail
# also mentions the address.
check("a credential is not dismissed when the detail calls the address out too",
      not ec({"quote": "SMTP_PASSWORD=hunter2 for ops@acme.com",
              "detail": "an email account password belonging to the operator"}))
check("a bearer token is not dismissed when the detail mentions the e-mail beside it",
      not ec({"quote": "Authorization: Bearer sk-live-9f3 (contact ops@acme.com)",
              "detail": "an API token, next to the e-mail of whoever owns it"}))
check("brackets stripped, quote is exactly one address",
      ec({"quote": "<hi@josie.lol>", "detail": "an email address, for contact"}))
check("no address in the quote is not an email concern",
      not ec({"quote": "see the README", "detail": "mentions an e-mail"}))
# An address-shaped quote is also the shape of an ssh remote, a git author on
# a named machine, or a service account -- exactly what the prompt still asks
# the model to flag as an internal hostname or account. The quote's shape
# alone must not dismiss the concern; the detail has to say it is about an
# email address.
check("an address-shaped quote is not dismissed when the detail calls it a host",
      not ec({"quote": "aur-sleuth@build01.ops.acme-internal.net",
              "detail": "an internal build host and the account that ran the audit"}))
check("an address-shaped quote is not dismissed when the detail calls it a machine",
      not ec({"quote": "mgalgs@nuc.lan.example",
              "detail": "the operator's username and internal machine name"}))

# The prompt's email carve-out landed in code, not just in the model's list:
# grep the source, rather than calling ask_model(), since building the
# prompt needs an API key and a live entries list this suite has no
# business constructing.
src = open(sys.argv[1]).read()
check("prompt no longer singles out 'the operator's own email'",
      "operator's own email" not in src)
check("prompt tells the model any email address is not its business",
      "any email address" in src)

if fails:
    print(f"FAILED: {fails} check(s)")
    sys.exit(1)
print("review parse: all checks passed")
PY
