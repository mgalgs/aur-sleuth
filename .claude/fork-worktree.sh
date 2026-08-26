#!/usr/bin/env bash
# fork-worktree.sh -- create an isolated worktree for a forked Claude Code session.
#
# Contract (see the fork-task skill):
#   .claude/fork-worktree.sh <name> [--base <ref>]
#   - prints the absolute worktree path to stdout: one line, nothing else
#   - status messages go to stderr
#   - exits non-zero on failure
#
# stdout IS the return value. Any echo that is not the final path must be
# redirected to stderr, or fork-task.sh reads the noise as the worktree path.
# `git worktree add` writes to stdout -- redirect it.

set -euo pipefail

name="${1:?usage: fork-worktree.sh <name> [--base <ref>]}"
shift

# --base overrides what the worktree branches from. The template default is
# the current HEAD, on the reasoning that a fork usually continues the work
# checked out right now. That reasoning inverts here: this repo runs several
# same-project forks at once, so HEAD is often some *other* fork's in-progress
# branch, and inheriting it would put unrelated commits under the new task.
# Pass --base master for independent work; omit it to keep the old behaviour.
base_ref=""
extra_args=()
while [ $# -gt 0 ]; do
    case "$1" in
        --base)
            base_ref="${2:?--base needs a ref}"
            shift 2
            ;;
        *)
            extra_args+=("$1")
            shift
            ;;
    esac
done

# The name becomes a branch name and a directory name. Keep it boring.
if [[ ! "$name" =~ ^[a-z0-9][a-z0-9-]*$ ]]; then
    echo "error: name must be lowercase kebab-case: $name" >&2
    exit 1
fi

# readlink -f so this still resolves when .claude/ is a symlink.
repo_root="$(git -C "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" rev-parse --show-toplevel)"

# Worktrees live beside the repo, never inside it: a worktree inside the repo
# gets swept up by test globs, linters, and bundlers. This repo has two that
# would notice -- bench/test.sh globs bench/test-*.sh, and generate-dashboard.py
# reads bench/dashboard/.
worktree_root="$(dirname "$repo_root")/$(basename "$repo_root")-worktrees"
target="$worktree_root/$name"

# Pre-flight. `git worktree add` fails on both of these anyway, but its message
# does not say how to recover.
if [ -e "$target" ]; then
    echo "error: path already exists: $target" >&2
    echo "hint: remove it with 'git worktree remove $target', or pick another name." >&2
    exit 1
fi

if git -C "$repo_root" show-ref --verify --quiet "refs/heads/$name"; then
    echo "error: branch already exists: $name" >&2
    exit 1
fi

if [ -n "$base_ref" ] && ! git -C "$repo_root" rev-parse --verify --quiet "$base_ref^{commit}" >/dev/null; then
    echo "error: --base ref does not resolve: $base_ref" >&2
    exit 1
fi

mkdir -p "$worktree_root"

base="${base_ref:-$(git -C "$repo_root" rev-parse --abbrev-ref HEAD)}"
echo "==> creating worktree $name from $base" >&2
git -C "$repo_root" worktree add -b "$name" "$target" "$base" >&2

# A worktree gets the tracked files and nothing else. Ignored files that the
# session needs have to be copied over.
#
# .claude/settings.local.json holds the permission rules and is gitignored in
# this repo, so without it a session in the worktree prompts for things the
# parent repo allows. settings.json is listed too because copying whatever the
# worktree did not already get is correct whether or not it is tracked.
carry=(
    ".claude/settings.json"
    ".claude/settings.local.json"
)

for rel in "${carry[@]}"; do
    # Nothing to copy, or tracked and git already placed it.
    if [ ! -f "$repo_root/$rel" ] || [ -e "$target/$rel" ]; then
        continue
    fi
    mkdir -p "$target/$(dirname "$rel")"
    cp "$repo_root/$rel" "$target/$rel"
    echo "==> copied $rel" >&2
done

# This hook is itself untracked until someone commits it, and a worktree gets
# tracked files only -- so carry it across, or forks of forks lose it.
if [ ! -e "$target/.claude/fork-worktree.sh" ]; then
    mkdir -p "$target/.claude"
    cp "$repo_root/.claude/fork-worktree.sh" "$target/.claude/fork-worktree.sh"
    echo "==> copied .claude/fork-worktree.sh" >&2
fi

# Claude Code prompts for any path outside the session's working directory, even
# when the command itself is allowlisted. So a session in the parent repo that
# reads a file in this worktree prompts unless the worktree root is listed in
# additionalDirectories. That is one-time parent setup, not something this hook
# can do for itself -- so just say so.
if ! grep -qF "$worktree_root" "$repo_root/.claude/settings.local.json" 2>/dev/null; then
    echo "note: $worktree_root is not in the parent's additionalDirectories." >&2
    echo "      Without it, this session prompts when it reads worktree files." >&2
    echo "      Add to .claude/settings.local.json:" >&2
    echo "        \"permissions\": { \"additionalDirectories\": [\"$worktree_root\"] }" >&2
fi

# No dependency provisioning: aur-sleuth is a single Python script plus shell,
# run against the system python3, with no .venv, node_modules or vendor tree in
# the repo. A worktree is runnable the moment git creates it -- bench/test.sh
# passes in a fresh one with nothing copied. Add a provisioning step here if
# that ever stops being true.
if [ ${#extra_args[@]} -gt 0 ]; then
    echo "note: ignoring extra args: ${extra_args[*]}" >&2
fi

# The contract: the path, on stdout, last.
echo "$target"
