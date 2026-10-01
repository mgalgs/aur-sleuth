---
package: cursor-bin
pkgver: 3.23.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13153
completion_tokens: 6973
total_tokens: 20126
cost: 0.001138158
execution_time: 316.88
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T03:06:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Static metadata file, no executable code or threats.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore listing build artifacts; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging for Cursor binary.
  - file: rg.sh
    status: safe
    summary: Thin flag-translation wrapper for ripgrep; no malicious behavior found.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable definitions and a package() function. No top-level code executes any commands, fetches remote content, or performs obfuscated operations. The source array lists official download URLs, and all variable assignments are standard. Running `makepkg --printsrcinfo` simply sources these definitions without executing any dangerous actions. Therefore, this step is safe.</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a static metadata file for the AUR package. It contains package description, version, dependencies, and source URLs with checksums. All source URIs point to the official upstream (cursor.com) or the official Arch Linux packaging repository (gitlab.archlinux.org), with the exception of `rg.sh`, a local file within the package itself. No executable code, obfuscation, suspicious network destinations, or malicious behavior is present. The checksums are provided and none are set to `SKIP`, so the sources are pinned. This file does not contain any code that could perform operations.
</details>
<evidence></evidence>
<summary>Static metadata file, no executable code or threats.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .gitignore, PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file, no executable code or threats.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.gitignore` for the `cursor-bin` AUR package. It lists build artifacts and packaged output files such as the downloaded AppImage, the built `.pkg.tar.zst` package, and extracted files under `pkg/` and `src/`. There is no executable code, no network activity, no file manipulation logic, and no indication of malicious behavior. It is a routine ignore file used to keep generated artifacts out of version control.
</details>
<evidence></evidence>
<summary>Standard .gitignore listing build artifacts; no security issues found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore listing build artifacts; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch User Repository (AUR) package for the official Cursor binary. It downloads the upstream `.deb` from the official cursor.com domain (HTTPS) and includes helper scripts from the official Arch Linux packaging repository (gitlab.archlinux.org). All non-SKIP sources have valid sha512sums. The `package()` function performs routine operations: extracting the `.deb`, installing symlinks, and adapting upstream VSCode scripts (code.mjs → cursor.mjs, code.sh → cursor) for the Cursor application. There are no obfuscated commands, no unexpected network requests, no writes outside `$pkgdir`, and no execution of unsourced code. The use of `sed` and `install` is ordinary for repackaging an Electron-based application. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR packaging for Cursor binary.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging for Cursor binary.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a thin compatibility wrapper for Cursor's use of ripgrep. It execs the system `/usr/bin/rg` and translates any `--cursor-ignore` argument into ripgrep's standard `--ignore-file` flag using bash parameter expansion.

Key analysis:
- The absolute path `/usr/bin/rg` prevents PATH hijacking, and `exec` replaces the shell process cleanly without leaving a lingering shell.
- The expansion `${@/--cursor-ignore/--ignore-file}` is quoted, so no word-splitting or glob expansion occurs; each argument is preserved as a single word. It is a fixed string substitution and does not evaluate user input as shell code.
- No network requests, downloads, eval, base64, obfuscation, or writes outside rg's normal behavior. The script only adjusts a command-line flag and forwards to the real ripgrep binary.
- The `--ignore-file` transformation makes rg read a specified file as an ignore-file, which is the intended Cursor integration behavior; it does not exfiltrate or execute anything.

Minor hygiene note: the wrapper depends on the system ripgrep being present and is specific to Cursor's flag naming, but this is ordinary packaging behavior and not a security concern.
</details>
<evidence>
</evidence>
<summary>
Thin flag-translation wrapper for ripgrep; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Thin flag-translation wrapper for ripgrep; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,153
  Completion Tokens: 6,973
  Total Tokens: 20,126
  Total Cost: $0.001138
  Execution Time: 316.88 seconds

Final Status: SAFE


No issues found.
