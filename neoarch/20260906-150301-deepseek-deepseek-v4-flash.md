---
package: neoarch
pkgver: 3.1.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10084
completion_tokens: 1890
total_tokens: 11974
cost: 0.00110828816
execution_time: 26.88
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-06T15:03:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: No security issues in .SRCINFO metadata file.
  - file: neoarch.install
    status: safe
    summary: Standard post-install script adding Flathub remote.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code detected.
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and a single `package()` function at global scope. There is no top-level code that executes any commands, downloads, or performs any dangerous operations. The `source` array refers to the upstream GitHub archive, which is normal. The `sha256sums` are set to 'SKIP', but that is irrelevant for this gate because no sources are downloaded or verified during `--printsrcinfo`. All installation logic is inside the `package()` function, which is not executed during this step. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Sanjaya-Danushka/Neoarch/archive/refs/tags/v3.1.3.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, neoarch.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard package metadata for the AUR package `neoarch`, version 3.1.3, sourced from an official GitHub release tarball. There are no executable commands, obfuscated code, or remote network requests embedded in this file. The `sha256sums` entry is set to `SKIP`, which is a trust/hygiene choice but not inherently malicious per the guidelines. The file references a `neoarch.install` script, but its content is not present and not analyzed here. No evidence of supply-chain attack or malicious behavior is found in this file alone.
</details>
<evidence></evidence>
<summary>No security issues in .SRCINFO metadata file.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, neoarch.install...
+ Reviewed .SRCINFO. Status: SAFE -- No security issues in .SRCINFO metadata file.
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file `neoarch.install` contains a single function `post_install` that checks if `flatpak` is available and, if so, adds the Flathub remote repository for the current user using `flatpak remote-add`. This is a common convenience configuration for users who want to use Flatpak applications from the official Flathub repository. There is no evidence of malicious behavior such as data exfiltration, execution of untrusted code, obfuscation, or unexpected network requests. The destination URL (`https://flathub.org/repo/flathub.flatpakrepo`) is the standard official Flathub repository URL, which is entirely expected and safe. The script does not modify system files, run any dangerous commands, or introduce any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard post-install script adding Flathub remote.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed neoarch.install. Status: SAFE -- Standard post-install script adding Flathub remote.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a tarball from the project&#39;s own GitHub releases URL, extracts it, and installs files into /opt/neoarch/Neoarch with standard commands (install, cp, chmod, sed, ln). There are no obfuscated strings, no eval, no curl/wget to unexpected hosts, no data exfiltration, and no execution of fetched code at build time. The SKIP checksum is a common practice in AUR packages and is not, by itself, evidence of malice. The sed substitutions fix hardcoded testing paths to production paths and update icon references—normal packaging cleanup. No signs of injected malicious behavior are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,084
  Completion Tokens: 1,890
  Total Tokens: 11,974
  Total Cost: $0.001108
  Execution Time: 26.88 seconds

Final Status: SAFE


No issues found.
