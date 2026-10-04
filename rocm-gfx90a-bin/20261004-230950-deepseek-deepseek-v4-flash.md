---
package: rocm-gfx90a-bin
pkgver: 10.0.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18396
completion_tokens: 2771
total_tokens: 21167
cost: 0.0039589504
execution_time: 50.95
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-04T23:09:50Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned ROCm binary package; no malicious or suspicious behavior found.
  - file: REUSE.toml
    status: safe
    summary: Metadata configuration file; no security issue.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no malicious indicators.
---

Materializing rocm-gfx90a-bin from local mirror...
Materialized rocm-gfx90a-bin
Analyzing rocm-gfx90a-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD top-level scope contains only standard metadata variable assignments: pkgname, pkgver, arch, url, license, depends, provides, conflicts, optdepends, options, source, noextract, and sha256sums. There are no top-level command substitutions, no curl/wget/eval/base64 invocations, no network requests, and no file modifications that would execute during `makepkg --printsrcinfo`. The `prepare()` and `package()` functions are not executed by `makepkg --printsrcinfo`, so their contents are out of scope for this narrow gate and will be reviewed in the full audit later. The source URL points to AMD's official stable repo host and the tarball has a pinned sha256 checksum.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is standard metadata only; safe for printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is standard metadata only; safe for printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard open-source license (ISC-style) commonly used by Arch Linux Contributors. It contains only a copyright notice and permission terms, with no executable instructions, network requests, obfuscation, or any other malicious content. There is no evidence of a supply-chain attack or unsafe behavior.
</details>
<evidence></evidence>
<summary>Standard license file with no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[1/4] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard prebuilt-binary package for AMD ROCm. It downloads a single tarball from AMD's official stable repository (`stable.repo.amd.com`), pins a SHA-256 checksum, extracts it with bsdtar, and installs the contents under `/opt/rocm/core`. The package() function creates expected symlinks, an OpenCL ICD vendor file, an ld.so.conf.d entry, and a profile.d PATH script. There are no network fetch-and-execute steps, no encoded/obfuscated commands, no exfiltration, and no writes outside normal packaging destinations.

The only operations are routine archive extraction and installation of the package's own declared upstream content. No suspicious tools such as curl, wget, eval, base64, or git pull/reset appear. The pinned checksum and HTTPS source are good packaging hygiene. The plain-http `url` field is merely metadata and not a security concern. Overall, no evidence of injected malicious or supply-chain behavior.
</details>
<evidence>
</evidence>
<summary>
Standard pinned ROCm binary package; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, REUSE.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned ROCm binary package; no malicious or suspicious behavior found.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a REUSE configuration file (REUSE.toml) used to declare copyright and license information for various file patterns in the repository. It contains only metadata—no executable code, no network requests, no obfuscated commands, and no file operations. The content is entirely standard for REUSE compliance and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>Metadata configuration file; no security issue.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed REUSE.toml. Status: SAFE -- Metadata configuration file; no security issue.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is metadata for an AUR package (`rocm-gfx90a-bin`). It declares the package name, version, dependencies, provides, conflicts, and a single source tarball from `stable.repo.amd.com` (AMD's official repository). The source checksum (`sha256sums`) is provided and is not `SKIP`, meaning the source integrity is verified. There are no obfuscated commands, no network requests for unintended hosts, no encoded or dangerous content, and no file operations outside the scope of package metadata. The large number of `provides` and `conflicts` entries is unusual for a single binary package but is a packaging choice, not evidence of malware. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard package metadata; no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,396
  Completion Tokens: 2,771
  Total Tokens: 21,167
  Total Cost: $0.003959
  Execution Time: 50.95 seconds

Final Status: SAFE


No issues found.
