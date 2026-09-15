---
package: mullvad-browser-bin
pkgver: 15.0.23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 57292
completion_tokens: 5677
total_tokens: 62969
cost: 0.00597769368
execution_time: 92.44
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-15T15:02:20Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Safe AUR PKGBUILD for Mullvad Browser.
  - file: mullvad-browser.desktop
    status: safe
    summary: Standard desktop entry metadata; no malicious or suspicious behavior present.
  - file: .hooks
    status: safe
    summary: Standard changelog extraction from upstream tarball.
  - file: mullvad-browser.sh
    status: safe
    summary: Standard Mullvad Browser launcher wrapper; no malicious or dangerous behavior found.
  - file: mullvad-browser.changelog
    status: safe
    summary: Upstream changelog of bug fixes; no malicious code found.
---

Materializing mullvad-browser-bin from local mirror...
Materialized mullvad-browser-bin
Analyzing mullvad-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and a `package()` function in its top-level scope. No dangerous commands (curl, wget, eval, base64 decode, etc.) are executed at the global level. All assignments are static strings or arrays. The `package()` function is not invoked by `makepkg --printsrcinfo`, so its contents are out of scope for this gate. No exfiltration, downloads, or obfuscated code are present in the sourced portion.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://dist.torproject.org/mullvadbrowser/15.0.23/mullvad-browser-linux-x86_64-15.0.23.tar.xz.asc
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .hooks...
[0/6] Reviewing .SRCINFO, .hooks, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file. It contains no executable code, no network requests, no obfuscated commands, and no unexpected system operations. All source URLs point to the official Tor Project distribution server (`dist.torproject.org`), which is the legitimate upstream for Mullvad Browser. The checksums are provided for the main tarball and supporting files; the GPG signature file uses `SKIP` as its checksum, which is standard AUR practice for `.asc` files. The `validpgpkeys` field is set to a key ID. There are no indicators of malicious or dangerous behavior. The file follows standard AUR packaging conventions and does not introduce any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .hooks, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
[1/6] Reviewing .hooks, PKGBUILD, mullvad-browser.changelog...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the Mullvad Browser tarball from the official Tor Project mirror (dist.torproject.org), uses a PGP signing key for verification, and provides a SHA-256 checksum for the tarball. The `package()` function performs routine installation: extracting files to `/opt/mullvad-browser`, setting permissions, creating icons and desktop files, and generating configuration files (distribution.ini, vendor.js) via heredocs. All operations are restricted to the package’s own directories (`/opt/$pkg`, `/usr/share/applications`, `/usr/share/icons`, etc.). There are no network requests outside the declared `source`, no obfuscated commands, no eval, no execution of downloaded scripts, and no manipulation of user data or system-wide configuration outside the application scope. The file is a clean, legitimate AUR package.
</details>
<evidence></evidence>
<summary>Safe AUR PKGBUILD for Mullvad Browser.</summary>
</security_assessment>

[1/6] Reviewing .hooks, PKGBUILD, mullvad-browser.changelog, mullvad-browser.desktop...
[2/6] Reviewing .hooks, mullvad-browser.changelog, mullvad-browser.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Safe AUR PKGBUILD for Mullvad Browser.
LLM auditresponse for mullvad-browser.desktop:
 <security_assessment>  
<decision>SAFE</decision>  
<details>  
This file is a standard freedesktop.org `.desktop` launcher entry for the Mullvad Browser package. It contains desktop metadata: application name, comment, categories, localized name/keyword translations, MIME type associations, and desktop actions for opening a new window or a profile manager. The `Exec` lines simply invoke the packaged `mullvad-browser` binary with standard arguments such as `%u`, `--private-window`, and `--ProfileManager`. There are no network requests, downloads, encoded commands, file modifications, or any other behavior that could indicate a supply-chain attack or malicious payload. The translations and keywords are ordinary localization data. This file is consistent with normal packaging practice and is safe.  
</details>  
<evidence></evidence>  
<summary>Standard desktop entry metadata; no malicious or suspicious behavior present.</summary>  
</security_assessment>

[2/6] Reviewing .hooks, mullvad-browser.changelog, mullvad-browser.desktop, mullvad-browser.sh...
[3/6] Reviewing .hooks, mullvad-browser.changelog, mullvad-browser.sh...
+ Reviewed mullvad-browser.desktop. Status: SAFE -- Standard desktop entry metadata; no malicious or suspicious behavior present.
LLM auditresponse for .hooks:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple helper to extract the upstream changelog from the package's source tarball. It sources the PKGBUILD (standard AUR practice), extracts a single file from the declared upstream source archive, and renames it. There are no network requests, no execution of external code, no obfuscation, and no modification of system files outside the build environment. This is ordinary packaging activity.
</details>
<evidence></evidence>
<summary>Standard changelog extraction from upstream tarball.</summary>
</security_assessment>

[4/6] Reviewing mullvad-browser.changelog, mullvad-browser.sh...
+ Reviewed .hooks. Status: SAFE -- Standard changelog extraction from upstream tarball.
LLM auditresponse for mullvad-browser.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for the Mullvad Browser. It reads an optional user flags file from the user's own config directory, strips comments, sets a few environment variables (font config paths and NVIDIA shader cache disabling), and then executes the bundled browser binary with the user's arguments and flags.

No malicious behavior is present. There are no network requests, no downloads, no encoded/obfuscated commands, no writes outside normal application config usage, and no eval or shell injection vectors beyond normal word splitting. The unquoted `$USER_FLAGS` expansion is intentional to allow multiple user-supplied flags, and the content originates from the user's own configuration file, not from an attacker-controlled or remote source. The script only manipulates its own application's environment and launches the application binary from `/opt/mullvad-browser`.
</details>
<evidence>
</evidence>
<summary>
Standard Mullvad Browser launcher wrapper; no malicious or dangerous behavior found.
</summary>
</security_assessment>

[5/6] Reviewing mullvad-browser.changelog...
+ Reviewed mullvad-browser.sh. Status: SAFE -- Standard Mullvad Browser launcher wrapper; no malicious or dangerous behavior found.
LLM auditresponse for mullvad-browser.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
The visible portions of this file are entirely a changelog-style list of upstream bug tracker references spanning tor-browser-build, tor-browser, rbm, and mullvad-browser projects. Entries describe routine maintenance items such as build infrastructure fixes, signing script updates, release automation, and Mozilla/Tor Browser patch reviews. This is consistent with a bundled changelog or bug-tracking export included with the Mullvad Browser package, and no executable packaging logic is present.

The suspicious-pattern scan (curl, wget, eval, base64, exec, etc.) found no dangerous commands in the head, tail, or matching lines. The XML entities (&apos;, &amp;, &lt;, &gt;) in the visible text are standard escaping within the changelog content, not obfuscation. No network exfiltration, no download-and-execute behavior, no credential access, and no tampering with system files appears anywhere in the reviewed content. While the file was truncated and the omitted 10k-character region cannot be fully inspected, nothing in the shown material or pattern matches suggests injected malicious code.

The references to signing scripts (e.g., "do-all-signing", "download-unsigned-sha256sums-gpg-signatures", "authenticode-timestamping.sh") are descriptions of upstream tor-browser-build release infrastructure bugs, not malicious operations performed by this file. Overall, the content is consistent with ordinary upstream changelog material and does not meet the threshold for marking the file UNSAFE.
</details>
<evidence></evidence>
<summary>Upstream changelog of bug fixes; no malicious code found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed mullvad-browser.changelog. Status: SAFE -- Upstream changelog of bug fixes; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,292
  Completion Tokens: 5,677
  Total Tokens: 62,969
  Total Cost: $0.005978
  Execution Time: 92.44 seconds

Final Status: SAFE


No issues found.
