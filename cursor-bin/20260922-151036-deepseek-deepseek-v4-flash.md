---
package: cursor-bin
pkgver: 3.21.18
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13141
completion_tokens: 4165
total_tokens: 17306
cost: 0.001052079
execution_time: 118.04
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:10:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore of build artifacts; no malicious content present.
  - file: rg.sh
    status: safe
    summary: "Benign wrapper translating a Cursor-specific flag to ripgrep's --ignore-file."
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top‑level variable definitions (package metadata, source URLs, checksums, and a helper variable `_app`) and a `package()` function. No command substitutions, backtick executions, or dangerous commands (like `curl`, `wget`, `eval`, `base64`, etc.) appear in the global scope that would execute when the PKGBUILD is sourced. The source URLs point to the official upstream (`downloads.cursor.com`) and an Arch Linux packaging repository (`gitlab.archlinux.org`). There is no code that could exfiltrate data, download and run untrusted payloads, or perform any other malicious action during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file for the Arch User Repository package `cursor-bin`. It defines the package name, version, architecture, dependencies, and source URLs with checksums. The sources point to the official upstream Cursor binary (from `downloads.cursor.com`) and helper scripts from the official Arch Linux packaging repository (`gitlab.archlinux.org`). All checksums are provided and no checksum is set to `SKIP`. There are no executable instructions, obfuscated code, suspicious network requests, or system modifications. This file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
[1/4] Reviewing .gitignore, PKGBUILD, rg.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a proprietary binary package. It downloads the official `.deb` from `downloads.cursor.com` using a pinned commit hash, and the supporting scripts from the Arch Linux packaging repository. The `SKIP` checksum for the `.deb` is expected for binary VCS sources and is not a security issue by itself. The `package()` function performs routine operations: extracting the tarball, moving files, installing symlinks to system dependencies (node, xdg-open, ripgrep), and adapting scripts from the upstream `code` package to work with `cursor`. There are no suspicious network requests, obfuscated commands, data exfiltration, or execution of untrusted code. The only external dependencies come from the official Arch repositories or the package's own upstream. No supply-chain attack vector is present.
</details>
<evidence></evidence>
<summary>Standard AUR package with no malicious behavior detected.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used by the AUR git repository for the cursor-bin package. It contains a list of file patterns that exclude build artifacts and downloaded sources from version control: the upstream AppImage, the built `.pkg.tar.zst` package, the `pkg/` staging directory, and the `src/cursor.png` source file. There are no executable commands, no network operations, no encoded content, and no filesystem manipulations beyond the normal git ignore semantics. There is nothing here that could constitute malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore of build artifacts; no malicious content present.
</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore of build artifacts; no malicious content present.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal shell wrapper that executes ripgrep (`/usr/bin/rg`) while translating the argument `--cursor-ignore` into `--ignore-file`. This is a common compatibility shim so Cursor-related tooling can invoke a ripgrep-compatible binary with a Cursor-specific flag.

- No network requests, downloads, or data exfiltration.
- No obfuscation, encoding, `eval`, `base64`, `curl`, or `wget` anywhere in the file.
- No file system modifications, permission changes, or system configuration alterations.
- The parameter expansion `${@/--cursor-ignore/--ignore-file}` simply performs a textual substitution on each positional argument inside quoted expansion, which does not introduce command injection or execute attacker-controlled code.
- Using `exec` to replace the shell process with the target binary is standard wrapper practice.

The only minor note is that the substitution applies to any argument containing `--cursor-ignore`, including unusual file names, but this is not a security concern. Overall, this is benign packaging/utility code.
</details>
<evidence>

</evidence>
<summary>Benign wrapper translating a Cursor-specific flag to ripgrep's --ignore-file.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Benign wrapper translating a Cursor-specific flag to ripgrep's --ignore-file.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,141
  Completion Tokens: 4,165
  Total Tokens: 17,306
  Total Cost: $0.001052
  Execution Time: 118.04 seconds

Final Status: SAFE


No issues found.
