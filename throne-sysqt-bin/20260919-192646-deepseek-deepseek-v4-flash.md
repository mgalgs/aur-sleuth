---
package: throne-sysqt-bin
pkgver: 1.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14430
completion_tokens: 16561
total_tokens: 30991
cost: 0.00190398208
execution_time: 381.59
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T19:26:46Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file, no suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious indicators.
  - file: Throne.desktop
    status: safe
    summary: Standard desktop entry file, no issues.
  - file: Throne.sh
    status: safe
    summary: Safe startup script with config migration.
  - file: PKGBUILD
    status: safe
    summary: Binary repackaging PKGBUILD with pinned checksum; no malicious behavior found.
---

Materializing throne-sysqt-bin from local mirror...
Materialized throne-sysqt-bin
Analyzing throne-sysqt-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function declarations at global scope. No command substitutions, backticks, eval, or other dynamic code execution that would run during `makepkg --printsrcinfo`. All potentially dangerous operations are inside `prepare()` and `package()` functions, which are not executed during this parsing step. The parameter expansion `${pkgver/[a-z]/-&amp;}` is purely string manipulation. Nothing here would execute malicious code while sourcing the PKGBUILD.
</details>
<evidence>
</evidence>
<summary>No dangerous global code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code execution.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard license file derived from the ISC license, with additional clauses specific to the Arch Linux packaging context (excluding binary files and patches). It contains only legal text and no executable code, network requests, obfuscation, or any behavior that could be considered malicious. There are no security concerns.
</details>
<evidence></evidence>
<summary>License file, no suspicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, LICENSE, Throne.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, Throne.desktop...
+ Reviewed LICENSE. Status: SAFE -- License file, no suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file defines standard package metadata for `throne-sysqt-bin`. All sources point to the official GitHub releases page of the Throne project, using HTTPS. Checksums are provided for all source files, and none are set to `SKIP`. No shell commands, obfuscation, or unexpected network destinations are present. The file follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious indicators.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, Throne.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious indicators.
[2/5] Reviewing PKGBUILD, Throne.desktop, Throne.sh...
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org .desktop entry file. It contains only metadata (name, icon, category, executable to launch) and does not perform any network operations, file modifications, or code execution beyond specifying the application's own binary (`Exec=throne`). There is no obfuscated code, suspicious commands, or deviation from normal packaging practices. No security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, Throne.sh...
+ Reviewed Throne.desktop. Status: SAFE -- Standard desktop entry file, no issues.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard startup wrapper for the Throne application. It correctly handles configuration directory setup, migrates data from a previous application (nekoray) if present, cleans up broken symlinks, and runs the application binary. All operations are confined to the user's XDG config directory and the application's own install path (/opt/Throne). There are no network requests, downloads of external code, obfuscated commands, or other indicators of a supply-chain attack. The script only uses standard shell utilities (cp, mkdir, mv, rm) and executes the expected application binary.
</details>
<evidence></evidence>
<summary>Safe startup script with config migration.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed Throne.sh. Status: SAFE -- Safe startup script with config migration.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary repackaging of the upstream Throne `.deb` from the project's own GitHub releases over HTTPS, with pinned `sha256` checksums for all fetched files. The `prepare()` function only extracts the Debian archive into `$srcdir` using `bsdtar`, and `package()` installs the resulting files into `$pkgdir` with standard `install` commands. There is no `eval`, no `curl`/`wget` piped to a shell, no obfuscated code, and no command that writes outside the expected build or package directories.
The unquoted `for f in $(find ...)` loop is a robustness concern rather than a security threat, since unusual filenames with whitespace could be mishandled. The `_appver` substitution is unusual but harmless for the declared `pkgver`. The referenced local `Throne.sh` and `Throne.desktop` files were not inspected here; nothing in this file exfiltrates data, fetches executable code from an unexpected host, or performs a malicious system modification.
</details>
<evidence></evidence>
<summary>Binary repackaging PKGBUILD with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Binary repackaging PKGBUILD with pinned checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,430
  Completion Tokens: 16,561
  Total Tokens: 30,991
  Total Cost: $0.001904
  Execution Time: 381.59 seconds

Final Status: SAFE


No issues found.
