---
package: amf-amdgpu
pkgver: 26.10.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10022
completion_tokens: 1557
total_tokens: 11579
cost: 0.00046711616
execution_time: 31.91
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T15:24:27Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config for AMD AMF version checking
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no red flags.
  - file: PKGBUILD
    status: safe
    summary: Clean binary package from official AMD source.
---

Materializing amf-amdgpu from local mirror...
Materialized amf-amdgpu
Analyzing amf-amdgpu AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable assignments: package metadata (name, version, release, description, architecture, URL, license, dependencies, source URLs, checksums). There are no command substitutions, no eval calls, no network operations, and no file manipulations in the global scope. The source URLs point to the official AMD repository. The `package()` function, which contains file installation commands, is not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; only static definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; only static definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool that periodically checks for new upstream releases. It defines a regular expression to scrape version numbers from AMD's official AMF driver repository at `repo.radeon.com/amf/`. The `source = "regex"` and `sort_version_key = "parse_version"` are standard options for this tool. There is no code execution, no obfuscation, no network requests to unexpected hosts, and no file operations beyond what a version-checking tool would perform. It follows normal AUR/packaging automation practices.
</details>
<evidence></evidence>
<summary>Benign nvchecker config for AMD AMF version checking</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config for AMD AMF version checking
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, version, dependencies, and two source RPMs hosted on AMD's official repository (`repo.radeon.com`), along with their SHA-256 checksums. There are no obfuscated commands, no dynamic downloads, no suspicious operations, and no attempts to exfiltrate data or execute untrusted code. The sources are pinned to specific versioned RPMs with provided checksums, which is a normal and secure packaging practice.
</details>
<evidence></evidence>
<summary>Standard metadata file, no red flags.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no red flags.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD sources binary RPM packages directly from the official AMD repository (repo.radeon.com) over HTTPS and provides valid SHA256 checksums. The package() function extracts shared libraries from the RPM's opt/amf/lib64 and installs them into /usr/lib, along with a helper Python script (check_vcn.py) and a license file. The only modification to the script via `sed` is a path fix to account for Arch&#x27;s zstd firmware compression — a standard packaging compatibility tweak. There are no suspicious network requests, obfuscated code, dangerous commands (eval, curl, wget in unexpected contexts), file exfiltration, or backdoors. All operations are confined to the package&#x27;s own files and the expected installation directories. The PKGBUILD follows normal AUR packaging practices for a binary redistribution package.
</details>
<evidence>
</evidence>
<summary>Clean binary package from official AMD source.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean binary package from official AMD source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,022
  Completion Tokens: 1,557
  Total Tokens: 11,579
  Total Cost: $0.000467
  Execution Time: 31.91 seconds

Final Status: SAFE


No issues found.
