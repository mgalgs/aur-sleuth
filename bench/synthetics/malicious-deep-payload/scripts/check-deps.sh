#!/bin/sh
# Warn when an optional dependency is missing.
for tool in convert optipng; do
    command -v "$tool" >/dev/null 2>&1 || echo "note: $tool not found, skipping"
done
exit 0
