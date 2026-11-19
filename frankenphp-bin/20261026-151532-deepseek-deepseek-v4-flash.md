---
package: frankenphp-bin
pkgver: 1.13.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9556
completion_tokens: 1432
total_tokens: 10988
cost: 0.001130220
execution_time: 21.86
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 3
injection_attempts: 0
date: 2026-10-26T15:15:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
---

Materializing frankenphp-bin from local mirror...
Materialized frankenphp-bin
Analyzing frankenphp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments at the top level. All source URLs are constructed using the package version string `$pkgver` which is defined within the PKGBUILD itself. There are no command substitutions, backticks, or invocations of `curl`, `wget`, `eval`, or any other commands that would execute during sourcing. The `sha256sums` are set to `&apos;SKIP&apos;`, which is a benign value. No code runs outside of function definitions, so `makepkg --printsrcinfo` will not execute any malicious payload.
</details>
<evidence></evidence>
<summary>Top-level scope contains no executable code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains no executable code.
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE::https://raw.githubusercontent.com/php/frankenphp/refs/tags/v1.13.3/LICENSE, frankenphp-1.13.3-x86_64::https://github.com/php/frankenphp/releases/download/v1.13.3/frankenphp-linux-x86_64, frankenphp-1.13.3-aarch64::https://github.com/php/frankenphp/releases/download/v1.13.3/frankenphp-linux-aarch64
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard metadata for the frankenphp-bin AUR package. It declares the package name, version, description, upstream URL, and architecture-specific sources pointing to the official GitHub releases of the frankenphp project. All checksums are set to `SKIP`, which is common for binary packages and not considered a security issue by itself. There are no executable commands, obfuscated code, unexpected network requests, or any other signs of malicious activity. The file is a straightforward metadata description used by AUR helpers.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads precompiled binaries from the official frankenphp GitHub releases page, which is the legitimate upstream source. The only operations in the package() function are installing the binary and license file into standard locations. The checksums are set to SKIP with an explanatory comment about upstream changing blobs after release — while this reduces reproducibility, it is not a malicious action and is a common practice in AUR binary packages. There are no obfuscated commands, no eval/injection, no unusual network requests, and no exfiltration of data. The file follows standard AUR packaging conventions and shows no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package's git repository. It lists common build artifacts and source directories (`/pkg/`, `/src/`, `/frankenphp-*`) and a license file (`/LICENSE`) that should be excluded from version control. There are no network requests, encoded commands, or any other malicious content. The file is part of the normal packaging workflow and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,556
  Completion Tokens: 1,432
  Total Tokens: 10,988
  Total Cost: $0.001130
  Execution Time: 21.86 seconds

Final Status: SAFE


No issues found.
