---
package: run0-sudo-shim-git
pkgver: 1.4.2.r0.g9fa985d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7681
completion_tokens: 5017
total_tokens: 12698
cost: 0.001612065
execution_time: 46.8
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T23:03:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; no malicious behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package; no malicious or suspicious behavior found.
---

Materializing run0-sudo-shim-git from local mirror...
Materialized run0-sudo-shim-git
Analyzing run0-sudo-shim-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable and array assignments (pkgname, pkgver, pkgdesc, arch, url, license, depends, makedepends, provides, conflicts, source, sha256sums). No command substitution ($(...) or backticks), no eval, no curl/wget, and no other direct command execution is present in the code that runs when makepkg sources the file.

The functions pkgver(), build(), and package() are defined but not executed during makepkg --printsrcinfo, putting them out of scope for this specific safety gate. The source definition uses the standard VCS syntax for a -git package, and the checksum is set to SKIP, which is explicitly called out as standard behavior and not a security concern. There is no mechanism in this top-level scope to download, exfiltrate data, or execute arbitrary payloads.
</details>
<evidence></evidence>
<summary>Global scope declarative, no code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope declarative, no code execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard AUR package metadata. It declares a VCS source (`git+https://github.com/GrimmTheShrimp/run0-sudo-shim`) with `sha256sums = SKIP`, which is normal and required for `-git` packages. The `provides = sudo` and `conflicts = sudo` entries reflect the package description and upstream project intent, and are packaging metadata rather than malicious behavior. No suspicious commands, network exfiltration, obfuscated code, or unexpected file operations are present. The file is a metadata manifest only and poses no supply-chain risk by itself.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; no malicious behavior present.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; no malicious behavior present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a `-git` package. It clones the package's stated upstream repository from GitHub, builds it with `cargo build --release`, and installs the resulting binary, completions, and manpage into the package directory. There are no network requests beyond the declared upstream git source, no encoded or obfuscated commands, no unexpected file operations, and no execution of downloaded scripts.

The package intentionally provides and conflicts with `sudo`, installing its binary as `/usr/bin/sudo`; this is clearly described in the package description and is the application's stated purpose, not malicious behavior. The `SKIP` checksum is expected for a VCS source and the un-pinned git reference is normal for `-git` packages. The build and install steps are conventional.
</details>
<evidence>
</evidence>
<summary>
Standard AUR git package; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,681
  Completion Tokens: 5,017
  Total Tokens: 12,698
  Total Cost: $0.001612
  Execution Time: 46.80 seconds

Final Status: SAFE


No issues found.
