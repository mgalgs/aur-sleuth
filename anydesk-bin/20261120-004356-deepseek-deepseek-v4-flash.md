---
package: anydesk-bin
pkgver: 8.1.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8796
completion_tokens: 1607
total_tokens: 10403
cost: 0.00108090
execution_time: 15.22
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-20T00:43:55Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean binary repackaging with pinned checksums.
  - file: .SRCINFO
    status: safe
    summary: Metadata only, no malicious content.
---

Materializing anydesk-bin from local mirror...
Cloning https://aur.archlinux.org/anydesk-bin.git...
Cloned anydesk-bin
Analyzing anydesk-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD only defines standard variables (pkgname, pkgver, source arrays, checksums) and a package() function. The top-level global scope contains no command substitutions, no execution of external tools, no obfuscated code, and no dangerous operations. Running `makepkg --printsrcinfo` will only source these definitions, which is safe. All suspicious logic resides inside the package() function, which is not executed during metadata generation.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward binary repackaging of the official AnyDesk tarball. The sources are fetched from the official AnyDesk download site (`https://download.anydesk.com/linux/` and `/rpi/`) with pinned SHA256 checksums, ensuring integrity. The package() function only installs pre-existing files from the extracted tarball into the package directory without any dynamic code execution, network requests at build time, or obfuscated commands. The printed warning about the systemd service is a harmless informational message. No evidence of injected malicious code, backdoors, data exfiltration, or untrusted resource fetching was found.
</details>
<evidence>
</evidence>
<summary>Clean binary repackaging with pinned checksums.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Clean binary repackaging with pinned checksums.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file that describes the package properties, dependencies, and sources. It contains no executable code, scripts, or commands. All source URLs point to the official anydesk.com domain, which is the expected upstream for this package. Checksums are provided and pinned to specific SHA-256 hashes, so there is no SKIP or untracked source. There is no evidence of obfuscation, malicious payloads, or supply-chain attack indicators. The file is a standard AUR metadata descriptor and poses no security risk.
</details>
<evidence></evidence>
<summary>Metadata only, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,796
  Completion Tokens: 1,607
  Total Tokens: 10,403
  Total Cost: $0.001081
  Execution Time: 15.22 seconds

Final Status: SAFE


No issues found.
