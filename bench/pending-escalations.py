#!/usr/bin/env python3
"""Print the packages worth a closer look, one per line.

This is the escalation sweep's worklist: every package whose state is "look"
-- something flagged it and nothing has settled it. The state rule is
generate-dashboard.py's package_state, loaded from that file, so the sweep
and the public page cannot disagree about what needs a second look.
"""

import importlib.util
import os
import sys


def main():
    here = os.path.dirname(os.path.abspath(__file__))
    spec = importlib.util.spec_from_file_location(
        "gd", os.path.join(here, "generate-dashboard.py"))
    gd = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(gd)

    audits, judges = gd.load_reports()
    index = gd.build_index_data(audits, judges)
    for name, ps in sorted(index["packages"].items()):
        if ps.get("state") == "look":
            print(name)
    return 0


if __name__ == "__main__":
    sys.exit(main())
