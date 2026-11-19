---
package: librewolf-vencord
pkgbase: vencord
pkgver: 1.15.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12702
completion_tokens: 1982
total_tokens: 14684
cost: 0.00291802
execution_time: 43.06
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-11T15:04:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no suspicious content; safe.
  - file: vencord.install
    status: safe
    summary: Contains only benign setup instructions, no dangerous operations.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with standard build and install steps.
---

librewolf-vencord is built from vencord
Materializing librewolf-vencord from local mirror...
Materialized librewolf-vencord
Analyzing librewolf-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable declarations (pkgname, pkgver, source, sha256sums, etc.) and function definitions. No command substitutions, external tool invocations (curl, wget, eval, base64), or obfuscated expressions are present at global scope. Since `makepkg --printsrcinfo` only evaluates the global scope and does not execute the `prepare()`, `build()`, `package_*()`, or other function bodies, no dangerous operations can occur during this step. The source array uses a pinned git tag and the checksum is a fixed hash, but even if it were SKIP or missing, that would not affect this gate because no downloading or verification occurs here.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata file. It declares package names, dependencies, and a pinned git source with a matching SHA-256 checksum. No executable code, suspicious URLs, obfuscation, or unusual operations are present. The file simply describes the packaging structure for the upstream Vencord project and its browser-specific metapackages. All content is normative for AUR packages.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, vencord.install...
[1/4] Reviewing .gitignore, PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR git repository. It ignores all files except `PKGBUILD`, `.SRCINFO`, `vencord.install`, and the `.gitignore` itself, which is exactly the expected structure for an AUR package source repository. There are no network operations, no encoded/obfuscated commands, no file exfiltration, and no execution of downloaded content. The file contains only benign ignore patterns for version control and does not affect the built package or the user's system.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore with no suspicious content; safe.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no suspicious content; safe.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vencord.install` contains only a `post_install()` function that prints plain-text setup instructions to the user. There are no commands executed, no network requests, no file system operations, no obfuscated or encoded content. The instructions describe legitimate post-installation steps for enabling the Vencord extension across different browsers (Vesktop, Chromium-based browsers, Firefox, and Zen). This is standard AUR packaging practice for packages that require manual user configuration after installation.
</details>
<evidence></evidence>
<summary>Contains only benign setup instructions, no dangerous operations.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Contains only benign setup instructions, no dangerous operations.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices: it fetches the source from the official GitHub repository using a pinned version tag and a SHA-256 checksum, installs dependencies with `pnpm install --frozen-lockfile`, builds the project with `pnpm buildStandalone` and `pnpm buildWeb`, and copies the resulting artifacts into the package directory. There are no unusual network requests, encoded commands, or unexpected file operations. The only external reference is the upstream GitHub URL, which is appropriate. The use of an install script (`vencord.install`) is normal, but that file is not part of this analysis. No signs of obfuscation, backdoors, or data exfiltration are present in the provided PKGBUILD.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with standard build and install steps.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with standard build and install steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,702
  Completion Tokens: 1,982
  Total Tokens: 14,684
  Total Cost: $0.002918
  Execution Time: 43.06 seconds

Final Status: SAFE


No issues found.
