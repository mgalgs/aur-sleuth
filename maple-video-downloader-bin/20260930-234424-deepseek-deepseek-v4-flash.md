---
package: maple-video-downloader-bin
pkgver: 1.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12527
completion_tokens: 10049
total_tokens: 22576
cost: 0.00256236750
execution_time: 429.76
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-30T23:44:24Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with pinned upstream sources and checksums; no signs of malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard prebuilt binary package with pinned checksums, no malicious behavior."
---

Materializing maple-video-downloader-bin from local mirror...
Materialized maple-video-downloader-bin
Analyzing maple-video-downloader-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only top-level statements. In this file, the top-level content consists solely of variable assignments, the `source` and `sha256sums` arrays, and a `package()` function definition. No command substitutions, backticks, `eval`, `curl`, `wget`, or other executable commands appear at global scope. The `package()` body is not executed during `--printsrcinfo`, and the launcher/desktop/SVG content inside it is out of scope for this gate. No malicious top-level behavior is present.
</details>
<evidence></evidence>
<summary>No top-level malicious code; only variable assignments and function definition.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only variable assignments and function definition.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .gitignore used in Arch User Repository (AUR) package repositories. It only excludes common build artifacts such as the `pkg/` and `src/` directories created by makepkg, as well as generated package files matching `*.pkg.tar.*`.

There is no executable code, no network access, no obfuscation, and no file operation that affects anything outside normal packaging workflow. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR build artifacts; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for a prebuilt binary package. It declares the package name, version, upstream URL, architecture, dependencies, and a source tarball with a pinned version and a separate LICENSE file. The only network sources are the package's own upstream GitHub release tarball and the corresponding LICENSE file from the same repository. Both sources have pinned `sha256sums`, so the files are integrity-checked against fixed hashes. No unexpected commands, obfuscated code, or suspicious file operations are present. The metadata is consistent with ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>Standard package metadata with pinned upstream sources and checksums; no signs of malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with pinned upstream sources and checksums; no signs of malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard prebuilt-binary package. It downloads a tarball and a LICENSE file from the project&apos;s own GitHub releases, with pinned SHA-256 checksums for both sources. The package() function installs files only under $pkgdir, creates a small launcher wrapper and desktop entry using quoted heredocs, installs an SVG icon, and copies the license file. No obfuscated commands, suspicious network endpoints, data exfiltration, or execution of downloaded code outside normal packaging steps were found.

The use of `install -Dm755 /dev/stdin` with heredocs is an ordinary way to create text files during packaging. The wrapper script simply sets an environment variable and executes the installed application. The SVG content is static icon data and is not executed. There is no evidence of injected malicious code or behavior outside the package&apos;s stated purpose.
</details>
<evidence></evidence>
<summary>Safe: standard prebuilt binary package with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard prebuilt binary package with pinned checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,527
  Completion Tokens: 10,049
  Total Tokens: 22,576
  Total Cost: $0.002562
  Execution Time: 429.76 seconds

Final Status: SAFE


No issues found.
