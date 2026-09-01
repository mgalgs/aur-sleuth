---
package: claude-code
pkgver: 2.1.257
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 10445
completion_tokens: 2332
total_tokens: 12777
cost: 0.00110628098
execution_time: 132.02
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 2
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-01T19:02:30Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with safe upstream sources.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious behavior found.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments and function definitions (package() is defined but will not be executed). No top-level command substitutions, no pkgver() function, and no code that runs during sourcing. All source URLs point to the legitimate Claude Code distribution domains (code.claude.com and downloads.claude.ai) over HTTPS. The `--nobuild`/`--noprepare` flags ensure that only source fetching and PKGBUILD sourcing occur; no build or install steps run. The SKIP checksum on the legal file and the unpinned binary downloads are standard AUR practices and do not execute any malicious code during this narrow gate. There is no obfuscation, no suspicious network destinations, and no exfiltration or backdoor mechanisms.
</details>
<evidence></evidence>
<summary>No malicious code executes during sourcing or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during sourcing or source fetching.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository. The 2 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is purely declarative metadata for the `claude-code` AUR package. It defines the package name, version, architecture, dependencies, and source URLs with corresponding checksums.  

All binary sources (`linux-x64/claude` and `linux-arm64/claude`) are fetched from Anthropic's official domain (`downloads.claude.ai`) and have pinned SHA-256 checksums, which is a standard security best practice. The legal documentation source (`code.claude.com`) has a `SKIP` checksum, which is typical for frequently-updated documentation and does not indicate malice.  

No dangerous operations, obfuscation, system modifications, or unexpected network destinations are present. The file contains only static package declarations and cannot execute any code.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary-based package. The binary is downloaded from the official Anthropic domain (`downloads.claude.ai`), the license is fetched from the official documentation site (`code.claude.com`), and the SHA256 sums for the binary archives are provided and pinned. The wrapper script in `package()` merely sets environment variables to disable upstream self-update checks—a routine measure to prevent the application from bypassing the package manager—and then execs the installed binary. There is no obfuscated code, no suspicious network requests to unknown hosts, no attempt to exfiltrate data, no backdoors, and no modification of system files beyond the expected installation into `/opt/claude-code` and `/usr/bin`. The single `SKIP` checksum for the legal file is a hygiene concern (the source is a direct markdown URL with no hash pinned), but it is not malicious—AUR maintainers commonly skip checksums for non-executable documentation files. No genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with safe upstream sources.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with safe upstream sources.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a tool that checks for new upstream versions. It points to the official Claude AI downloads domain (`downloads.claude.ai`) and uses a regex source to parse version info. There is no code execution, no obfuscation, and no suspicious file operations. The regex &#39;.+&#39; is permissive but not malicious; it simply matches the response content for version extraction. The file is a standard packaging helper and shows no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,445
  Completion Tokens: 2,332
  Total Tokens: 12,777
  Total Cost: $0.001106
  Execution Time: 132.02 seconds

Final Status: SAFE


No issues found.
