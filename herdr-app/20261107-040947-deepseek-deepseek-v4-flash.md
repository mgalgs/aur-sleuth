---
package: herdr-app
pkgver: 0.1.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11570
completion_tokens: 1691
total_tokens: 13261
cost: 0.001360632
execution_time: 36.13
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T04:09:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources and no malicious behavior.
  - file: herdr-app.desktop
    status: safe
    summary: Standard desktop entry file; no security issues found.
---

Materializing herdr-app from local mirror...
Materialized herdr-app
Analyzing herdr-app AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, etc.), dependency arrays, source URLs, and checksum strings at the top level. There are no command substitutions, backticks, `eval`, network calls, or any other executable statements outside of the `prepare()`, `build()`, `check()`, and `package()` functions. Since `makepkg --printsrcinfo` only sources the global scope, none of the function bodies are executed. All top-level assignments use static strings or simple variable interpolation (e.g., `&quot;$pkgname-$pkgver.tar.gz::$url/...&quot;`), which is standard and benign. No malicious behavior can occur during this parsing step.
</details>
<evidence></evidence>
<summary>Safe to parse; no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to parse; no dangerous top-level code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, herdr-app.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard packaging metadata file for the Arch User Repository. It contains no executable code or instructions. The sources are downloaded from the official GitHub repositories (herdr-app and ghostty) at pinned versions with specific checksums (b2sums) provided, which is good supply-chain hygiene. All dependencies are standard libraries and utilities relevant to the application&#039;s purpose. There are no suspicious URLs, obfuscated content, or unexpected operations. The file is purely declarative and poses no security threat.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, herdr-app.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It fetches the upstream source tarball from GitHub (herdrdev/herdr-app) and a pinned ghostty submodule commit. All checksums are present and verified (b2sums are not SKIP). The build process uses `cargo build --frozen` and `cargo test --frozen`, which ensures no unintended network fetches beyond the declared sources. No obfuscated code, dangerous commands (eval, curl, wget), or unexpected file operations are present. The `package()` function only installs the built binary, a desktop file, an icon, and license files. There is no evidence of malicious behavior or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources and no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing herdr-app.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources and no malicious behavior.
LLM auditresponse for herdr-app.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the Herdr application. It declares the application name, comment, icon, and the `Exec=herdr-app` command used to launch the app. No suspicious network operations, obfuscated code, file manipulation, or system modifications are present. The file conforms to normal packaging/launcher conventions and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security issues found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed herdr-app.desktop. Status: SAFE -- Standard desktop entry file; no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,570
  Completion Tokens: 1,691
  Total Tokens: 13,261
  Total Cost: $0.001361
  Execution Time: 36.13 seconds

Final Status: SAFE


No issues found.
