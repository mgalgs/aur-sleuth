---
package: ampcode
pkgver: 0.0.1789920039_gafe14b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9876
completion_tokens: 4368
total_tokens: 14244
cost: 0.00066184272
execution_time: 93.48
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T19:20:39Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata with authenticated sources.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; pinned official binary; no signs of malicious behavior.
---

Materializing ampcode from local mirror...
Materialized ampcode
Analyzing ampcode AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines variables and functions at the top-level scope. No code is executed outside of function definitions. The `latestver()` and `package()` functions are defined but not called during sourcing. There is no top-level command substitution, network requests, or dangerous operations. Running `makepkg --printsrcinfo` will only source this file and parse metadata, which is safe.
</details>
<evidence>

</evidence>
<summary>No malicious code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It defines the package name, version, architecture, dependencies, and source URLs. All sources are fetched over HTTPS from the project&#39;s own domain (`static.ampcode.com`), and SHA256 checksums are provided for both architecture variants. There is no executable code, obfuscation, or unusual system operations. The file conforms to normal AUR packaging practices and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard metadata with authenticated sources.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata with authenticated sources.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in a git repository, commonly seen in AUR packages whose repositories carry PKGBUILD-related files. It ignores all files by default and then whitelists essential packaging files (`.SRCINFO`, `PKGBUILD`, `.install` scripts, patches, services, license files, etc.). There is no executable code, no network activity, no obfuscation, no file system mutation, and no reference to any external host or command. The file performs no action whatsoever; it only configures version-control ignore rules. Nothing in this file deviates from normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore whitelisting packaging files; no security concerns found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no security concerns found.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward package for Sourcegraph's Amp CLI. It downloads a prebuilt, per-architecture binary from the official `https://static.ampcode.com/cli/...` endpoint, and both `sha256sums_x86_64` and `sha256sums_aarch64` are pinned to specific hashes. The `package()` function only installs the matching binary into `/usr/bin/amp` using `install -Dm755`. There are no build steps, no post-install hooks, no execution of downloaded scripts, and no writes outside the package directory.

The `latestver()` helper uses `curl -fsS` against the project's own official HTTPS version endpoint and is not invoked during build or package steps; this is a conventional maintainer version-check helper, not a supply-chain risk. No obfuscated code, suspicious encoding, network exfiltration, or dangerous command usage was found. The proprietary prebuilt binary is a transparency consideration, but it is not evidence of malicious packaging by itself.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD; pinned official binary; no signs of malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; pinned official binary; no signs of malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,876
  Completion Tokens: 4,368
  Total Tokens: 14,244
  Total Cost: $0.000662
  Execution Time: 93.48 seconds

Final Status: SAFE


No issues found.
