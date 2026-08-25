#!/usr/bin/env python3
"""Print the packages worth a closer look, one per line -- and, given the
escalation models, which model each should hear from next.

This is the escalation phase's worklist: every package whose state is "look"
-- something flagged it and nothing has settled it. The state rule is
generate-dashboard.py's package_state, loaded from that file, so the phase
and the public page cannot disagree about what needs a second look. A
package past the escalation cap is "disputed", not "look", so it is never
listed: the pipeline stops spending on it.

With --models a,b each line is "package<TAB>model": the first listed model
that has not yet audited the package. A second opinion from a model that
already gave one is the same opinion again, so a package every listed model
has read is skipped, with a note on stderr.

With --packages x,y the named packages are listed whatever their state: a
named escalation is a person asking. When every listed model has already
read one of them, the first model is used anyway, with a note -- refusing
would turn a click into nothing.
"""

import importlib.util
import os
import sys


def next_model(ps, models):
    """The first of `models` that has no non-advisory audit of this package,
    or None."""
    heard = {a.get("model") for a in ps.get("audits", []) if not a.get("advisory")}
    for m in models:
        if m not in heard:
            return m
    return None


def worklist(packages, models=None, named=None):
    """[(package, model)] to escalate; model is None without --models."""
    out = []
    if named:
        names = [n for n in named if n in packages]
        for n in named:
            if n not in packages:
                print(f"{n}: no reports on the branch; a plain audit is the first look", file=sys.stderr)
    else:
        names = [n for n, ps in sorted(packages.items()) if ps.get("state") == "look"]
    for name in names:
        ps = packages[name]
        if not models:
            out.append((name, None))
            continue
        m = next_model(ps, models)
        if m is None:
            if named:
                m = models[0]
                print(f"{name}: every escalation model has read it; using {m} again", file=sys.stderr)
            else:
                print(f"{name}: every escalation model has read it; nothing left to ask", file=sys.stderr)
                continue
        out.append((name, m))
    return out


def main():
    args = sys.argv[1:]

    def opt(flag):
        return args[args.index(flag) + 1] if flag in args else ""

    models = [m for m in opt("--models").split(",") if m]
    named = [p for p in opt("--packages").split(",") if p]

    here = os.path.dirname(os.path.abspath(__file__))
    spec = importlib.util.spec_from_file_location(
        "gd", os.path.join(here, "generate-dashboard.py"))
    gd = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(gd)

    try:
        audits, judges = gd.load_reports()
    except RuntimeError as e:
        # No branch, no reports, nothing flagged: an empty worklist, said
        # plainly, rather than a traceback the pipeline would log line by
        # line.
        print(f"no reports branch to read: {e}", file=sys.stderr)
        return 0
    index = gd.build_index_data(audits, judges)
    for name, model in worklist(index["packages"], models, named):
        print(f"{name}\t{model}" if model else name)
    return 0


if __name__ == "__main__":
    sys.exit(main())
