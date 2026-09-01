---
package: mullvad-browser-bin
pkgver: 15.0.21
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 57409
completion_tokens: 3302
total_tokens: 60711
cost: 0.00468703186
execution_time: 43.89
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 207
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-01T19:01:02Z
file_verdicts:
  - file: .hooks
    status: safe
    summary: Standard packaging hook extracting changelog from upstream tarball.
  - file: .SRCINFO
    status: safe
    summary: Legitimate metadata, no malicious content.
  - file: mullvad-browser.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
  - file: mullvad-browser.changelog
    status: safe
    summary: Changelog file with no executable or suspicious content.
  - file: mullvad-browser.sh
    status: safe
    summary: Clean launcher script, no security issues found.
---

Cloning https://aur.archlinux.org/mullvad-browser-bin.git...
Cloned mullvad-browser-bin
Analyzing mullvad-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, arrays, and comments in its global scope. No command substitutions, function calls, or dangerous commands (e.g., curl, wget, eval) are executed during sourcing. The `source` array fetches a tarball from the official Tor Project distribution (dist.torproject.org) and includes two local files (mullvad-browser.sh and mullvad-browser.desktop). The `pkgver()` function is not defined, so only the global scope runs. The `package()` function is present but is not executed by `makepkg --nobuild --noprepare` or `makepkg --printsrcinfo`. The SKIP checksum on the `.asc` signature file is standard practice and not a security concern. All operations are consistent with legitimate AUR packaging, and no supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://dist.torproject.org/mullvadbrowser/15.0.21/mullvad-browser-linux-x86_64-15.0.21.tar.xz.asc
Reviewing the 6 file(s) in the AUR repository. The 207 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, .hooks...
LLM auditresponse for .hooks:
<security_assessment>
<decision>SAFE</decision>
<details>
The script sources the PKGBUILD to obtain the version variable, then extracts a specific file (ChangeLog.txt) from the upstream tarball and renames it. This is a standard packaging practice to include a changelog in the package. There is no network activity, obfuscation, or execution of untrusted code. The file performs only file operations on the package's own source archive.
</details>
<evidence>
</evidence>
<summary>Standard packaging hook extracting changelog from upstream tarball.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, .hooks, mullvad-browser.changelog...
[1/6] Reviewing .SRCINFO, PKGBUILD, mullvad-browser.changelog...
+ Reviewed .hooks. Status: SAFE -- Standard packaging hook extracting changelog from upstream tarball.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares upstream sources from the official Tor Project distribution server (`dist.torproject.org`), a valid PGP signing key, and checksums for all files except the detached signature (which is normal). There are no embedded commands, obfuscated content, suspicious URLs, or any code—it is purely declarative package metadata. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Legitimate metadata, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, mullvad-browser.changelog, mullvad-browser.desktop...
[2/6] Reviewing PKGBUILD, mullvad-browser.changelog, mullvad-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Legitimate metadata, no malicious content.
LLM auditresponse for mullvad-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Mullvad Browser. It contains only desktop entry metadata (Name, Comment, Categories, etc.), localized strings, and desktop actions that launch the browser with specific flags (`--new-window`, `--private-window`, `--ProfileManager`). No executable code, network requests, obfuscation, or system modifications are present. The file is consistent with normal packaging practices for a graphical application.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, mullvad-browser.changelog, mullvad-browser.desktop, mullvad-browser.sh...
[3/6] Reviewing PKGBUILD, mullvad-browser.changelog, mullvad-browser.sh...
+ Reviewed mullvad-browser.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary package. It downloads the official Mullvad Browser tarball from the Tor Project's distribution server (`dist.torproject.org`), which is a legitimate upstream source. The package function performs routine installation steps: copying files, setting permissions, installing desktop files, icons, license links, and configuration files (including disabling automatic updates and setting distribution preferences). There are no obfuscated commands, no unexpected network requests, no execution of external scripts, and no modifications outside the package's own directories. The only `SKIP` checksum is for the detached signature file, which is acceptable. No evidence of malicious code injection or supply-chain attack is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing mullvad-browser.changelog, mullvad-browser.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
LLM auditresponse for mullvad-browser.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mullvad-browser.changelog` is a standard changelog documenting version history, bug fixes, and build system updates for the Mullvad Browser. It contains only human-readable text with no executable code, no network requests, no obfuscation, and no commands. There is no evidence of supply-chain attack or malicious behavior. The content is consistent with a normal software changelog file distributed as part of an AUR package.
</details>
<evidence></evidence>
<summary>Changelog file with no executable or suspicious content.</summary>
</security_assessment>

[5/6] Reviewing mullvad-browser.sh...
+ Reviewed mullvad-browser.changelog. Status: SAFE -- Changelog file with no executable or suspicious content.
LLM auditresponse for mullvad-browser.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a straightforward shell launcher script for the Mullvad Browser. It performs standard operations: setting environment variables, reading a user-configurable flags file (with proper comment stripping), and executing the browser binary. No network requests, obfuscated code, suspicious file operations, or system modifications outside the expected scope. The script does not contain any elements of a supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Clean launcher script, no security issues found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed mullvad-browser.sh. Status: SAFE -- Clean launcher script, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,409
  Completion Tokens: 3,302
  Total Tokens: 60,711
  Total Cost: $0.004687
  Execution Time: 43.89 seconds

Final Status: SAFE


No issues found.
