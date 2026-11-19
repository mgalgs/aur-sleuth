---
package: hermes-agent
pkgver: 0.22.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 41550
completion_tokens: 8144
total_tokens: 49694
cost: 0.005263258
execution_time: 59.04
files_reviewed: 11
files_skipped: 0
maintainer_files: 11
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T12:09:48Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts; no malicious content found.
  - file: LICENSE
    status: safe
    summary: License file only; contains no executable or suspicious content. Safe.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml licensing metadata only; no suspicious or malicious behavior found.
  - file: hermes_agent_env.py
    status: safe
    summary: Benign environment-default module; no network, execution, or obfuscation. Safe.
  - file: keep-venv-interpreter.patch
    status: safe
    summary: Benign Arch-specific launcher compatibility patch; no malicious behavior found.
  - file: requirements.md
    status: safe
    summary: Markdown dependency documentation only; no executable or malicious content found. Safe.
  - file: release-date-from-stamp.patch
    status: safe
    summary: Patch only adjusts release date reporting; no malicious behavior found.
  - file: system-browser-fallback.patch
    status: safe
    summary: Patch safely adjusts local Chromium browser fallback selection; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD is a standard pinned-source build with no malicious behavior found.
  - file: system-tools.py
    status: safe
    summary: Benign packaging helper; creates local symlink-based pm store entries, no malicious behavior.
---

Materializing hermes-agent from local mirror...
Materialized hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and a function definition (`_extract_dir`) at global scope. No command substitutions, backticks, eval, or other code execution occurs when the file is sourced. The function `_extract_dir` is defined but not called at global scope; it is only invoked inside the `prepare()`, `build()`, `check()`, and `package()` functions, which are not executed during `makepkg --printsrcinfo`. All global variables are static strings or arrays of strings, with no dangerous operations.
</details>
<evidence>
</evidence>
<summary>
No global-level code execution in PKGBUILD
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-level code execution in PKGBUILD
Reviewing the 11 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/11] Reviewing .SRCINFO...
[0/11] Reviewing .SRCINFO, LICENSE...
[0/11] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an Arch User Repository (AUR) package repository. It excludes common build artifacts and outputs such as tarballs, compressed package files, and the `src/` and `pkg/` directories created by `makepkg` during the packaging process. There are no commands, no network operations, no obfuscated content, and no references to anything outside of normal packaging workflow. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR build artifacts; no malicious content found.</summary>
</security_assessment>

[1/11] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts; no malicious content found.
[1/11] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License text. It contains no executable code, no network operations, no file system access, and no hidden or obfuscated content. The file merely grants permissive license terms and disclaims liability, consistent with ordinary open-source packaging.

There is nothing in this file that deviates from normal AUR packaging practices or that could constitute a supply-chain attack. No further security concerns are present.
</details>
<evidence>

</evidence>
<summary>
License file only; contains no executable or suspicious content. Safe.</summary>
</security_assessment>

[1/11] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/11] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- License file only; contains no executable or suspicious content. Safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata declaration for `hermes-agent`. It describes a source tarball fetched from the project's official GitHub repository (`https://github.com/NousResearch/hermes-agent/archive/refs/tags/v0.22.7.tar.gz`), along with several local patch files and helper scripts. All six entries have pinned `sha256sums`, which is good supply-chain hygiene.

There are no suspicious network endpoints, no encoded or obfuscated commands, no downloads executed at install time, and no file operations beyond normal packaging metadata. The declared dependencies (Python, Node.js, npm, uv, ripgrep, ffmpeg, browser-related libraries, git, curl) match the described purpose of a locally-run AI agent with browser and automation capabilities. No behavior in this file indicates a supply-chain attack or malicious intent.
</details>
<evidence>

</evidence>
<summary>
Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[2/11] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, hermes_agent_env.py...
[3/11] Reviewing PKGBUILD, REUSE.toml, hermes_agent_env.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml manifest used for software licensing compliance. It declares SPDX copyright and license annotations for a set of package files (PKGBUILD, .SRCINFO, patches, helper scripts). There is no executable code, no network activity, no file manipulation, and no obfuscated content. The listed paths are all consistent with the package's own source tree. No supply-chain or malicious behavior is present.
</details>
<evidence></evidence>
<summary>REUSE.toml licensing metadata only; no suspicious or malicious behavior found.</summary>
</security_assessment>

[3/11] Reviewing PKGBUILD, REUSE.toml, hermes_agent_env.py, keep-venv-interpreter.patch...
[4/11] Reviewing PKGBUILD, hermes_agent_env.py, keep-venv-interpreter.patch...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml licensing metadata only; no suspicious or malicious behavior found.
LLM auditresponse for hermes_agent_env.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small Python module that sets a few environment variables using `os.environ.setdefault`. It only defines defaults for `HERMES_DISABLE_LAZY_INSTALLS`, `HERMES_LAZY_INSTALL_TARGET`, and `HERMES_WEBAPP_DIST`, with paths derived from XDG data home or `/opt/hermes-agent`. There are no network operations, no code execution, no file writes, no obfuscation, and no interaction with credentials or system files. The behavior is consistent with its stated purpose of providing environment defaults for the hermes-agent venv.

The only minor consideration is that `HERMES_LAZY_INSTALL_TARGET` defaults to a user-local path under `~/.local/share/hermes-agent/python`; this is a normal application configuration default and not malicious. No supply-chain red flags are present.
</details>
<evidence>
</evidence>
<summary>
Benign environment-default module; no network, execution, or obfuscation. Safe.</summary>
</security_assessment>

[5/11] Reviewing PKGBUILD, keep-venv-interpreter.patch...
+ Reviewed hermes_agent_env.py. Status: SAFE -- Benign environment-default module; no network, execution, or obfuscation. Safe.
[5/11] Reviewing PKGBUILD, keep-venv-interpreter.patch, release-date-from-stamp.patch...
LLM auditresponse for keep-venv-interpreter.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies `hermes_cli/_launchers.py` to detect whether the Hermes installation was made through an Arch Linux pacman package by reading an install stamp, and if so, returns early from a launcher helper. The change is Arch-specific packaging compatibility logic, not a supply-chain attack.

There is no network activity, no download or execution of remote code, no obfuscation, no suspicious file writes, and no exfiltration of local data. The added code reads a local install-stamp file through the package's own internal module and performs a simple string comparison. Even if the behavior were questionable from a correctness standpoint, it does not meet the threshold for genuinely malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Benign Arch-specific launcher compatibility patch; no malicious behavior found.</summary>
</security_assessment>

[5/11] Reviewing PKGBUILD, keep-venv-interpreter.patch, release-date-from-stamp.patch, requirements.md...
[6/11] Reviewing PKGBUILD, release-date-from-stamp.patch, requirements.md...
+ Reviewed keep-venv-interpreter.patch. Status: SAFE -- Benign Arch-specific launcher compatibility patch; no malicious behavior found.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain Markdown documentation page that consolidates dependency declarations from `requirements.txt` and `pyproject.toml` files. It contains no executable code, no shell commands, no network requests, and no file operations. The content is limited to package names, version ranges, and optional extras, which is ordinary dependency documentation for a Python project.

The version specifiers appear as HTML-escaped entities (e.g., `&gt;=`, `&lt;`) because the document is written in Markdown; this is a formatting artifact, not obfuscation. References to git URLs (`git+https://github.com/...`) are the project's own declared upstream sources for optional integration dependencies and are normal for Python packaging. There is no evidence of malicious behavior, data exfiltration, hidden downloads, or injected code.
</details>
<evidence>
</evidence>
<summary>
Markdown dependency documentation only; no executable or malicious content found. Safe.</summary>
</security_assessment>

[6/11] Reviewing PKGBUILD, release-date-from-stamp.patch, requirements.md, system-browser-fallback.patch...
[7/11] Reviewing PKGBUILD, release-date-from-stamp.patch, system-browser-fallback.patch...
+ Reviewed requirements.md. Status: SAFE -- Markdown dependency documentation only; no executable or malicious content found. Safe.
LLM auditresponse for release-date-from-stamp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch only changes how `hermes_cli/__init__.py` derives the `__release_date__` module attribute. It replaces a hard-coded date literal with a value read from a local `install-stamp.json` file (or via the upstream `read_install_stamp` helper), falling back to the original literal when no stamp is present. The logic is straightforward: read a JSON file, parse an integer epoch timestamp, and format it as a UTC date. There are no network operations, no code execution, no obfuscation, and no writes to system files.

The file operations are limited to reading a package-local stamp file from the installed package path, which is consistent with the stated purpose of reporting the build's release date. The fallback path also only reads a JSON file and returns an empty dictionary on error. This matches standard upstream application behavior and does not indicate a supply-chain attack or injected malicious code.
</details>
<evidence></evidence>
<summary>
Patch only adjusts release date reporting; no malicious behavior found.</summary>
</security_assessment>

[8/11] Reviewing PKGBUILD, system-browser-fallback.patch...
+ Reviewed release-date-from-stamp.patch. Status: SAFE -- Patch only adjusts release date reporting; no malicious behavior found.
[8/11] Reviewing PKGBUILD, system-browser-fallback.patch, system-tools.py...
LLM auditresponse for system-browser-fallback.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch only changes how Hermes locates a Chromium-based browser on the local system. It adds `google-chrome-stable`, `google-chrome`, and `brave` to the list of system commands checked via `locate_command`, and uses that expanded list as a fallback when pm's lazy installs are disabled. The logic is straightforward and contains no network requests, downloads, code execution, obfuscation, or file system modifications outside the application's normal configuration lookup.

The change is consistent with the stated packaging goal: an Arch package of Hermes with lazy installs disabled should prefer a browser provided by the distribution rather than having pm fetch its own Chromium at runtime. All behavior is limited to reading the executable path from PATH and returning an appropriate hint message. No supply-chain risk is evident.
</details>
<evidence>
</evidence>
<summary>
Patch safely adjusts local Chromium browser fallback selection; no malicious behavior found.</summary>
</security_assessment>

[9/11] Reviewing PKGBUILD, system-tools.py...
+ Reviewed system-browser-fallback.patch. Status: SAFE -- Patch safely adjusts local Chromium browser fallback selection; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practice. All sources come from the declared upstream GitHub repository at a pinned tag with fixed sha256 checksums; npm/uv dependency resolution is lockfile-based, and `npm ci --ignore-scripts` plus `UV_PYTHON_DOWNLOADS=never` reduce unexpected code execution. Build and package phases only operate on the unpacked source, the generated venv, and the install destination under `$pkgdir`; no obfuscated commands, no remote downloads at build time beyond the declared source and package managers, and no data exfiltration or backdoor mechanisms are present.

The inline Python and shell fragments are transparent and scoped to packaging metadata (`install-stamp.json`) and the launcher. The launcher simply exports documented environment variables and execs the installed venv Python; there is no `eval`, base64, `curl|bash`, or writing outside the package tree. The unshown local helper files (`system-tools.py`, `hermes_agent_env.py`) cannot be audited from this file alone, but their described functions are consistent with the application's stated purpose. No genuinely malicious behavior is evident.
</details>
<evidence>
</evidence>
<summary>
PKGBUILD is a standard pinned-source build with no malicious behavior found.</summary>
</security_assessment>

[10/11] Reviewing system-tools.py...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD is a standard pinned-source build with no malicious behavior found.
LLM auditresponse for system-tools.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a build-time helper script that constructs a Hermes package-manager store entry from the system's own binaries. It imports modules from the provided Hermes tree, reads the tree's lockfile, creates a store directory, and writes symlinks under that store pointing to commands in `/usr/bin` such as `node`, `npm`, `ffmpeg`, `rg`, `python3`, and `uv`. It also records facts and writes a small `manifest.json` beside the store. These operations are consistent with the script's documented purpose and with normal AUR packaging helper behavior.

There is no network access, no downloading or execution of remote code, no obfuscated or encoded content, and no use of dangerous constructs such as `eval`, `base64`, `curl`, or `wget`. The script performs ordinary filesystem operations (`mkdir`, `symlink_to`, `write_text`, `chmod`) entirely within the package-manager store layout and does not touch user data, credentials, or unrelated system files. No genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Benign packaging helper; creates local symlink-based pm store entries, no malicious behavior.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed system-tools.py. Status: SAFE -- Benign packaging helper; creates local symlink-based pm store entries, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,550
  Completion Tokens: 8,144
  Total Tokens: 49,694
  Total Cost: $0.005263
  Execution Time: 59.04 seconds

Final Status: SAFE


No issues found.
