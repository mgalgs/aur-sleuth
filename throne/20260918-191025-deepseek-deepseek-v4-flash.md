---
package: throne
pkgver: 1.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11313
completion_tokens: 2461
total_tokens: 13774
cost: 0.000795515
execution_time: 62.58
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T19:10:25Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: throne.sh
    status: safe
    summary: Minimal launcher script with no malicious behavior; safe.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for legitimate GUI proxy utility.
---

Materializing throne from local mirror...
Materialized throne
Analyzing throne AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global/top-level scope consists entirely of static variable and array assignments (pkgname, pkgver, source, sha256sums, etc.). There are no command substitutions, function calls, or any executable statements at the top level. Therefore, sourcing this file for `makepkg --printsrcinfo` will not execute any potentially malicious code. The SHA256 checksum entry of &#39;SKIP&#39; for the VCS source is a standard practice and does not trigger any execution during this step.  
</details>
<evidence></evidence>
<summary>No executable code at global scope, safe for parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at global scope, safe for parsing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, throne.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file for the `throne` package. It declares the package name, version, dependencies, and three source entries: a tarball from the official GitHub repository (with a pinned checksum), an auxiliary shell script `throne.sh` (also checksummed), and a VCS source (`routeprofiles.git`) which correctly uses `SKIP` for its checksum as required by VCS sources. There are no suspicious URLs, no obfuscated commands, no unusual system modifications, and no attempt to fetch or execute unchecked external code. The file follows normal AUR packaging conventions and contains no signs of supply-chain tampering.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, throne.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal launcher script that simply executes the main application binary installed at `/usr/lib/throne/Throne`, passing along any command-line arguments. There is no network activity, no encoded or obfuscated content, no file manipulation, and no execution of untrusted downloaded code. The `exec` usage is standard practice for wrapper scripts. The quoted `"$@"` correctly preserves arguments and contains no injection risk from the fixed command string itself. Nothing in this script deviates from ordinary packaging conventions or indicates malicious behavior.
</details>
<evidence></evidence>
<summary>Minimal launcher script with no malicious behavior; safe.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed throne.sh. Status: SAFE -- Minimal launcher script with no malicious behavior; safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD describes a standard build process for the `throne` GUI proxy utility. All sources originate from the project&#39;s own GitHub organization (throneproj). The VCS source (`routeprofiles.git`) has `SKIP` checksum, which is normal for VCS packages and not an indicator of malice.  

The `prepare()` function runs `go install google.golang.org/protobuf/cmd/protoc-gen-go@latest` and `go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest` to fetch tools from the official Go module proxy. While this is an unpinned dependency fetch, it is a common practice in Go-based builds for code generation and does not exfiltrate data or execute attacker-controlled code from an unexpected host. The rest of the script performs typical CMake and Go compilation, with no suspicious network requests, obfuscated commands, or file operations outside the package&#39;s scope.  

No evidence of injection, backdoors, data exfiltration, or supply-chain tampering was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for legitimate GUI proxy utility.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for legitimate GUI proxy utility.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,313
  Completion Tokens: 2,461
  Total Tokens: 13,774
  Total Cost: $0.000796
  Execution Time: 62.58 seconds

Final Status: SAFE


No issues found.
