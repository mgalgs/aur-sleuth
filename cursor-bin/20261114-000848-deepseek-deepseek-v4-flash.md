---
package: cursor-bin
pkgver: 3.30.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13070
completion_tokens: 2437
total_tokens: 15507
cost: 0.00161496
execution_time: 14.11
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T00:08:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary AUR package, no malicious code.
  - file: rg.sh
    status: safe
    summary: Simple argument translation wrapper script for ripgrep.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments and function definitions in its global/top-level scope. No command substitutions, backticks, `eval`, `curl`, `wget`, or other code execution constructs are present. The `source` array defines URLs to the upstream vendor and the Arch Linux packaging repository, which are standard locations. The `sha512sums` array uses `SKIP` for the first entry and later overrides it with a specific checksum, but that is a simple assignment with no execution. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR git repository. It lists build artifacts (AppImage, package tarball, PKGBUILD output directories, source images) that should be excluded from version control. There is no executable code, no network requests, no obfuscation, and no system modifications. The content is purely declarative and serves the routine purpose of preventing generated files from being tracked. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard gitignore file with no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file with no malicious content.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an AUR package. It lists the package name, version, dependencies, source URLs, and SHA-512 checksums. All source URLs point to official or expected locations: the upstream Cursor downloads site, the official Arch Linux GitLab for packaging scripts (code.sh, code.mjs from the `code` package), and a local file `rg.sh`. No checksums are set to SKIP. There is no executable code, no obfuscated strings, no suspicious network requests, and no commands that could exfiltrate data or modify the system. The file is purely declarative and follows standard AUR/PKGBUILD metadata conventions.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary Electron application. All source downloads originate from official locations: the Cursor application binary from `downloads.cursor.com` and helper scripts from the Arch Linux GitLab packaging repository. The only potentially mutable reference is the first source (the `.deb` file) which uses a commit hash in the URL, and its checksum is explicitly pinned via `sha512sums[0]=...`, so it is not truly SKIPped. The remaining checksums are also pinned. The `package()` function performs routine operations: extraction with `bsdtar`/`tar`, symlink creation to system dependencies (`node`, `xdg-open`, `electron`), and sed-based path patching. There are no obfuscated commands, no unexpected network requests, no execution of downloaded scripts (the `.mjs` and `.sh` files are installed as data, not executed during build), and no exfiltration or backdoor mechanisms. The file is consistent with a legitimate, well-maintained AUR package.
</details>
<evidence></evidence>
<summary>Standard prebuilt binary AUR package, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary AUR package, no malicious code.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple wrapper script that translates the custom argument `--cursor-ignore` to the standard ripgrep argument `--ignore-file`. It performs no network operations, no file modifications outside the exec, and contains no obfuscation or encoded commands. This is a normal packaging practice for adjusting command-line options between the application and the underlying tool.
</details>
<evidence></evidence>
<summary>Simple argument translation wrapper script for ripgrep.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Simple argument translation wrapper script for ripgrep.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,070
  Completion Tokens: 2,437
  Total Tokens: 15,507
  Total Cost: $0.001615
  Execution Time: 14.11 seconds

Final Status: SAFE


No issues found.
