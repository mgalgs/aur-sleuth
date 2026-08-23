#!/usr/bin/env python3
"""Scout the model catalog for candidates that could undercut a seat.

Reads the copy of OpenRouter's /models response the audit stage leaves on the
volume, compares every usable text model against the price of each current
seat, and writes the candidates to one JSON file for the operations page.
Code only, by design: which models LOOK worth a benchmark is decidable from
price, context and modality; whether one IS better is what the benchmark
measures, and promotion stays a person's click.

Past benchmark results on the volume are joined in, so a candidate that has
already been scored shows its score instead of looking untried.

Usage:
  scout.py --catalog FILE --out FILE
           [--seats 'audit=a,b;judge=c;reaudit=d']
           [--bench-dir DIR] [--min-context N] [--max-per-seat N] [--now TS]

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
# the UI's own validation). Ids outside it -- the ":free" variants -- are not
# offered: a candidate the pipeline would refuse is a scout that lies.
RE_MODEL_ID = re.compile(r"^[A-Za-z0-9._/-]+$")

# Audits are prompt-heavy: the PKGBUILD and file contents go in, a short
# assessment comes out. The blend weighs the price accordingly.
PROMPT_WEIGHT = 0.75

# "New" on the card: first seen on the catalog within this window.
NEW_DAYS = 45


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


def load_bench_scores(bench_dir):
    """{model: {'agreement': float, 'run': id}} from the newest result that
    scored each model. A result that does not parse is skipped: benchmarks
    are inputs here, not something to fail over."""
    scores = {}
    for path in sorted(glob.glob(os.path.join(bench_dir, "*", "result.json"))):
        try:
            with open(path, encoding="utf-8") as f:
                result = json.load(f)
        except (OSError, ValueError):
            continue
        run = str(result.get("run_id") or "")
        for m in result.get("models") or []:
            model = str(m.get("model") or "")
            agreement = m.get("agreement")
            if model and isinstance(agreement, (int, float)):
                scores[model] = {"agreement": round(float(agreement), 3), "run": run}
    return scores


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--catalog", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--seats", default="")
    ap.add_argument("--bench-dir", default="")
    ap.add_argument("--data-dir", default="", help="for the seat spend shares")
    ap.add_argument("--min-context", type=int, default=32768)
    ap.add_argument("--max-per-seat", type=int, default=10)
    ap.add_argument("--now", type=int, default=0, help="unix time, for tests")
    args = ap.parse_args()

    now = args.now or int(time.time())
    seats = parse_seats(args.seats)

    try:
        with open(args.catalog, encoding="utf-8") as f:
            catalog = json.load(f).get("data") or []
    except (OSError, ValueError):
        print("scout: no readable catalog; writing nothing", file=sys.stderr)
        return 0

    # Every seat's own blended price, read from the same catalog. A seat the
    # catalog does not know keeps its models but offers no comparison.
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

    seat_ids = {m for models in seats.values() for m in models}
    scores = load_bench_scores(args.bench_dir) if args.bench_dir else {}

    candidates = []
    for entry in catalog:
        model_id = str(entry.get("id") or "")
        if not RE_MODEL_ID.match(model_id) or model_id in seat_ids:
            continue
        if not text_capable(entry.get("architecture")):
            continue
        if int(entry.get("context_length") or 0) < args.min_context:
            continue
        price = blended_per_mtok(entry.get("pricing") or {})
        if price is None or price == 0:
            # A zero price is a free tier: rate limits and data-use terms the
            # pipeline cannot see. Not a candidate.
            continue
        cheaper, savings = [], {}
        for seat, info in seat_out.items():
            ref = info["blended_per_mtok"]
            if ref and price < ref:
                cheaper.append(seat)
                savings[seat] = round(100 * (1 - price / ref))
        if not cheaper:
            continue
        created = int(entry.get("created") or 0)
        candidates.append({
            "id": model_id,
            "name": str(entry.get("name") or model_id),
            "blended_per_mtok": round(price, 4),
            "context": int(entry.get("context_length") or 0),
            "created": created,
            "new": bool(created and now - created < NEW_DAYS * 86400),
            "cheaper_than": cheaper,
            "savings_pct": savings,
            **({"benchmarked": scores[model_id]} if model_id in scores else {}),
        })

    # Cheapest first, and only so many per seat: the card is a shortlist, not
    # the catalog again.
    candidates.sort(key=lambda c: c["blended_per_mtok"])
    kept, per_seat = [], {seat: 0 for seat in seat_out}
    for c in candidates:
        take = False
        for seat in c["cheaper_than"]:
            if per_seat.get(seat, 0) < args.max_per_seat:
                per_seat[seat] = per_seat.get(seat, 0) + 1
                take = True
        if take:
            kept.append(c)

    out = {
        "generated": now,
        "catalog_size": len(catalog),
        "seats": seat_out,
        "candidates": kept,
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
    print(f"scout: {len(kept)} candidate(s) from {len(catalog)} models", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
