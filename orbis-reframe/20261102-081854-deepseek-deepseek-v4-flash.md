---
package: orbis-reframe
pkgver: 0.7.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13438
completion_tokens: 1909
total_tokens: 15347
cost: 0.001570296
execution_time: 36.47
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T08:18:53Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain ISC license text; no executable or malicious content detected.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with pinned source and checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified upstream source, no malicious behavior found.
  - file: system-ncnn.patch
    status: safe
    summary: Patch switches bundled ncnn to system library; no malicious behavior found.
---

Materializing orbis-reframe from local mirror...
Materialized orbis-reframe
Analyzing orbis-reframe AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions at the top-level scope. No command substitutions (`$()` or backticks), `eval`, `curl`, `wget`, or other potentially dangerous constructs appear outside of function bodies. The `source` array interpolation (`"$url/releases/download/v$pkgver/$pkgname-$pkgver-source.tar.xz"`) is a normal string assignment using predefined variables, not an execution of arbitrary code. Since `makepkg --printsrcinfo` only sources the top-level code and does **not** execute `prepare()`, `build()`, `check()`, or `package()`, there is no risk of malicious activity during this phase. All suspicious or dynamic content is confined to functions that are out of scope for this gate.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text ISC-style software license. It contains no executable code, network requests, file operations, obfuscated content, or any other behavior that could constitute a supply-chain attack. It is a standard permissive license declaration with no security implications.
</details>
<evidence>
</evidence>
<summary>
Plain ISC license text; no executable or malicious content detected.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, LICENSE, system-ncnn.patch...
[1/4] Reviewing .SRCINFO, PKGBUILD, system-ncnn.patch...
+ Reviewed LICENSE. Status: SAFE -- Plain ISC license text; no executable or malicious content detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It declares a source tarball from the project's own GitHub releases page with a pinned version and includes a sha256sum for both the tarball and a local patch. No suspicious commands, network behavior, obfuscated content, or file operations are present. The dependencies and optdependencies are consistent with the described application (an editor for Insta360 footage using Qt, Vulkan, ffmpeg, and ML libraries). There are no red flags indicating malicious or injected code.
</details>
<evidence>
</evidence>
<summary>
Standard package metadata with pinned source and checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, system-ncnn.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with pinned source and checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It downloads the application source from the project's official GitHub releases URL with a fixed `pkgver` and valid sha256 checksums. The `prepare()` function applies a local patch, `build()` runs ordinary CMake/Ninja configuration and compilation, `check()` runs the project's test suite with specific tests excluded for documented upstream reasons, and `package()` installs files into `$pkgdir`.

There is no obfuscated code, no unexpected network requests, no execution of downloaded scripts, and no suspicious file operations outside the package build/install scope. The only fetched content is the declared upstream source tarball, which is checksum-verified. No supply-chain red flags were found.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with verified upstream source, no malicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing system-ncnn.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified upstream source, no malicious behavior found.
LLM auditresponse for system-ncnn.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard patch that modifies the package's CMakeLists.txt so that the Arch build links against the system-installed ncnn library instead of bundling a private copy under `lib/orbis-reframe/`. It removes an `INSTALL_RPATH` property and the installation of ncnn's imported runtime artifacts and license file, replacing them with a comment that distributions such as Arch provide ncnn as a system library. These changes are consistent with normal distribution packaging practices and affect only where the application's own ncnn dependency is installed from. There are no suspicious commands, no network operations, no encoded/obfuscated content, and no changes to unrelated system files. Nothing in this patch indicates malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
Patch switches bundled ncnn to system library; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed system-ncnn.patch. Status: SAFE -- Patch switches bundled ncnn to system library; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,438
  Completion Tokens: 1,909
  Total Tokens: 15,347
  Total Cost: $0.001570
  Execution Time: 36.47 seconds

Final Status: SAFE


No issues found.
