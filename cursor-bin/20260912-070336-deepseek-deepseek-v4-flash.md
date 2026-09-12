---
package: cursor-bin
pkgver: 3.20.15
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13144
completion_tokens: 3270
total_tokens: 16414
cost: 0.00131449752
execution_time: 170.49
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T07:03:36Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore listing build artifacts; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Declarative .SRCINFO metadata file, no executable code.
  - file: rg.sh
    status: safe
    summary: Trivial flag-mapping wrapper; no suspicious behavior or malicious code found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with checksums; no malicious behavior.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable and array definitions (pkgname, pkgver, source, sha512sums, etc.) and a `package()` function definition. There are no command substitutions, external downloads, or other executable statements at global scope. Since `makepkg --printsrcinfo` only sources the PKGBUILD without executing any function bodies, no malicious code can run during this operation.
</details>
<evidence></evidence>
<summary>No top-level malicious code detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code detected.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It lists build artifacts and generated files such as the downloaded AppImage, the built `.pkg.tar.zst` package, and files staged under `pkg/` and `src/` during packaging. There are no commands, scripts, network operations, encoded payloads, or any executable behavior in this file. It is entirely consistent with normal AUR packaging hygiene.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore listing build artifacts; no malicious or suspicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore listing build artifacts; no malicious or suspicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file, which is declarative and contains no executable code. It lists the package description, version, dependencies, source URLs, and checksums. All source URLs point to the official Cursor download page or to the official Arch Linux packaging repository on GitLab, which is standard practice for AUR packages. The local file `rg.sh` is a helper script that should be included in the AUR source and is expected as part of the packaging workflow. All checksums are provided and none are set to 'SKIP'. No suspicious network requests, obfuscated content, or dangerous commands are present. This file is purely informational and poses no supply-chain attack risk.
</details>
<evidence></evidence>
<summary>Declarative .SRCINFO metadata file, no executable code.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative .SRCINFO metadata file, no executable code.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple wrapper script that executes `/usr/bin/rg` and rewrites any `--cursor-ignore` argument into `--ignore-file` before passing all arguments along. This is a benign compatibility shim commonly used to map application-specific command-line flags to ripgrep's native options.

There is no network activity, no obfuscation, no encoded payloads, no file modification, and no execution of untrusted code. The script only invokes the system ripgrep binary with the caller's arguments. It follows standard packaging practices and contains no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Trivial flag-mapping wrapper; no suspicious behavior or malicious code found.
</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Trivial flag-mapping wrapper; no suspicious behavior or malicious code found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `cursor-bin` follows standard AUR packaging practices for a prebuilt binary package. The tarball is downloaded over HTTPS from the official vendor (`downloads.cursor.com`) and is integrity-checked with a SHA-512 checksum (the initial `SKIP` is immediately overridden with a real hash on the next line). Helper files (`code.sh`, `code.mjs`) are fetched from the official Arch Linux packaging GitLab repository and also carry valid checksums. The `package()` function only extracts the Debian archive, creates symlinks to system binaries (`node`, `rg`, `xdg-open`), and patches launcher scripts with `sed` — no network requests, encoded payloads, or unexpected system modifications. There is no evidence of obfuscated code, data exfiltration, backdoors, or execution of untrusted code. The use of a mutable branch reference (`main`) in the GitLab source is mitigated by checksum pinning.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with checksums; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with checksums; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,144
  Completion Tokens: 3,270
  Total Tokens: 16,414
  Total Cost: $0.001314
  Execution Time: 170.49 seconds

Final Status: SAFE


No issues found.
