---
package: mullvad-browser-bin
pkgver: 15.0.25
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 57227
completion_tokens: 3017
total_tokens: 60244
cost: 0.00557857
execution_time: 28.74
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-12T15:03:12Z
file_verdicts:
  - file: .hooks
    status: safe
    summary: Routine changelog extraction, no threats found.
  - file: .SRCINFO
    status: safe
    summary: Metadata only, no executable content, sources are legitimate.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious code detected.
  - file: mullvad-browser.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: mullvad-browser.sh
    status: safe
    summary: Standard launcher script, no malicious content.
  - file: mullvad-browser.changelog
    status: safe
    summary: No malicious content in changelog file.
---

Materializing mullvad-browser-bin from local mirror...
Materialized mullvad-browser-bin
Analyzing mullvad-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists solely of variable definitions, array declarations, and a comment block. There are no command substitutions, backtick operations, or invocations of external commands (curl, wget, eval, base64, etc.) outside of function bodies. The `source` array defines URLs for the tarball and local helper files, and `sha256sums` entries include one `SKIP`, but these are standard packaging constructs that do not execute during sourcing. Since `makepkg --printsrcinfo` only sources the top-level scope and does not call `package()`, there is no risk of executing malicious code at this stage.
</details>
<evidence></evidence>
<summary>No executable code in global scope, safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope, safe to parse.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://dist.torproject.org/mullvadbrowser/15.0.25/mullvad-browser-linux-x86_64-15.0.25.tar.xz.asc
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .hooks...
[0/6] Reviewing .SRCINFO, .hooks, PKGBUILD...
LLM auditresponse for .hooks:
<security_assessment>
<decision>SAFE</decision>
<details>
This script sources the PKGBUILD and extracts a single file (`ChangeLog.txt`) from the upstream tarball, then renames it.  There is no network activity, obfuscation, or execution of untrusted code. The operations are standard for generating a changelog from the package's own source. No evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Routine changelog extraction, no threats found.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .hooks, PKGBUILD, mullvad-browser.changelog...
[1/6] Reviewing .SRCINFO, PKGBUILD, mullvad-browser.changelog...
+ Reviewed .hooks. Status: SAFE -- Routine changelog extraction, no threats found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It contains no executable code, no obfuscated strings, and no suspicious network requests. All source URLs point to the official Tor Project distribution server (`dist.torproject.org`), which is the legitimate upstream for Mullvad Browser. The file includes a valid PGP key for signature verification and SHA-256 checksums for most sources (the `.asc` signature file has `SKIP`, which is normal because it is verified by GPG, not by hash). There is no indication of malicious redirection, encoded commands, or data exfiltration. This file is consistent with standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Metadata only, no executable content, sources are legitimate.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, mullvad-browser.changelog, mullvad-browser.desktop...
[2/6] Reviewing PKGBUILD, mullvad-browser.changelog, mullvad-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, no executable content, sources are legitimate.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD performs standard AUR packaging operations: fetching the official upstream tarball from `dist.torproject.org` with a pinned checksum and PGP verification, extracting it, installing wrapper scripts, desktop file, icons, and configuration files. All source URLs point to the project&#39;s own distribution infrastructure; the commented-out alternatives are normal maintainer notes. No obfuscated command execution, unexpected network requests, or data exfiltration is present. The `chmod` and `sed` operations are legitimate fixes for application functionality. The `SKIP` checksum on the `.asc` file is standard for detached signature files. There are no departures from expected packaging behavior that indicate a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious code detected.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, mullvad-browser.changelog, mullvad-browser.desktop, mullvad-browser.sh...
[3/6] Reviewing mullvad-browser.changelog, mullvad-browser.desktop, mullvad-browser.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious code detected.
LLM auditresponse for mullvad-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Freedesktop.org `.desktop` entry file for the Mullvad Browser application. It contains metadata (name, comment, categories, icon), a MIME type list, localized names and keywords, and desktop actions for launching new windows or opening the profile manager. There are no executable scripts, network requests, obfuscated code, or system modifications. All `Exec` lines reference the `mullvad-browser` binary with standard flags (`%u`, `--new-window`, `--private-window`, `--ProfileManager`), which is expected behavior for a web browser launcher. No deviation from normal packaging practices is present. The file is benign.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[4/6] Reviewing mullvad-browser.changelog, mullvad-browser.sh...
+ Reviewed mullvad-browser.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for mullvad-browser.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for Mullvad Browser. It reads optional user-specified flags from a configuration file in `~/.config`, unsets the session manager variable (common for browser isolation), sets custom font paths, disables Nvidia shader caching, and executes the browser binary. There is no obfuscation, no network requests, no unexpected file operations, and no deviation from normal packaging practices. The script is straightforward and benign.
</details>
<evidence></evidence>
<summary>Standard launcher script, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing mullvad-browser.changelog...
+ Reviewed mullvad-browser.sh. Status: SAFE -- Standard launcher script, no malicious content.
LLM auditresponse for mullvad-browser.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a changelog for Mullvad Browser, containing version history and bug fix descriptions. It is plain text with no executable code, obfuscation, network requests, or system modification commands. No indicators of malicious behavior are present.
</details>
<evidence>
</evidence>
<summary>No malicious content in changelog file.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed mullvad-browser.changelog. Status: SAFE -- No malicious content in changelog file.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,227
  Completion Tokens: 3,017
  Total Tokens: 60,244
  Total Cost: $0.005579
  Execution Time: 28.74 seconds

Final Status: SAFE


No issues found.
