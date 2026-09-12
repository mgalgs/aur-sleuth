---
package: cura-bin
pkgver: 5.13.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12728
completion_tokens: 1904
total_tokens: 14632
cost: 0.001465188816
execution_time: 57.0
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T03:14:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream release and checksums; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD with verified checksums; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: UltiMaker-Cura
    status: safe
    summary: Standard wrapper script, no security issues.
---

Materializing cura-bin from local mirror...
Materialized cura-bin
Analyzing cura-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions in its global scope (pkgname, pkgver, source, sha512sums, etc.). There are no command substitutions, backticks, eval, or any other executable code at the top level. The `prepare()` and `package()` functions are defined but are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No executable code in global scope; safe to source for --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; safe to source for --printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It declares a prebuilt AppImage from the project's official Ultimaker/Cura GitHub release, pins an exact version (5.13.0), and provides SHA-512 checksums for both source entries. No suspicious commands, network endpoints, encoding, or file operations are present.

The second source entry, `UltiMaker-Cura`, is a local source file name commonly paired with a `prepare()` step or a companion file in the AUR repository; the .SRCINFO itself contains no executable logic and does not indicate malicious behavior. While prebuilt binaries are inherently a trust consideration, the declared source matches the upstream project and is checksum-pinned, so this metadata alone poses no supply-chain red flags.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream release and checksums; no malicious behavior.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore, UltiMaker-Cura...
[1/4] Reviewing PKGBUILD, .gitignore, UltiMaker-Cura...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream release and checksums; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `cura-bin` follows standard AUR packaging practices for distributing a pre-built AppImage. It downloads the official AppImage from the Ultimaker GitHub releases, verifies it with a pinned SHA512 checksum, extracts it, and installs the files. The `prepare()` function uses `hardlink --content --maximize` (from `util-linux`, listed in `makedepends`) to deduplicate files, and `package()` moves the extracted files into place, removes a bundled library to use the system version, and installs a wrapper script and desktop entry. There are no obfuscated commands, unexpected network requests, or attempts to exfiltrate data. The extraction of the AppImage via `--appimage-extract` runs the application's own unpacking code, which is normal for AppImage-based packages. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AppImage PKGBUILD with verified checksums; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, UltiMaker-Cura...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD with verified checksums; no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package. It lists common build artifacts (`*.AppImage`, `*.pkg.tar*`, `*.zip`) and directories (`pkg`, `src`) that should be ignored by version control. There is no executable code, no network operations, no obfuscation, and no behavior that deviates from normal packaging practices. No security issues are present.</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing UltiMaker-Cura...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for UltiMaker-Cura:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple wrapper script that unsets an environment variable (`QT_STYLE_OVERRIDE`) and executes the application binary located at `/opt/ultimaker-cura/AppRun` with the provided arguments. There are no network requests, obfuscated code, file operations beyond running the application&#39;s own binary, or any other indicators of malicious behavior. This is standard packaging practice for self-contained applications installed in `/opt`.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed UltiMaker-Cura. Status: SAFE -- Standard wrapper script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,728
  Completion Tokens: 1,904
  Total Tokens: 14,632
  Total Cost: $0.001465
  Execution Time: 57.00 seconds

Final Status: SAFE


No issues found.
