---
package: cursor-bin
pkgver: 3.31.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13217
completion_tokens: 3720
total_tokens: 16937
cost: 0.00185913
execution_time: 25.16
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-20T00:37:17Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for build artifacts, no risk.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior.
  - file: rg.sh
    status: safe
    summary: Simple argument transformation wrapper for ripgrep.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file with no security concerns.
---

Materializing cursor-bin from local mirror...
Cloning https://aur.archlinux.org/cursor-bin.git...
Cloned cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists entirely of static variable assignments (e.g., `pkgname`, `pkgver`, `source`, `sha512sums`, `depends`, `noextract`), a function definition for `package()`, and comments. There are no command substitutions (`$(...)` or backticks), `eval` calls, `curl`/`wget` invocations, or external script sourcing at the global level.

Since `makepkg --printsrcinfo` only executes the global scope and does **not** execute function bodies (`package()`, `prepare()`, `build()`, etc.), no code capable of performing network requests, executing arbitrary commands, or exfiltrating data runs during this step. Variable expansions like `${pkgver}` in the `source` and `noextract` arrays are standard string assignments and do not trigger side effects.

The `SKIP` checksum is an ordinary packaging practice and poses no risk during metadata parsing. No genuinely malicious code is present in the top-level scope.
</details>
<evidence></evidence>
<summary>No top-level execution risk in PKGBUILD</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk in PKGBUILD
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The .gitignore file lists filenames and paths to be ignored by version control. These are typical build artifacts (downloaded AppImage, generated package file, extracted source files) for an AUR package that bundles a prebuilt binary. No code execution, network access, or obfuscation is present. The file is entirely passive and follows standard packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .gitignore for build artifacts, no risk.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for build artifacts, no risk.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package recipe for the Cursor editor binary. It downloads the official Debian package from `downloads.cursor.com`, pins a SHA512 checksum for it, and downloads upstream VSCode packaging scripts from the Arch Linux GitLab (also with pinned checksums). All operations are transparent and consistent with normal packaging workflows: extracting the archive, installing files, creating symlinks, and patching shebangs/paths via sed. There are no network requests beyond the declared sources, no obfuscated code, no execution of downloaded scripts, and no attempts to exfiltrate data or modify system files outside the package's scope. The use of `sha512sums=('SKIP')` for the VCS source is expected and not a security concern.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple wrapper that replaces the argument `--cursor-ignore` with `--ignore-file` before executing `/usr/bin/rg`. It performs no network requests, no obfuscation, no file operations beyond invoking the intended binary. This is a standard helper script for adapting command-line options and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Simple argument transformation wrapper for ripgrep.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed rg.sh. Status: SAFE -- Simple argument transformation wrapper for ripgrep.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a declarative metadata file for the cursor-bin AUR package. It contains no executable code, no network requests, no obfuscated strings, and no system-modifying commands. All source URLs point to the official upstream (cursor.com) and the Arch Linux packaging repository (gitlab.archlinux.org), with one local AUR file (rg.sh). All checksums are provided and non-SKIP, ensuring integrity of the fetched sources. The file follows standard AUR packaging practices and does not exhibit any signs of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard metadata file with no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file with no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,217
  Completion Tokens: 3,720
  Total Tokens: 16,937
  Total Cost: $0.001859
  Execution Time: 25.16 seconds

Final Status: SAFE


No issues found.
