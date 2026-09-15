---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13447
completion_tokens: 7114
total_tokens: 20561
cost: 0.00130958100
execution_time: 130.04
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T19:27:48Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config pointing to official repo.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security issues.
---

mindustry-server is built from mindustry
Materializing mindustry-server from local mirror...
Materialized mindustry-server
Analyzing mindustry-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes its global/top-level scope. The top-level code here consists of ordinary variable assignments, the `source` array, `sha256sums`, and a loop that uses `eval` to dynamically define `package_*()` functions from already-defined `_package_common`, `_package_mindustry`, and `_package_mindustry-server` function bodies. No package function is invoked, no network command runs, and no file-modifying operation executes during this step. The `prepare()`, `build()`, and packaging functions are not executed by `makepkg --printsrcinfo` and are out of scope for this gate.

The `eval` usage is worth noting, but it only assembles function definitions from static, in-file shell function text. It is a known split-package pattern and does not execute attacker-controlled payloads during sourcing.
</details>
<evidence>

</evidence>
<summary>Top-level execution only defines functions; no malicious code runs during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level execution only defines functions; no malicious code runs during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR Git repository. It uses the pattern `*` to ignore all files, then explicitly un-ignores `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is a normal and expected configuration to ensure only the essential packaging files are tracked in version control. There is no suspicious content, no commands, no network requests, no obfuscation, and no deviation from standard practices.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore; no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward configuration file for nvchecker, a tool used to monitor upstream version updates. It points to the official Mindustry Git repository on GitHub, with a prefix of "v" for version tags. There are no embedded commands, obfuscation, network redirects, or unexpected operations. The file serves its stated purpose without introducing any security risks.
</details>
<evidence></evidence>
<summary>Standard nvchecker config pointing to official repo.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config pointing to official repo.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch package metadata file (.SRCINFO) describing the `mindustry` and `mindustry-server` packages. It declares upstream sources from the official GitHub repositories of the project (Anuken/Mindustry and Anuken/Arc), pinned to version tags with valid sha256sums. No suspicious network destinations, no obfuscated or encoded content, no dangerous commands, and no unexpected file operations are present. The content is purely declarative and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR split-package conventions. Source tarballs are fetched via HTTPS from the official GitHub repositories, and both are pinned with SHA-256 checksums, ensuring integrity at download time. Build steps use Gradle, sed, and icns2png – all legitimate build tools. The `eval` loop that constructs per‑package functions is a well‑known technique for split PKGBUILDs; it extracts the body of helper functions (defined earlier in the script) and does not introduce any untrusted or obfuscated code. The wrapper script created for the binary merely selects the appropriate Java runtime from available OpenJDK installations, which is normal for a Java-based application. No suspicious network requests, encoded payloads, or system modifications outside the package install directory are present. The file is consistent with a legitimate upstream package and shows no evidence of a supply‑chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,447
  Completion Tokens: 7,114
  Total Tokens: 20,561
  Total Cost: $0.001310
  Execution Time: 130.04 seconds

Final Status: SAFE


No issues found.
