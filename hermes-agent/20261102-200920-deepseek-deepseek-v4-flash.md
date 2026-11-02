---
package: hermes-agent
pkgver: 0.22.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 40946
completion_tokens: 5479
total_tokens: 46425
cost: 0.004723264
execution_time: 34.22
files_reviewed: 11
files_skipped: 0
maintainer_files: 11
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T20:09:19Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Trivial .gitignore listing standard build artifacts; no malicious behavior.
  - file: LICENSE
    status: safe
    summary: Standard 0BSD license text; no code or suspicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO; all sources checksum-pinned from upstream GitHub, no malicious behavior.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE licensing metadata; no code or suspicious behavior.
  - file: hermes_agent_env.py
    status: safe
    summary: No malicious behavior; only safe environment variable defaults.
  - file: keep-venv-interpreter.patch
    status: safe
    summary: Benign packaging patch adjusting interpreter selection; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard upstream build; pinned checksums, no obfuscation or exfiltration—SAFE.
  - file: release-date-from-stamp.patch
    status: safe
    summary: Benign Python patch reading own install stamp; no malicious behavior.
  - file: requirements.md
    status: safe
    summary: Dependency documentation only; no executable or malicious content found.
  - file: system-browser-fallback.patch
    status: safe
    summary: Patch only adds safe system browser fallback.
  - file: system-tools.py
    status: safe
    summary: Build helper symlinks system binaries into pm store; no malicious behavior.
---

Materializing hermes-agent from local mirror...
Materialized hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD has no top-level code execution. All variables are defined with simple assignments (no command substitutions or backticks). Functions (prepare, build, check, package) are defined but not invoked during `makepkg --printsrcinfo`. The source array references previously defined variables (`${_tagver}`, `${url}`, `${_pkgver_tag}`) which is standard and harmless. There is no dangerous code at global scope.
</details>
<evidence></evidence>
<summary>No top-level code execution; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; safe to parse.
Reviewing the 11 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/11] Reviewing .SRCINFO...
[0/11] Reviewing .SRCINFO, LICENSE...
[0/11] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal `.gitignore` containing only patterns for ignoring build artifacts (`*.tar.gz`, `*.tar.zst`, `*.pkg.tar.zst`, `src/`, `pkg/`). These are standard Arch packaging directories and tarball patterns.

There is no code, no network access, no command execution, no obfuscation, and no file operations beyond nominating paths for git to ignore. Nothing here deviates from ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>Trivial .gitignore listing standard build artifacts; no malicious behavior.</summary>
</security_assessment>

[0/11] Reviewing .SRCINFO, LICENSE, .gitignore, PKGBUILD...
[1/11] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Trivial .gitignore listing standard build artifacts; no malicious behavior.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text 0BSD license declaration. It contains only standard licensing language: copyright attribution and the permission/warranty disclaimer clauses. There is no executable code, no shell commands, no network references, no file operations, no encoded or obfuscated content, and no system modifications.

The `&quot;` entities around "AS IS" are ordinary HTML/XML escaping in the license text, not an encoding trick. Nothing in the file deviates from a normal license file shipped in an AUR package.
</details>
<evidence>
</evidence>
<summary>Standard 0BSD license text; no code or suspicious behavior.</summary>
</security_assessment>

[1/11] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/11] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard 0BSD license text; no code or suspicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata manifest generated by makepkg. It declares a single upstream tarball sourced from the project's own GitHub repository (`https://github.com/NousResearch/hermes-agent/archive/refs/tags/v0.22.6.tar.gz`), three local patch files, and two local helper scripts (`system-tools.py`, `hermes_agent_env.py`). All six sources are pinned with full SHA-256 checksums — none are `SKIP`, so the build inputs are integrity-checked.

Dependencies and makedepends are ordinary build/runtime libraries (Python, Node, Electron-style GUI libs such as nss/atk/cups/mesa, plus git/curl). No network fetches, `eval`/base64 payloads, post-install hooks, or system-file modifications appear. There is nothing here that deviates from normal AUR packaging; note only that the three patch files and two Python helpers are shipped locally and cannot be reviewed from this manifest alone, so their actual contents should be inspected separately if a deeper audit is desired.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO; all sources checksum-pinned from upstream GitHub, no malicious behavior.</summary>
</security_assessment>

[2/11] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, hermes_agent_env.py...
[3/11] Reviewing PKGBUILD, REUSE.toml, hermes_agent_env.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO; all sources checksum-pinned from upstream GitHub, no malicious behavior.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE/SPDX licensing metadata file (`REUSE.toml`). It declares version 1 and a single `[[annotations]]` block listing package-local files (PKGBUILD, .SRCINFO, patches, helper scripts) along with copyright and license identifiers (0BSD).

It contains no executable code, no network access, no file operations, and no obfuscation. The `&quot;` entities are standard TOML/HTML escaping for string values and are entirely benign. This is consistent with ordinary AUR packaging metadata and shows no evidence of supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>Benign REUSE licensing metadata; no code or suspicious behavior.</summary>
</security_assessment>

[3/11] Reviewing PKGBUILD, REUSE.toml, hermes_agent_env.py, keep-venv-interpreter.patch...
[4/11] Reviewing PKGBUILD, hermes_agent_env.py, keep-venv-interpreter.patch...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE licensing metadata; no code or suspicious behavior.
LLM auditresponse for hermes_agent_env.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file only sets default environment variables for the packaged Python environment. It uses `os.environ.setdefault` to configure `HERMES_DISABLE_LAZY_INSTALLS`, `HERMES_LAZY_INSTALL_TARGET`, and `HERMES_WEBAPP_DIST`, preserving any values already provided by the user or launcher.

There are no network requests, encoded payloads, eval/exec usage, credential access, or writes outside the package's intended configuration scope. The path handling under `XDG_DATA_HOME` or `~/.local/share/hermes-agent/python` is consistent with normal application runtime behavior.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; only safe environment variable defaults.
</summary>
</security_assessment>

[4/11] Reviewing PKGBUILD, hermes_agent_env.py, keep-venv-interpreter.patch, release-date-from-stamp.patch...
[5/11] Reviewing PKGBUILD, keep-venv-interpreter.patch, release-date-from-stamp.patch...
+ Reviewed hermes_agent_env.py. Status: SAFE -- No malicious behavior; only safe environment variable defaults.
LLM auditresponse for keep-venv-interpreter.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a small upstream-style patch to `hermes_cli/_launchers.py`. It imports `read_install_stamp` from the package's own `hermes_cli.steward` module and, when the recorded install distribution is `"pacman"`, returns `None` early so that the packaged Arch environment does not treat the store's recorded system Python as the interpreter Hermes runs on. The change is purely internal logic supporting Arch packaging semantics.

There is no network access, no subprocess/exec/eval, no obfuscation or encoded blobs, no file-system writes outside the application's own scope, and no data exfiltration. It is fully consistent with ordinary distro packaging patches. No malicious content or supply-chain red flags identified.
</details>
<evidence>
</evidence>
<summary>
Benign packaging patch adjusting interpreter selection; no malicious behavior.
</summary>
</security_assessment>

[5/11] Reviewing PKGBUILD, keep-venv-interpreter.patch, release-date-from-stamp.patch, requirements.md...
[6/11] Reviewing PKGBUILD, release-date-from-stamp.patch, requirements.md...
+ Reviewed keep-venv-interpreter.patch. Status: SAFE -- Benign packaging patch adjusting interpreter selection; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows ordinary `makepkg` conventions. It builds the package's own upstream release archive from `https://github.com/NousResearch/hermes-agent` (declared in `url`), applies local, checksummed patch files, runs the project's build (`npm ci --ignore-scripts`, `npm run build`, `uv venv`/`uv sync --locked`), then installs into `/opt` under `$pkgdir` using `rsync`, `install`, `compileall`, and `strip`. Every source entry has a real SHA-256 hash (no `SKIP`). There are no `curl | bash` pipelines, no `eval` of decoded blobs, no base64/hex obfuscation, and no network exfiltration.

The inline Python heredocs are limited to packaging housekeeping: one rewrites `install-stamp.json` fields (`distribution`, `runtimeDir`), and `system-tools.py`/`hermes_agent_env.py` (already hash-pinned local files) set up a tools store and a PATH/env shim. The generated `/usr/bin/hermes` launcher merely sets env vars and execs the bundled venv interpreter. None of this touches unrelated system files or sends data off-host. `uv`/`npm` do fetch from their normal registries during build, but with `--locked` and `--ignore-scripts`, which is standard for native dependencies and not a supply-chain red flag in itself.

Minor hygiene notes (not threats): the build depends on upstream registries/lockfiles resolving at build time, and the package pins to a specific Arch python minor. These are reproducibility/lifecycle considerations, not malicious behavior.

</details>
<evidence>
</evidence>
<summary>
Standard upstream build; pinned checksums, no obfuscation or exfiltration—SAFE.
</summary>
</security_assessment>

[7/11] Reviewing release-date-from-stamp.patch, requirements.md...
+ Reviewed PKGBUILD. Status: SAFE -- Standard upstream build; pinned checksums, no obfuscation or exfiltration—SAFE.
[7/11] Reviewing release-date-from-stamp.patch, requirements.md, system-browser-fallback.patch...
LLM auditresponse for release-date-from-stamp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain unified diff (patch) against `hermes_cli/__init__.py` that changes how `__release_date__` is derived. The new code adds `_read_release_stamp()`, which imports `hermes_cli.steward.read_install_stamp`, optionally imports `pm.paths.repo_root`, and otherwise falls back to reading `install-stamp.json` located relative to `__file__`. It then formats the stamp's integer `commitDate` (epoch seconds) into `YYYY.M.D` via `datetime.fromtimestamp(..., tz=timezone.utc)`, falling back to the literal `"2026.9.24"`.

There are no network requests, no downloads, no `eval`/`exec`, no base64 or encoded blobs, no shell invocations, and no writes or deletions outside the package's own install stamp. The only file operation is a read of the project's own `install-stamp.json`, which is consistent with the module's stated purpose of reporting its own version/banner. The exception handling and lazy `__getattr__` pattern are ordinary Python plumbing. Nothing here deviates upward from the application's stated functionality, and the patch contains no injected malicious behavior.

This is a hygiene-neutral, purely functional upstream patch; decision is SAFE.
</details>
<evidence>
</evidence>
<summary>Benign Python patch reading own install stamp; no malicious behavior.</summary>
</security_assessment>

[7/11] Reviewing release-date-from-stamp.patch, requirements.md, system-browser-fallback.patch, system-tools.py...
[8/11] Reviewing requirements.md, system-browser-fallback.patch, system-tools.py...
+ Reviewed release-date-from-stamp.patch. Status: SAFE -- Benign Python patch reading own install stamp; no malicious behavior.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a documentation-only Markdown summary of the package's Python dependencies, consolidating `requirements.txt` and the two `pyproject.toml` files. It contains no executable code, shell commands, network request logic, file operations, or obfuscated/encoded content — only dependency name and version-range declarations. This is consistent with ordinary packaging documentation.

The only items worth noting are hygiene observations, not threats: the `rl` extra and the tinker-atropos section declare VCS dependencies via `git+https://github.com/NousResearch/atropos.git` and `git+https://github.com/thinking-machines-lab/tinker.git`. These point to the project's own upstream/related organizations rather than unexpected hosts, and VCS/URL-based Python requirements are commonplace. They are unpinned (no commit hash or tag), which weakens reproducibility, but this is a best-practice concern only and does not constitute malicious behavior.

Overall, nothing here deviates from standard packaging practices, and there is no evidence of injected malicious code, data exfiltration, or execution of attacker-controlled content.
</details>
<evidence>
</evidence>
<summary>Dependency documentation only; no executable or malicious content found.</summary>
</security_assessment>

[9/11] Reviewing system-browser-fallback.patch, system-tools.py...
+ Reviewed requirements.md. Status: SAFE -- Dependency documentation only; no executable or malicious content found.
LLM auditresponse for system-browser-fallback.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a readable unified diff against hermes_cli/browser_runtime.py. It adds a fallback that searches PATH for packaged Google Chrome, Chromium, or Brave when lazy installs are disabled and no configured executable, PM-managed Chromium, or baked Chromium is available. This is consistent with the application's browser runtime behavior and does not fetch or execute code from a remote source.

The patch contains no obfuscation, encoding tricks, network requests, credential access, destructive file operations, or persistence mechanisms. It only changes browser selection and the missing-browser hint using ordinary Python logic.
</details>
<evidence>
</evidence>
<summary>
Patch only adds safe system browser fallback.
</summary>
</security_assessment>

[10/11] Reviewing system-tools.py...
+ Reviewed system-browser-fallback.patch. Status: SAFE -- Patch only adds safe system browser fallback.
LLM auditresponse for system-tools.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a maintainer-provided build helper that constructs a "pm" store pointing at the system's own binaries. It imports pm modules from the Hermes tree via `sys.path.insert(0, str(tree))` (the package's own source, which the script exists to configure), defines a fixed `TOOLS` mapping, and creates symlinks from `/usr/bin` (or an optional alternative bin dir) into store entries under the build/store directory. It then records facts in `facts.json` and writes a small `manifest.json` to select the bundled layout.

There are no network requests, no downloads, no `eval`/`exec` of decoded blobs, no base64/hex obfuscation, no access to credential or sensitive files, and no writes outside the store directory and its parent manifest. The only operations are the symlinking of local system binaries, a consistency check on `expected` vs `TOOLS`, and JSON bookkeeping — all consistent with the documented purpose (making Hermes' package manager use the distro's node/npm/ffmpeg/ripgrep/python/uv instead of lazy installs). The reported side effect of putting node/npm dirs first on PATH for Hermes' child processes is described in the docstring and derives from upstream pm's store-first design, not injected malice.
</details>
<evidence>
</evidence>
<summary>Build helper symlinks system binaries into pm store; no malicious behavior.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed system-tools.py. Status: SAFE -- Build helper symlinks system binaries into pm store; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 40,946
  Completion Tokens: 5,479
  Total Tokens: 46,425
  Total Cost: $0.004723
  Execution Time: 34.22 seconds

Final Status: SAFE


No issues found.
