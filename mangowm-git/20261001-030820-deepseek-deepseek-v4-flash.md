---
package: mangowm-git
pkgver: 0.17.4.r2.ge979638
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10038
completion_tokens: 1613
total_tokens: 11651
cost: 0.000557088
execution_time: 64.98
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T03:08:20Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD; no malicious behavior detected.
  - file: LICENSE
    status: safe
    summary: License file only; no suspicious or malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR git package metadata; no malicious behavior detected.
---

Materializing mangowm-git from local mirror...
Materialized mangowm-git
Analyzing mangowm-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only variable/function definitions at the global scope. `makepkg --printsrcinfo` sources the file, which executes top-level assignments such as `pkgname`, `source`, `md5sums`, and `options`, but none of these contain command substitution or other executable side effects. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are defined but not invoked during `--printsrcinfo`, so their contents are out of scope for this gate.

The `source` entry points to the package&#39;s own upstream GitHub repository and uses `md5sums=(SKIP)`. While this is unpinned and not verified, it is not a threat at this step because no source is fetched or executed by `makepkg --printsrcinfo`. No suspicious network requests, obfuscated code, or dangerous top-level operations are present.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD scope only defines variables/functions; no executable side effects during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope only defines variables/functions; no executable side effects during --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR VCS package definition for the `mangowm-git` Wayland compositor. It clones the upstream GitHub repository, builds it with meson/ninja, and installs into the package directory. No suspicious network destinations, obfuscated commands, or unexpected system modifications are present.

The `md5sums=(&apos;SKIP&apos;)` entry is expected for a `-git` package and is not evidence of malice. The source URL points to the project&apos;s own upstream repository, and the build/install steps are normal packaging operations. There is no use of `eval`, `base64`, `curl`, `wget`, or any code execution outside the declared build process.

The package is unpinned because it tracks the upstream git HEAD, which is a common and accepted AUR practice for VCS packages. This is a supply-chain hygiene consideration, not a sign of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, LICENSE...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD; no malicious behavior detected.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a license text only. It is the standard Arch Linux Contributors permissive license notice (similar to ISC/BSD). It contains no executable code, no shell commands, no network operations, no file manipulations, and no obfuscated content. There is no evidence of malicious behavior or supply-chain injection. The only content is copyright and permission/disclaimer language.
</details>
<evidence></evidence>
<summary>License file only; no suspicious or malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed LICENSE. Status: SAFE -- License file only; no suspicious or malicious behavior found.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a `-git` package. It defines the package name, description, version, URL, dependencies, and an unpinned VCS source (`git+https://github.com/mangowm/mango.git`). There are no install scripts, no build commands, no network operations beyond declaring the upstream source, and no encoded or obfuscated content. The `md5sums = SKIP` entry is normal and expected for a VCS package. The dependency/conflict entries, including unusual names like `mangowc` and `mangowc-wllonly-git`, may reflect upstream naming choices or packaging history, but they do not indicate malicious behavior. No evidence of supply-chain tampering, exfiltration, backdoors, or suspicious code execution exists in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR git package metadata; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR git package metadata; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,038
  Completion Tokens: 1,613
  Total Tokens: 11,651
  Total Cost: $0.000557
  Execution Time: 64.98 seconds

Final Status: SAFE


No issues found.
