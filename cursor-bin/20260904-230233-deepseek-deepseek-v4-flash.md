---
package: cursor-bin
pkgver: 3.19.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13114
completion_tokens: 2915
total_tokens: 16029
cost: 0.0016576000
execution_time: 31.44
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T23:02:33Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no signs of malicious content.
  - file: rg.sh
    status: safe
    summary: Simple rg argument rewriting wrapper; no malicious or suspicious behavior.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope only contains standard variable assignments (pkgname, pkgver, source, sha512sums, etc.) and a function definition for `package()`. No command substitutions, backticks, or other code execution occurs at the global scope. The `source` array contains URLs from the official cursor.com domain and gitlab.archlinux.org, which are only stored as strings. There is no dangerous code (e.g., curl, wget, eval) that would execute during `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence>
</evidence>
<summary>Top-level scope only defines variables; no code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables; no code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used to exclude build artifacts and generated files from version control. The listed entries are all expected output files from packaging a prebuilt AppImage (`cursor-0.37.1.AppImage`, `cursor-bin-0.37.1-1-x86_64.pkg.tar.zst`, various `pkg/` subpath files, `src/cursor.png`). There are no commands, scripts, network operations, obfuscation, or any behavior that could be considered malicious or dangerous. It is purely a configuration file for git.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR binary package for Cursor, an AI coding IDE. The primary source is the official Cursor download URL (`downloads.cursor.com/.../cursor_3.19.13_amd64.deb`), which is the package's own upstream distribution point. The additional sources are the Arch Linux packaging support scripts `code.sh` and `code.mjs` from `gitlab.archlinux.org` (the official Arch Linux packaging organization), plus a local `rg.sh`. All four checksums are pinned SHA-512 values, including the upstream deb, so there is no evidence of unverified or mutable content.

There are no suspicious network requests, no encoded/obfuscated commands, no eval/base64/curl-pipe-to-shell patterns, and no file operations that go beyond normal packaging behavior. Since this is a `.SRCINFO` file, it only declares metadata, sources, and checksums; it contains no executable code. Downloading the vendor's own signed/prebuilt binary and helper scripts from official Arch packaging infrastructure is consistent with legitimate AUR practice. No genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt deb from the official Cursor domain (`downloads.cursor.com`) and a set of packaging helper scripts from the official Arch Linux GitLab (`gitlab.archlinux.org`). All source URLs are legitimate and expected for this package type. The checksum for the deb is explicitly set (not just SKIP), and the other sources have valid checksums. The `package()` function performs standard Arch packaging operations: extracting the deb, moving files, creating symlinks for external dependencies (`node`, `xdg-open`, `ripgrep`), and patching scripts to use the correct electron binary and paths. There is no obfuscated code, no unexpected network requests, no execution of untrusted code, and no exfiltration. The operations are fully transparent and consistent with ordinary AUR packaging practices for a prebuilt binary application.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no signs of malicious content.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no signs of malicious content.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal two-line bash wrapper. It executes the system ripgrep binary at `/usr/bin/rg` and rewrites any occurrence of `--cursor-ignore` in the argument list to `--ignore-file`. This is consistent with an editor/tool integration that translates a custom flag into ripgrep's standard flag.

There is no evidence of malicious behavior: no network requests, no downloads, no `eval`, no base64/obfuscation, no file system modifications, and no exfiltration of data. The use of an absolute path for ripgrep avoids PATH hijacking, and the argument substitution is ordinary bash parameter expansion.
</details>
<evidence>
</evidence>
<summary>
Simple rg argument rewriting wrapper; no malicious or suspicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Simple rg argument rewriting wrapper; no malicious or suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,114
  Completion Tokens: 2,915
  Total Tokens: 16,029
  Total Cost: $0.001658
  Execution Time: 31.44 seconds

Final Status: SAFE


No issues found.
