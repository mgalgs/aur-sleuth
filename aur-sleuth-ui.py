#!/usr/bin/env -S uv --quiet run --script
# -*- mode: python -*-
# /// script
# requires-python = "==3.12"
# dependencies = [
#     "fastapi",
#     "uvicorn",
#     "jinja2",
# ]
# ///

import sqlite3
from fastapi import FastAPI, Query
from fastapi.responses import HTMLResponse
from pathlib import Path

app = FastAPI()

DB_PATH = Path("aur_tracker.db")

@app.get("/", response_class=HTMLResponse)
async def root():
    with open("index.html", "r") as f:
        return f.read()

@app.get("/api/packages")
async def get_packages(page: int = Query(1, ge=1), per_page: int = Query(10, ge=1, le=100)):
    if not DB_PATH.exists():
        return {"packages": [], "total": 0, "page": page, "per_page": per_page}
    with sqlite3.connect(DB_PATH) as conn:
        total = conn.execute("SELECT COUNT(*) FROM packages").fetchone()[0]
        offset = (page - 1) * per_page
        packages = conn.execute("SELECT name, last_updated, status FROM packages ORDER BY last_updated DESC LIMIT ? OFFSET ?", (per_page, offset)).fetchall()
    return {"packages": packages, "total": total, "page": page, "per_page": per_page}

@app.get("/api/all_audits")
async def get_all_audits():
    if not DB_PATH.exists():
        return {"audits": []}
    with sqlite3.connect(DB_PATH) as conn:
        audits = conn.execute("SELECT id, package_name, started_at, finished_at, result, details FROM audits ORDER BY finished_at DESC").fetchall()
    return {"audits": audits}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)