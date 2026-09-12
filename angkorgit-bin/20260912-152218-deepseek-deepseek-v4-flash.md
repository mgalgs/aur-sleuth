---
package: angkorgit-bin
pkgver: 0.13.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12079
completion_tokens: 2036
total_tokens: 14115
cost: 0.00106499694
execution_time: 21.66
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T15:22:18Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Declarative config for version checking; no risk.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums
---

Materializing angkorgit-bin from local mirror...
Materialized angkorgit-bin
Analyzing angkorgit-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global scope consists solely of variable declarations (package name, version, URLs, license, dependencies, source arrays, checksums). There are no command substitutions, no invocations of external tools like curl, wget, or eval, and no data exfiltration or file manipulation at the top level. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print SRCINFO is safe.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for a Git repository. It ignores all files by default and then un-ignores specific files needed for an AUR package: `.nvchecker.toml`, `.gitignore`, `PKGBUILD`, and `.SRCINFO`. There is no executable code, no network requests, no obfuscation, and no system modifications. The file serves only to define version control behavior, which is harmless and expected.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.nvchecker.toml` file is a configuration for the `nvchecker` tool, used by the AUR maintainer to automatically detect new upstream releases. It specifies a GitHub source (`cheat2001/angkorgit`), instructs `nvchecker` to use the latest release, and sets a version prefix `v`. There is no executable code, no network request embedded in this file (it's declarative), and no malicious or obfuscated content. It is a standard, benign part of AUR maintenance automation.
</details>
<evidence></evidence>
<summary>Declarative config for version checking; no risk.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Declarative config for version checking; no risk.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR metadata. It declares a binary package (angkorgit-bin) that fetches sources from GitHub and raw.githubusercontent.com, all under the same user ("cheat2001"). Checksums are provided for all sources (none are `SKIP`), ensuring integrity. There is no embedded code, no dangerous commands, and no unexpected network destinations. The file itself contains no executable logic; it is purely declarative.

The choice of repository (a fork named "angkorgit") is unconventional but not malicious. The presence of checksums mitigates tampering concerns. The `options = !strip` is a packaging choice, not a security issue. No signs of supply-chain attacks are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR binary packaging practices. All source URLs point to the upstream GitHub repository (cheat2001/angkorgit) and its releases. Checksums are pinned for all sources, including the .deb file, ensuring download integrity. The package() function simply extracts the .deb's data archive and installs a README and license file. There is no execution of external code, no obfuscation, no unexpected network requests, and no modification of system files outside the package&apos;s scope. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned checksums</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,079
  Completion Tokens: 2,036
  Total Tokens: 14,115
  Total Cost: $0.001065
  Execution Time: 21.66 seconds

Final Status: SAFE


No issues found.
