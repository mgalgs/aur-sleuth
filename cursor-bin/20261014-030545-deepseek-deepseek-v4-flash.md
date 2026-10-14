---
package: cursor-bin
pkgver: 3.24.18
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13311
completion_tokens: 3599
total_tokens: 16910
cost: 0.001866319
execution_time: 42.66
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:05:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file with official sources and pinned checksums; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore listing build artifacts; no malicious behavior found.
  - file: rg.sh
    status: safe
    summary: Simple ripgrep argument-translation wrapper; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard Electron app repackaging; no malicious behavior detected.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions in the global scope. No command substitutions, `eval`, `curl`, `curl|bash`, or any other dangerous operations that execute during sourcing. The brace expansion in the `source` array (creates two filenames from a quoted string and an unquoted `{sh,mjs}`) is normal Bash brace expansion, not a threat. The `package()` function is not executed during `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file only. It contains no executable code, no build logic, and no scripts. The declared sources point to Cursor's official download domain (`downloads.cursor.com`), Arch Linux's official GitLab packaging repository for the `code` package, and a local `rg.sh` file. All four sources have pinned SHA-512 checksums, so there is no indication of injected code, unexpected network behavior, or supply-chain tampering. Nothing in this metadata deviates from standard AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Metadata-only AUR file with official sources and pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, .SRCINFO, .gitignore, rg.sh...
[1/4] Reviewing PKGBUILD, .gitignore, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file with official sources and pinned checksums; no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in the AUR package repository for `cursor-bin`. It lists build artifacts and intermediate files (e.g., the downloaded AppImage, the built `.pkg.tar.zst` package, and contents extracted under `pkg/` and `src/`) so they are not committed to the git repository. There is no executable code, no network activity, no file manipulation, and no obfuscation. The content is entirely benign and consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore listing build artifacts; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore listing build artifacts; no malicious behavior found.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple shell wrapper that executes `/usr/bin/rg` (Ripgrep) and replaces any `--cursor-ignore` argument with `--ignore-file` before passing arguments along. It performs no network operations, no downloads, no file modifications, no obfuscated code, and no use of dangerous constructs such as `eval` or `base64`. The argument transformation is consistent with a packaging convenience wrapper for adapting Cursor's ripgrep invocation to a standard ripgrep flag. There is no evidence of injected malicious behavior or supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Simple ripgrep argument-translation wrapper; no malicious behavior detected.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Simple ripgrep argument-translation wrapper; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard repackaging of the official Cursor Electron application. It fetches the Cursor `.deb` from the official upstream `downloads.cursor.com`, and obtains launcher helper scripts (`code.sh`, `code.mjs`, `rg.sh`) from the official Arch Linux GitLab packaging repository. All four sources have pinned SHA-512 checksums; the later `sha512sums[0]` assignment replaces the initial `SKIP`, so the downloaded `.deb` is also checksum-verified.

The `package()` function only extracts the `.deb`, removes the bundled Electron, symlinks system-provided Electron/Node/xdg-open, and installs modified launcher scripts via `sed`/`install`. There are no network requests during build or install, no obfuscated code, no use of `eval`, `curl`, or `wget`, and no writes outside `$pkgdir`. This is ordinary packaging practice for a prebuilt Electron application.
</details>
<evidence>
</evidence>
<summary>
Standard Electron app repackaging; no malicious behavior detected.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Electron app repackaging; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,311
  Completion Tokens: 3,599
  Total Tokens: 16,910
  Total Cost: $0.001866
  Execution Time: 42.66 seconds

Final Status: SAFE


No issues found.
