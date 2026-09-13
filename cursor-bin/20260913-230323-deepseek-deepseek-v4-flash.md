---
package: cursor-bin
pkgver: 3.20.21
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13138
completion_tokens: 3166
total_tokens: 16304
cost: 0.0008995140
execution_time: 50.86
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T23:03:22Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums and legitimate source URLs.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified sources, no malicious code.
  - file: rg.sh
    status: safe
    summary: "Benign wrapper translating `--cursor-ignore` to `--ignore-file` for ripgrep. No security issues."
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only top-level code. This PKGBUILD contains only variable/array assignments and the definition of `package()`; there are no top-level command substitutions, no `eval`, `curl`, `wget`, `base64`, or other executable statements that would run during sourcing. The `package()` function contains file manipulation and script installation logic, but it is not executed by `makepkg --printsrcinfo`.

The `SKIP` checksum on the downloaded `.deb` is a supply-chain consideration for the later full audit, but it is expressly out of scope for this narrow gate because no source is downloaded or verified while running `makepkg --printsrcinfo`. No genuinely malicious top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>
No dangerous top-level code; printsrcinfo sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; printsrcinfo sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only file and directory patterns used to exclude build artifacts and intermediate files from version control. These entries are standard for an AUR package repository that builds a precompiled binary from an upstream AppImage. No commands, network requests, encoded payloads, or suspicious operations are present. The file serves a purely housekeeping function and poses no security risk.
</details>
<evidence/>
<summary>Standard .gitignore for AUR build artifacts; no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file used by AUR helpers. It contains no executable code. All source URLs point to legitimate domains: the official Cursor download server (downloads.cursor.com) and the official Arch Linux packaging repository (gitlab.archlinux.org). The wrapper scripts fetched from the Arch Linux `code` package are standard practice for Electron-based applications like Cursor. Every source entry has a corresponding SHA-512 checksum, and none are set to `SKIP`. No obfuscation, unusual encoding, or suspicious operations are present.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO with pinned checksums and legitimate source URLs.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums and legitimate source URLs.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary Electron-based application. The primary source is a pinned-commit download from the official cursor.com domain, and the supporting scripts are fetched from the official Arch Linux GitLab repository with valid SHA-512 checksums. The `sha512sums[0]` line overrides the earlier SKIP for the .deb, providing integrity verification. No obfuscated commands, unexpected network access, or data exfiltration is present. All operations in `package()` (extraction, symlinks, sed modifications) are typical for adapting a prebuilt VS Code derivative. The local `rg.sh` file is not auditable here, but no indication of malice exists within the PKGBUILD itself.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with verified sources, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified sources, no malicious code.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple wrapper script that execs the system `rg` binary (`/usr/bin/rg`) and rewrites any command-line argument spelled `--cursor-ignore` into `--ignore-file`. The substitution is performed by Bash's parameter expansion on the argument array, which is a normal and transparent way to adapt a tool's CLI options.

There are no network requests, no downloads, no obfuscated or encoded content, no file system modifications, and no execution of anything other than the intended `rg` binary. The script does exactly what a small convenience wrapper should do: forward all arguments to ripgrep while translating one option name. No malicious or supply-chain behavior is present.
</details>
<evidence>
</evidence>
<summary>
Benign wrapper translating `--cursor-ignore` to `--ignore-file` for ripgrep. No security issues.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Benign wrapper translating `--cursor-ignore` to `--ignore-file` for ripgrep. No security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,138
  Completion Tokens: 3,166
  Total Tokens: 16,304
  Total Cost: $0.000900
  Execution Time: 50.86 seconds

Final Status: SAFE


No issues found.
