---
package: epic-games-launcher-bin
pkgver: 0.96.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9279
completion_tokens: 1556
total_tokens: 10835
cost: 0.001127581
execution_time: 44.11
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T11:03:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official upstream source and pinned checksum; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard, checksum-pinned AUR bin package; source from official Epic domain; no malicious behavior found.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable and array definitions (e.g., `pkgname`, `source`, `sha256sums`, etc.) and function definitions (`prepare()`, `package()`). There are no command substitutions (`$()`, backticks), `eval`, or any other code execution constructs that would run during `makepkg --printsrcinfo`. The function bodies are not executed at this stage. Therefore, sourcing the PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard AUR package metadata for the Epic Games Launcher binary package. The single source is downloaded from an official Epic Games content distribution domain (`content-download-egs.distro.on.epicgames.com`), which matches the package's declared upstream. The source has a concrete SHA-256 checksum rather than `SKIP`, so the download is pinned and verifiable. The dependencies, options, and `noextract` directive are all consistent with packaging an official AppImage for Arch Linux.

There are no network requests to unexpected hosts, no executable code, no obfuscation, and no file operations or post-install behavior defined here. The file merely declares build metadata consumed by `makepkg`. No supply-chain red flags or malicious behavior are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with official upstream source and pinned checksum; no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official upstream source and pinned checksum; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package for the official Epic Games Launcher. The source is downloaded from Epic's own content distribution domain (`content-download-egs.distro.on.epicgames.com`) and the sha256 checksum is pinned to a concrete hash rather than `SKIP`, so the download is verifiable. The `prepare()` step extracts the AppImage with `7z` and the `package()` function installs the extracted binaries, libraries, desktop entry, icons, and license files into the package directory — all ordinary packaging operations.
The only mildly unusual construct is `install -Dm755 /dev/stdin` paired with a heredoc, which merely writes the launcher wrapper script (setting `EGL_DISABLE_SELF_UPDATE=1` and exec'ing the real binary). This is a common idiom for generating small wrapper files and performs no hidden decoding, network activity, or system modification outside `${pkgdir}`. No obfuscation, suspicious downloads, eval/base64 usage, or data exfiltration is present. The launcher's own self-update/phone-home behavior is upstream application functionality, not injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard, checksum-pinned AUR bin package; source from official Epic domain; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard, checksum-pinned AUR bin package; source from official Epic domain; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,279
  Completion Tokens: 1,556
  Total Tokens: 10,835
  Total Cost: $0.001128
  Execution Time: 44.11 seconds

Final Status: SAFE


No issues found.
