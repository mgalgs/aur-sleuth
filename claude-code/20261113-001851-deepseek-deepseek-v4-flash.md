---
package: claude-code
pkgver: 2.1.323
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10323
completion_tokens: 3190
total_tokens: 13513
cost: 0.00150327
execution_time: 27.56
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-13T00:18:51Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker configuration file for version checking.
  - file: .SRCINFO
    status: safe
    summary: Standard binary AUR package metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with pinned checksums; no malicious indicators.
---

Materializing claude-code from local mirror...
Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD consists entirely of static variable declarations (`pkgname`, `pkgver`, etc.), array definitions (`arch`, `depends`, `source`, `sha256sums`), and a function definition (`package()`). There are no command substitutions (`$(...)` or backticks), no `eval` statements, and no direct invocations of `curl`, `wget`, or other external commands that would execute at source time. Therefore, running `makepkg --printsrcinfo` (which only sources the global scope) is safe—it will not trigger any malicious payload execution or data exfiltration.
</details>
<evidence></evidence>
<summary>Safe global scope, no executed commands.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe global scope, no executed commands.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration for `nvchecker`, a tool that checks for new upstream versions of software packages. It defines a regex source for the `claude-code` package, pointing to the official Claude downloads URL (`https://downloads.claude.ai/claude-code-releases/latest`) to extract a version string. This is standard and expected behavior for version tracking in AUR packaging. There is no malicious code, no network requests beyond the declared upstream, no obfuscation, and no system modification. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Benign nvchecker configuration file for version checking.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker configuration file for version checking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard binary AUR package for `claude-code`, an official tool from Anthropic. The .SRCINFO file only declares metadata: package name, version, dependencies, and source URLs. All sources point to `downloads.claude.ai`, the project's own upstream domain. The two platform-specific binary tarballs have pinned SHA256 checksums. The only SKIP checksum is for a legal document (`cc-legal`), which is a common and acceptable practice for documentation. No build script, no shell commands, no obfuscation, and no suspicious external network requests are present. The file is purely declarative metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard binary AUR package metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard binary AUR package metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package recipe for the upstream `claude-code` binary.  
- All binary sources are fetched from the official `downloads.claude.ai` domain and pinned with specific SHA-256 checksums.  
- The `package()` function installs the prebuilt binary into `/opt/claude-code/bin/` and creates a thin wrapper in `/usr/bin/` that sets environment variables (`DISABLE_UPDATES`, `DISABLE_INSTALLATION_CHECKS`) to suppress upstream self-update checks — a routine packaging decision for software that bundles its own updater.  
- There is no obfuscated code, no extraneous network requests, no `eval`, no `curl|bash`, and no manipulation of data outside the package’s own scope.  

The only deviation from ideal packaging is the `SKIP` checksum on the legal-document source, which is not malicious and is common in practice. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard binary package with pinned checksums; no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with pinned checksums; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,323
  Completion Tokens: 3,190
  Total Tokens: 13,513
  Total Cost: $0.001503
  Execution Time: 27.56 seconds

Final Status: SAFE


No issues found.
