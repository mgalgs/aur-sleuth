---
package: hermes-agent
pkgver: 0.20.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 15224
completion_tokens: 1795
total_tokens: 17019
cost: 0.00156457224
execution_time: 117.12
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 10489
upstream_named_files: 4
unpinned_sources: 0
date: 2026-08-29T15:08:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no security concerns.
  - file: requirements.md
    status: safe
    summary: Documentation file listing dependencies; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum and safe build steps.
---

Cloning https://aur.archlinux.org/hermes-agent.git...
Cloned hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The PKGBUILD has no `pkgver()` function and no top-level command substitutions, loops, or function calls that execute during sourcing. The global scope only assigns variables (arrays, strings). The `build()`, `check()`, and `package()` functions are defined but not executed because `--nobuild --noprepare` stops before those stages. Fetching the tarball from the upstream GitHub repository with a pinned checksum is standard and safe. There is no code that downloads or runs untrusted payloads or exfiltrates data at the source-fetching or PKGBUILD-sourcing stage.</details>
<evidence></evidence>
<summary>No dangerous code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 4 file(s) in the downloaded sources (src/hermes-agent-2026.8.27/web/README.md, src/hermes-agent-2026.8.27/web/eslint.config.js, src/hermes-agent-2026.8.27/web/package.json and 1 more); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 10489 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain `.SRCINFO` metadata file—no executable code, no logic, no commands. It simply declares package metadata such as version, dependencies, and a source tarball URL pointing to the official upstream GitHub repository (`github.com/NousResearch/hermes-agent`). The SHA-256 checksum is specified (not `SKIP`), providing integrity verification. There are no signs of obfuscation, suspicious URLs, or any other malicious indicators.
</details>
<evidence></evidence>
<summary>Standard package metadata; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, requirements.md...
[1/4] Reviewing .gitignore, PKGBUILD, requirements.md...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no security concerns.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a markdown document that consolidates dependency declarations from other configuration files (`requirements.txt`, `pyproject.toml`). It contains no executable code, no network requests, no obfuscated strings, and no system commands. It simply lists Python package names and version constraints, along with optional feature groups and submodule references. The presence of `git+` URLs in the documentation is standard practice for describing dependencies from Git repositories; it does not constitute a malicious action. There is no evidence of supply-chain attack or suspicious behavior in this file.
</details>
<evidence></evidence>
<summary>Documentation file listing dependencies; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed requirements.md. Status: SAFE -- Documentation file listing dependencies; no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard patterns for ignoring build artifacts, source directories, and package files in an AUR package repository. Patterns like `src*`, `pkg*`, and `*.pkg.tar.zst` are typical for `makepkg` builds. There is no malicious or dangerous content—no commands, network requests, obfuscation, or unexpected operations.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging conventions for a Python/Node.js application. The source is fetched from the official upstream GitHub repository with a pinned checksum (sha256sums). The build process uses `npm ci --ignore-scripts` (suppressing arbitrary package build scripts) and `uv sync --locked` (respects lockfile), both good security practices. No obfuscated code, no unexpected network requests, no exfiltration, and no backdoors are present. The only notable detail is the creation of an empty `.git` directory to prevent the `ignore` npm package from traversing parent directories, which is a benign workaround. The package installs to `/opt` and creates a wrapper script; all operations are confined to the package's own files and directories.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum and safe build steps.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum and safe build steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,224
  Completion Tokens: 1,795
  Total Tokens: 17,019
  Total Cost: $0.001565
  Execution Time: 117.12 seconds

Final Status: SAFE


No issues found.
