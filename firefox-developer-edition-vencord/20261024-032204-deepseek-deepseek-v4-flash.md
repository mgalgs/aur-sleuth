---
package: firefox-developer-edition-vencord
pkgbase: vencord
pkgver: 1.15.13
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12641
completion_tokens: 2029
total_tokens: 14670
cost: 0.001519609
execution_time: 49.41
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T03:22:03Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no suspicious content.
  - file: vencord.install
    status: safe
    summary: Informational install script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
---

firefox-developer-edition-vencord is built from vencord
Materializing firefox-developer-edition-vencord from local mirror...
Materialized firefox-developer-edition-vencord
Analyzing firefox-developer-edition-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global/top-level scope contains only static variable assignments (pkgname, pkgbase, pkgver, source, sha256sums, etc.) with no command substitutions, function calls, or any code that could execute during sourcing. No curl, wget, eval, or other dangerous constructs are present at the top level. The prepare(), build(), check(), and package_* functions are not run by `makepkg --printsrcinfo` and are therefore out of scope for this gate. Running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, .SRCINFO...
[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file follows standard AUR packaging practices. It ignores all files except the essential package metadata files (`.SRCINFO`, `PKGBUILD`, `vencord.install`, and the `.gitignore` itself). No malicious or unusual patterns are present. The file is used only to manage version control tracking and has no executable or network-related content.</details>
<evidence></evidence>
<summary>Standard AUR gitignore file, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore file, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for the Vencord package (the cutest Discord client mod) and its browser-specific variants. The source points to the official Vencord GitHub repository pinned to a specific tag (`v1.15.13`) with a checksum provided. Dependencies are normal build tools (git, nodejs, pnpm) and runtime dependencies (vesktop for the main package, browser packages for extensions). There is no obfuscation, no unexpected network requests, and no dangerous commands. The install field references a separate `vencord.install` file, which is a standard AUR practice. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO, no suspicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no suspicious content.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vencord.install` is a standard Arch Linux package installation script that only contains a `post_install()` function printing user instructions. It echoes a multiline string with setup steps for Vesktop, Chromium browsers, Firefox, and Zen. No commands are executed, no files are downloaded or modified, and no network requests are made. The content is entirely informational and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Informational install script, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Informational install script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Node.js project. The source is fetched from the official Vencord GitHub repository at a pinned tag (`v1.15.13`) with a valid SHA256 checksum. The `prepare()` and `build()` functions only run the project's own `pnpm install --frozen-lockfile` and `pnpm buildStandalone` / `pnpm buildWeb` commands, which are expected upstream build steps. The package functions install files into standard system directories (licenses, documentation, browser extension paths). There are no suspicious network requests, encoded commands, obfuscation, or file operations that deviate from the package's stated purpose. The referenced `vencord.install` script is not present in this file, so it cannot be evaluated here, but no red flags are visible within this PKGBUILD.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,641
  Completion Tokens: 2,029
  Total Tokens: 14,670
  Total Cost: $0.001520
  Execution Time: 49.41 seconds

Final Status: SAFE


No issues found.
