---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13299
completion_tokens: 8765
total_tokens: 22064
cost: 0.00137250708
execution_time: 239.14
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T11:19:00Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker configuration, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file for AUR packaging.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
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
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. In this file the top-level code consists solely of variable assignments, the `source` and `sha256sums` arrays, function definitions (`prepare`, `build`, `_package_*`), and a `for` loop that uses `eval` to define split-package functions from the file's own function bodies. The `eval` is a recognized AUR pattern for generating `package_*()` wrappers; its input is derived entirely from hardcoded local values (`pkgname`/`pkgbase` = "mindustry") and from `declare -f` output of functions defined in the same file, so no user-controlled or remote data reaches it, and it only defines functions — it does not execute their bodies.

No top-level statement performs a network request, downloads or runs a payload, writes to the filesystem, or exfiltrates data. The `source` array points to the package's legitimate upstream GitHub repositories and is only parsed, not fetched, during `--printsrcinfo`. All potentially interesting operations (sed in `prepare`, gradle in `build`, file installation in `package_*`) live inside functions that are not invoked by this command and are therefore out of scope for this gate.
</details>
<evidence></evidence>
<summary>Top-level scope only defines variables and functions; nothing executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables and functions; nothing executes.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration file. It defines a single source (`mindustry`) that checks the official Mindustry GitHub repository for new git tags prefixed with &quot;v&quot;. There is no executable code, no obfuscation, no unexpected network destinations, and no deviation from normal packaging practices. The file simply instructs a version-checking tool where to look for updates.
</details>
<evidence></evidence>
<summary>Standard version checker configuration, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker configuration, no security issues.
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata describing the package sources, dependencies, and checksums. It contains no executable code, no network requests, and no obfuscation. The sources are from the official GitHub repositories of the project (Anuken/Mindustry and Anuken/Arc) with pinned version tags and sha256sums provided. There is no evidence of any supply-chain attack or malicious behavior. The file follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file used to exclude certain files from version control. In this case, it ignores all files except `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is a common practice for AUR repositories to ensure only the essential packaging files are tracked. There is no executable code, no network requests, and no obfuscation. The file is benign and serves only to manage repository content.
</details>
<evidence></evidence>
<summary>Standard gitignore file for AUR packaging.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file for AUR packaging.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Java-based game server. Sources are fetched from the official GitHub repositories with pinned version tags and valid SHA256 checksums. The build process uses Gradle with no unexpected network activities. The launcher script iterates over available JDK installations to select a compatible version—this is normal and does not exfiltrate data. The `eval` pattern used to generate split-package functions is common in AUR PKGBUILDs and not malicious. No obfuscated code, suspicious downloads, or backdoors are present. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,299
  Completion Tokens: 8,765
  Total Tokens: 22,064
  Total Cost: $0.001373
  Execution Time: 239.14 seconds

Final Status: SAFE


No issues found.
