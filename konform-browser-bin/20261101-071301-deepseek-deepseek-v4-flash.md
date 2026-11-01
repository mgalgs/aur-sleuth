---
package: konform-browser-bin
pkgver: 153.6.0_101
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23706
completion_tokens: 2934
total_tokens: 26640
cost: 0.002691234
execution_time: 37.77
files_reviewed: 5
files_skipped: 2
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-11-01T07:13:01Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: default192x192.png
    status: skipped
    summary: "Skipping binary file: default192x192.png"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: konform-cb-release.asc
    status: skipped
    summary: "Skipping binary file: konform-cb-release.asc"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a Firefox fork; no malicious behavior.
  - file: konform.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: entrypoint.sh
    status: safe
    summary: Standard browser launcher script, no malicious code found.
---

Materializing konform-browser-bin from local mirror...
Materialized konform-browser-bin
Analyzing konform-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments, array definitions, and function definitions at the top level. There are no command substitutions, `eval`, `curl`, `wget`, or other executable statements that would run during sourcing. All potentially dangerous operations (file copying, script execution) are confined to the `package()` function, which is not invoked by `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://codeberg.org/api/packages/konform-browser/generic/konform-browser/153.6.0-101/konform-browser-153.6.0-101-linux-x86_64-package.tar.xz.sig, https://codeberg.org/api/packages/konform-browser/generic/konform-browser/153.6.0-101/konform-browser-153.6.0-101-linux-arm64-package.tar.xz.sig
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .gitignore file used in Git repositories to exclude build artifacts and temporary directories from version control. The patterns ignore packaging tarballs, signature files, and build directories (source/, pkg/, src/). There is no executable code, no network requests, no file modifications, and no deviation from normal packaging workflows. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, default192x192.png...
[1/7] Reviewing .SRCINFO, PKGBUILD, default192x192.png...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
[2/7] Reviewing .SRCINFO, PKGBUILD...
! Reviewed default192x192.png. Status: SKIPPED -- Skipping binary file: default192x192.png
[2/7] Reviewing .SRCINFO, PKGBUILD, entrypoint.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, version, dependencies, and sources. All source URLs point to the project's own upstream repository on codeberg.org, which is expected and legitimate. Checksums are provided for the main tarballs and for the signature files (`SKIP` is normal for detached signatures). There is no executable code, no obfuscation, no unexpected network destinations, and no suspicious commands. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD, entrypoint.sh, konform-cb-release.asc...
[3/7] Reviewing PKGBUILD, entrypoint.sh, konform-cb-release.asc...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[3/7] Reviewing PKGBUILD, entrypoint.sh, konform-cb-release.asc, konform.desktop...
[4/7] Reviewing PKGBUILD, entrypoint.sh, konform.desktop...
! Reviewed konform-cb-release.asc. Status: SKIPPED -- Skipping binary file: konform-cb-release.asc
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a pre-built binary Firefox fork. The source array fetches from the project's own Codeberg repository with a pinned tag. The package() function performs routine installation tasks: copying the extracted binary into `/usr/lib/konform`, installing icons, a `.desktop` file, and a small wrapper script (`entrypoint.sh`). It also writes two minimal configuration files (`vendor.js` and `distribution.ini`) via heredocs, which is a normal way to set distribution‑specific preferences. The SKIP checksums on the `.sig` files are expected for detached signatures and do not indicate malice. There are no unexpected network requests, no obfuscated code, no data exfiltration, and no system modifications beyond the package's own install paths.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for a Firefox fork; no malicious behavior.</summary>
</security_assessment>

[5/7] Reviewing entrypoint.sh, konform.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a Firefox fork; no malicious behavior.
LLM auditresponse for konform.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux `.desktop` file for a web browser called Konform. It contains only desktop entry metadata: application name translations, comment/description translations, generic name translations, keyword translations, MIME type associations, and three desktop actions (new window, new private window, profile manager). All `Exec` lines reference `/usr/lib/konform/konform` with normal command-line flags (`%u`, `--new-window`, `--private-window`, `--ProfileManager`).

There is no executable code, no network requests, no file operations, no obfuscation, and no system modifications. The file is entirely declarative and follows the freedesktop.org Desktop Entry Specification. The translations appear to have been copied from Mozilla Firefox's `.desktop` file (several `Name` values still read "Firefox" in Arabic and other languages), which is a quality/re-branding oversight but not a security issue.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[6/7] Reviewing entrypoint.sh...
+ Reviewed konform.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for entrypoint.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher wrapper for the Konform browser binary. It resolves symlinks, selects a cache directory using XDG\_CACHE\_HOME or common fallbacks, creates a temporary subdirectory (cleaned up via `trap` on exit), and sets several environment variables (`TMPDIR`, `TEMP`, etc.) to that temporary directory before executing the local `konform-bin` binary.  

There is no evidence of malicious behavior: no downloads, no obfuscated code, no exfiltration of data, no execution of untrusted content, and no modification of system files outside the application's own cache. The "jail tmpdir" logic follows documented Mozilla bug workarounds.  

All operations are consistent with normal AUR packaging for a browser-based application. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard browser launcher script, no malicious code found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed entrypoint.sh. Status: SAFE -- Standard browser launcher script, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: default192x192.png, konform-cb-release.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,706
  Completion Tokens: 2,934
  Total Tokens: 26,640
  Total Cost: $0.002691
  Execution Time: 37.77 seconds

Final Status: SAFE


No issues found.


Audit Skips:

default192x192.png: [SKIPPED] Skipping binary file: default192x192.png

konform-cb-release.asc: [SKIPPED] Skipping binary file: konform-cb-release.asc
