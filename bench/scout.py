#!/usr/bin/env python3
"""Scout the model catalog for candidates that could undercut a seat.

Reads the copy of OpenRouter's /models response the audit stage leaves on the
volume, compares every usable text model against the price of each current
seat, and writes the candidates to one JSON file for the operations page.
Code only, by design: which models LOOK worth screening is decidable from
price, context and modality; whether one IS worth a seat is what the screen
and the benchmark measure, and promotion stays a person's click.

Past benchmark results on the volume are joined in, so a candidate that has
already been scored -- or merely screened against the synthetic fixtures --
shows what was learned instead of looking untried.

Usage:
  scout.py --catalog FILE --out FILE
           [--seats 'audit=a,b;judge=c;reaudit=d' | --seats-from FILE]
           [--bench-dir DIR] [--min-context N] [--max-price-per-mtok USD]
           [--max-per-seat N] [--now TS]

  scout.py screen-list --catalog FILE [--seats SPEC | --seats-from FILE]
           [--bench-dir DIR] [--since-days N] [--max-price-per-mtok USD]
           [--min-context N] [--limit N] [--now TS]

`screen-list` prints the models a screening run should try next, cheapest
first, one JSON object per line: the same structural filters as the shortlist,
minus everything already screened. It exists so the stage that spends the
money has no second opinion about what is screenable.

Exit status is 0 even with no catalog: a missing catalog costs the page its
scout card, nothing else.
"""

import argparse
import glob
import json
import os
import re
import sys
import time

# The charset every downstream check accepts (the entrypoint's model kind,
# the UI's own validation), ":free" variants included -- the pipeline is
# built to tolerate a flaky model, so free tiers are benchmarkable and the
# errors column measures their throttling.
RE_MODEL_ID = re.compile(r"^[A-Za-z0-9._/:-]+$")

# Audits are prompt-heavy: the PKGBUILD and file contents go in, a short
# assessment comes out. The blend weighs the price accordingly.
PROMPT_WEIGHT = 0.75

# "New" on the card: first seen on the catalog within this window.
NEW_DAYS = 45

# The newest arrivals, and how many screened-out models stay visible. Both are
# page groups rather than filters: the failure mode this whole file exists to
# fix is a shortlist nobody can act on.
NEW_ARRIVALS_CAP = 8
REJECTED_CAP = 10

# What a screening run is willing to pay per candidate, as a catalog price.
# Screening costs a roughly fixed number of tokens (~200k), so a model's price
# IS the batch's price: measured over the 57 paid models that arrived in the
# last 60 days, a $2 ceiling keeps 36 of them for $4.41, where no ceiling at
# all keeps 57 for $17.12. It sits well above the judge seat ($1.15/Mtok), so
# genuine judge candidates pass; a person raises it deliberately to hunt for
# the escalation seat, where the point is a better second opinion rather than
# a cheaper one.
MAX_PRICE_PER_MTOK = 2.00

# A model the catalog says cannot emit this many completion tokens cannot
# write a full assessment, so screening it would only buy a truncated one.
# Honest about its keep: this rejects NOTHING in today's catalog -- every
# candidate under the price ceiling states 16k or more -- so it is insurance
# against an arrival that structurally cannot answer, not a filter earning
# its way yet.
MIN_COMPLETION_TOKENS = 4096


def blended_per_mtok(pricing):
    """One comparable number: USD per million tokens at the audit blend.

    Prices arrive as strings of USD per token. A price that does not parse
    means the model cannot be compared, so the caller skips it.
    """
    try:
        prompt = float(pricing.get("prompt"))
        completion = float(pricing.get("completion"))
    except (TypeError, ValueError):
        return None
    if prompt < 0 or completion < 0:
        return None
    return (PROMPT_WEIGHT * prompt + (1 - PROMPT_WEIGHT) * completion) * 1_000_000


def text_capable(arch):
    """Text in and text out; extra modalities are fine, missing text is not."""
    if not isinstance(arch, dict):
        return False
    ins = arch.get("input_modalities") or []
    outs = arch.get("output_modalities") or []
    if ins or outs:
        return "text" in ins and "text" in outs
    # Older catalog shape: one "a+b->c" string.
    modality = str(arch.get("modality") or "")
    return modality.startswith("text") and modality.endswith("->text")


def states_short_output(entry, minimum=MIN_COMPLETION_TOKENS):
    """True when the catalog STATES an output limit below the minimum.

    Silence is not a short answer: most of the catalog leaves the field null,
    so rejecting on a missing value would drop the field rather than filter
    it.
    """
    provider = entry.get("top_provider")
    if not isinstance(provider, dict):
        return False
    limit = provider.get("max_completion_tokens")
    if isinstance(limit, bool) or not isinstance(limit, int):
        return False
    return limit < minimum


def parse_seats(spec):
    """'audit=a,b;judge=c' -> ordered {seat: [models]}; empty values dropped."""
    seats = {}
    for part in (spec or "").split(";"):
        if "=" not in part:
            continue
        name, models = part.split("=", 1)
        ids = [m.strip() for m in models.split(",") if m.strip()]
        if name.strip() and ids:
            seats[name.strip()] = ids
    return seats


def seats_from_file(path):
    """The seats a previous scout run recorded, out of its own output file.

    The screening stage needs the seats to know what "undercuts" means, and
    the pipeline's model settings live in a ConfigMap it does not read. The
    last shortlist wrote them down; that is the copy to use.
    """
    try:
        with open(path, encoding="utf-8") as f:
            data = json.load(f)
    except (OSError, ValueError):
        return {}
    seats = {}
    for seat, info in (data.get("seats") or {}).items():
        models = [str(m) for m in ((info or {}).get("models") or []) if str(m)]
        if seat and models:
            seats[str(seat)] = models
    return seats


def read_frontmatter(path, keys):
    """The named keys out of a report's frontmatter, cheaply: read at most
    the header block, split on ':' once per line."""
    out = {}
    try:
        with open(path, encoding="utf-8", errors="replace") as f:
            first = f.readline()
            if first.strip() != "---":
                return out
            for _ in range(60):
                line = f.readline()
                if not line or line.strip() == "---":
                    break
                key, sep, value = line.partition(":")
                if sep and key.strip() in keys:
                    out[key.strip()] = value.strip()
    except OSError:
        pass
    return out


def spend_shares(data_dir, now, days=7):
    """How the recent spend splits across the three seats, from the working
    reports and judge files on the volume. The page uses this to put a
    candidate's price in pipeline terms: a pricier judge is noise when
    judging is a twentieth of the spend, and a pricier audit model is not.

    Working files hold the latest report per package and model -- close
    enough for shares. None when there is nothing recent to count."""
    cutoff = now - days * 86400
    totals = {"audit": 0.0, "reaudit": 0.0, "judge": 0.0}
    for path in glob.glob(os.path.join(data_dir, "bulk-reports", "*", "aur-sleuth-report-*.txt")):
        try:
            if os.path.getmtime(path) < cutoff:
                continue
        except OSError:
            continue
        fm = read_frontmatter(path, {"cost", "triggered_by"})
        try:
            cost = float(fm.get("cost") or 0)
        except ValueError:
            continue
        totals["reaudit" if fm.get("triggered_by") else "audit"] += cost
    for path in glob.glob(os.path.join(data_dir, "judge", "*.json")):
        try:
            if os.path.getmtime(path) < cutoff:
                continue
            with open(path, encoding="utf-8") as f:
                data = json.load(f)
        except (OSError, ValueError):
            continue
        totals["judge"] += float((data.get("_judge_usage") or {}).get("cost") or 0)
    total = sum(totals.values())
    if total <= 0:
        return None
    return {
        "days": days,
        "shares": {seat: round(v / total, 3) for seat, v in totals.items()},
    }


def load_bench_results(bench_dir):
    """{model: {'benchmarked': {...}, 'screen': {...}}} from the results on
    the volume, newest last so the newest answer wins.

    Two kinds of run leave a result.json in the same directory, and they
    answer different questions. A full benchmark re-audits a sample and
    reports `agreement`. A SCREEN runs the synthetic fixtures alone, so its
    sample is empty and its agreement is null -- and keying the whole record
    on a numeric agreement therefore threw every screen away: a model looked
    untried however much had just been spent proving it works. Each key is
    joined on its own evidence instead.

    The measured cost matters more than any price the catalog can offer: it
    is tokens actually used times what they cost, so a token-hungry model
    shows its real appetite here. A result that does not parse is skipped:
    benchmarks are inputs, not something to fail over."""
    runs = []
    for path in glob.glob(os.path.join(bench_dir, "*", "result.json")):
        try:
            with open(path, encoding="utf-8") as f:
                result = json.load(f)
        except (OSError, ValueError):
            continue
        if not isinstance(result, dict):
            continue
        run = str(result.get("run_id") or "")
        # Run ids are timestamps by default, but --run-id takes anything, so
        # order on the time the run recorded for itself where it has one.
        stamp = str(result.get("finished") or result.get("started") or run or path)
        runs.append((stamp, path, run, result))

    out = {}
    for _, _, run, result in sorted(runs, key=lambda r: (r[0], r[1])):
        for m in result.get("models") or []:
            model = str(m.get("model") or "")
            if not model:
                continue
            entry = out.setdefault(model, {})
            agreement = m.get("agreement")
            if isinstance(agreement, (int, float)) and not isinstance(agreement, bool):
                scored = {"agreement": round(float(agreement), 3), "run": run}
                cpp = m.get("cost_per_package")
                if isinstance(cpp, (int, float)):
                    scored["cost_per_package"] = round(float(cpp), 4)
                entry["benchmarked"] = scored
            synth = m.get("synthetics")
            if isinstance(synth, dict) and int(synth.get("run") or 0) > 0:
                entry["screen"] = {
                    "passed": bool(synth.get("all_pass")),
                    "run": run,
                    "fixtures_passed": int(synth.get("passed") or 0),
                    "of": int(synth.get("run") or 0),
                }
    return {model: entry for model, entry in out.items() if entry}


def failed_screen(candidate):
    """The screen said no. Off the shortlist, never re-screened."""
    screen = candidate.get("screen")
    return bool(screen) and not screen.get("passed")


def read_catalog(path):
    """The catalog's model list, or None when it cannot be read."""
    try:
        with open(path, encoding="utf-8") as f:
            data = json.load(f)
    except (OSError, ValueError):
        return None
    entries = data.get("data") if isinstance(data, dict) else None
    return entries or []


def seat_table(catalog, seats):
    """Every seat's own blended price, read from the same catalog. A seat the
    catalog does not know keeps its models but offers no comparison."""
    prices = {}
    for entry in catalog:
        model_id = str(entry.get("id") or "")
        price = blended_per_mtok(entry.get("pricing") or {})
        if model_id and price is not None:
            prices[model_id] = price

    seat_out = {}
    for seat, models in seats.items():
        priced = [prices[m] for m in models if m in prices]
        seat_out[seat] = {
            "models": models,
            # A multi-model seat is undercut when a candidate beats its
            # cheapest member: replacing the expensive one is still a win.
            "blended_per_mtok": round(min(priced), 4) if priced else None,
        }
    return seat_out


def build_candidates(catalog, seats, seat_out, results, now,
                     min_context, max_price):
    """(candidates, free), cheapest first: the catalog models worth spending
    a screen on, split by whether they cost anything.

    Every filter here is structural -- decidable from the catalog alone --
    and every one of them is a reason not to spend money on the model: a
    malformed id, a seat we already hold, no text in or out, too little
    context to hold a PKGBUILD and its files, a price that does not parse, a
    stated output limit too short to write an assessment, a price above what
    a batch can afford, or no seat undercut at all. Whether a model is any
    GOOD is not decidable here at any length, which is exactly why it is left
    to the screen and the benchmark, where it costs money and gets measured.
    """
    seat_ids = {m for models in seats.values() for m in models}
    candidates, free = [], []
    for entry in catalog:
        model_id = str(entry.get("id") or "")
        if not RE_MODEL_ID.match(model_id) or model_id in seat_ids:
            continue
        if not text_capable(entry.get("architecture")):
            continue
        if int(entry.get("context_length") or 0) < min_context:
            continue
        if states_short_output(entry):
            continue
        price = blended_per_mtok(entry.get("pricing") or {})
        if price is None:
            continue
        known = results.get(model_id, {})
        created = int(entry.get("created") or 0)
        if price == 0:
            # A free tier. The pipeline tolerates a flaky model by design --
            # two audit seats, error-triggered judging, budgets -- so free
            # models are worth BENCHMARKING: the errors column measures the
            # throttling. They go in their own group, capped, because "free"
            # would otherwise top every price sort on a technicality. The
            # price ceiling is below them by construction: zero is under
            # every ceiling, and a free model costs a screen nothing anyway.
            free.append({
                "id": model_id,
                "name": str(entry.get("name") or model_id),
                "context": int(entry.get("context_length") or 0),
                "created": created,
                "new": bool(created and now - created < NEW_DAYS * 86400),
                **known,
            })
            continue
        if price > max_price:
            continue
        cheaper, savings = [], {}
        for seat, info in seat_out.items():
            ref = info["blended_per_mtok"]
            if ref and price < ref:
                cheaper.append(seat)
                savings[seat] = round(100 * (1 - price / ref))
        if not cheaper:
            continue
        candidates.append({
            "id": model_id,
            "name": str(entry.get("name") or model_id),
            "blended_per_mtok": round(price, 4),
            "context": int(entry.get("context_length") or 0),
            "created": created,
            "new": bool(created and now - created < NEW_DAYS * 86400),
            "cheaper_than": cheaper,
            "savings_pct": savings,
            **known,
        })

    candidates.sort(key=lambda c: c["blended_per_mtok"])
    free.sort(key=lambda f: -f["created"])
    return candidates, free


def shortlist(candidates, seat_out, max_per_seat):
    """The models the card shows, cheapest first.

    Each seat takes its own top slice of the models that undercut IT, and the
    slices are unioned. Be clear about what that is worth: it keeps exactly
    the same models as the global counter it replaced, and it always will.
    Undercutting is monotone in price, so the models undercutting a cheaper
    seat are a PREFIX of the models undercutting a dearer one -- the seat
    lists are nested -- and the union of their top slices is therefore just
    the max_per_seat cheapest candidates, however the cap is expressed. (The
    counter said the same thing less legibly: it incremented a seat only
    while that seat had room, which made its test "rank within this seat".
    Checked both ways over 20,000 randomised catalogs before the rewrite:
    never once a difference.)

    So the cap was never the reason a plausible mid-priced model could not
    reach the card. Price rank is: on the live catalog the ten cheapest
    candidates undercut all three seats at once, so no eleventh model places
    in any seat's slice at any quality. `new_arrivals` is the answer to that,
    and so is the line below.

    A model that cleared the fixtures is kept whatever its price rank. The
    screen is the expensive evidence in this file, and dropping the one model
    it vindicated would mean paying for an answer and then filing it away.
    """
    keep = set()
    for seat in seat_out:
        ranked = [c["id"] for c in candidates if seat in c["cheaper_than"]]
        keep.update(ranked[:max_per_seat])
    keep.update(c["id"] for c in candidates if (c.get("screen") or {}).get("passed"))
    return [c for c in candidates if c["id"] in keep]


def screen_list(argv):
    """The models a screening run should try next, cheapest first, as JSONL.

    Cheapest first because the screen is a fixed number of tokens per model,
    so cheapest first is simply the order that screens the most models per
    dollar. Anything already screened is left out: a rejected model is not
    re-tried, and neither is one that already passed.
    """
    ap = argparse.ArgumentParser(prog="scout.py screen-list")
    ap.add_argument("--catalog", required=True)
    ap.add_argument("--seats", default="")
    ap.add_argument("--seats-from", default="",
                    help="a previous scout.json, for the seats it recorded")
    ap.add_argument("--bench-dir", default="")
    ap.add_argument("--min-context", type=int, default=32768)
    ap.add_argument("--max-price-per-mtok", type=float, default=MAX_PRICE_PER_MTOK)
    ap.add_argument("--since-days", type=int, default=NEW_DAYS,
                    help="only models this new; 0 for every age")
    ap.add_argument("--limit", type=int, default=0, help="0 for no limit")
    ap.add_argument("--now", type=int, default=0, help="unix time, for tests")
    args = ap.parse_args(argv)

    now = args.now or int(time.time())
    seats = parse_seats(args.seats) or seats_from_file(args.seats_from)
    if not seats:
        print("scout: no seats; nothing to undercut", file=sys.stderr)
        return 1

    catalog = read_catalog(args.catalog)
    if catalog is None:
        print(f"scout: cannot read {args.catalog}", file=sys.stderr)
        return 1

    results = load_bench_results(args.bench_dir) if args.bench_dir else {}
    seat_out = seat_table(catalog, seats)
    candidates, _ = build_candidates(catalog, seats, seat_out, results, now,
                                     args.min_context, args.max_price_per_mtok)

    picked = []
    for c in candidates:
        if "screen" in c:
            continue
        if args.since_days > 0:
            # An unknown creation date is not "new": it is unknown, and a
            # window that admits it would quietly screen the whole catalog.
            if not c["created"] or now - c["created"] >= args.since_days * 86400:
                continue
        picked.append(c)
    if args.limit > 0:
        picked = picked[:args.limit]

    for c in picked:
        print(json.dumps({
            "id": c["id"],
            "name": c["name"],
            "blended_per_mtok": c["blended_per_mtok"],
            "context": c["context"],
            "created": c["created"],
            "cheaper_than": c["cheaper_than"],
        }, separators=(",", ":"), sort_keys=True))
    print(f"scout: {len(picked)} model(s) to screen of {len(candidates)} candidate(s)",
          file=sys.stderr)
    return 0


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("--catalog", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--seats", default="")
    ap.add_argument("--seats-from", default="",
                    help="a previous scout.json, for the seats it recorded; "
                         "the screening stage refreshes the card this way")
    ap.add_argument("--bench-dir", default="")
    ap.add_argument("--data-dir", default="", help="for the seat spend shares")
    ap.add_argument("--min-context", type=int, default=32768)
    ap.add_argument("--max-price-per-mtok", type=float, default=MAX_PRICE_PER_MTOK)
    ap.add_argument("--max-per-seat", type=int, default=10)
    ap.add_argument("--now", type=int, default=0, help="unix time, for tests")
    args = ap.parse_args(argv)

    now = args.now or int(time.time())
    seats = parse_seats(args.seats) or seats_from_file(args.seats_from)

    catalog = read_catalog(args.catalog)
    if catalog is None:
        print("scout: no readable catalog; writing nothing", file=sys.stderr)
        return 0

    seat_out = seat_table(catalog, seats)
    results = load_bench_results(args.bench_dir) if args.bench_dir else {}
    candidates, free = build_candidates(catalog, seats, seat_out, results, now,
                                        args.min_context, args.max_price_per_mtok)

    # What the screen rejected leaves the shortlist entirely: a model that
    # calls a malicious fixture safe has answered the only question the card
    # was asking about it.
    eligible = [c for c in candidates if not failed_screen(c)]
    kept = shortlist(eligible, seat_out, args.max_per_seat)

    # The second way onto the card, and the one that catches a model on its
    # release day: newest first, whatever it costs within the ceiling. Price
    # rank cannot do this -- on the live catalog every one of the ten
    # cheapest candidates undercuts all three seats, so no eleventh model
    # reaches any seat's top slice however plausible it is.
    new_arrivals = sorted((c for c in eligible if c["new"]),
                          key=lambda c: -c["created"])[:NEW_ARRIVALS_CAP]

    # The rejects stay visible, most recently screened first, so the page can
    # show the work was done and nobody spends the money again. Run ids are
    # timestamps, which is what makes that ordering free.
    rejected = sorted((c for c in candidates if failed_screen(c)),
                      key=lambda c: c["screen"].get("run") or "",
                      reverse=True)[:REJECTED_CAP]

    # Newest free tiers first, a handful: enough to notice a new open model
    # worth a benchmark, not a catalog of everything priced at zero. Never
    # probed: the advisory work all goes through openrouter/free, which
    # filters for availability itself on every request, so testing each
    # free model here would spend the daily free-request allowance on
    # measurements nothing acts on.
    out = {
        "generated": now,
        "catalog_size": len(catalog),
        "seats": seat_out,
        "candidates": kept,
        "new_arrivals": new_arrivals,
        "rejected": rejected,
        "free": free[:5],
    }
    if args.data_dir:
        shares = spend_shares(args.data_dir, now)
        if shares:
            out["spend"] = shares
    os.makedirs(os.path.dirname(os.path.abspath(args.out)), exist_ok=True)
    tmp = args.out + ".tmp"
    with open(tmp, "w", encoding="utf-8") as f:
        json.dump(out, f, separators=(",", ":"), sort_keys=True)
    os.replace(tmp, args.out)
    print(f"scout: {len(kept)} candidate(s) from {len(catalog)} models, "
          f"{len(new_arrivals)} new, {len(rejected)} rejected by the screen",
          file=sys.stderr)
    return 0


if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "screen-list":
        sys.exit(screen_list(sys.argv[2:]))
    sys.exit(main())
