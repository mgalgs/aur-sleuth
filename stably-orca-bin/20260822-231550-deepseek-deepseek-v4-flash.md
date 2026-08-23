---
package: stably-orca-bin
pkgver: 1.4.188
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 11022
completion_tokens: 1614
total_tokens: 12636
cost: 0.00081595500
execution_time: 39.04
files_reviewed: 3
files_skipped: 0
files_unauditable: 1
unpinned_sources: 0
date: 2026-08-22T23:15:49Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for prebuilt AppImage, no security issues found.
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no security concerns.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code in its global/top-level scope beyond static variable assignments and array definitions. There is no `pkgver()` function. Therefore, sourcing the PKGBUILD does not execute any commands. The `source` array points to an upstream GitHub release (AppImage) and two local files (`stably-orca.sh`, `stably-orca.desktop`), all with pinned SHA-256 checksums. No dangerous network destinations or unexpected payloads are involved during source fetching. The `prepare()`, `build()`, and `package()` functions are not executed under `--nobuild --nodeps --noprepare`, so any code inside them is out of scope for this gate. Running the specified `makepkg` commands is safe.
</details>
<summary>No malicious code executed during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, stably-orca.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary AppImage. The source is fetched from the official GitHub releases page of the project (stablyai/orca) with a pinned checksum. The `prepare()` function extracts the AppImage, and `package()` installs the extracted files along with a wrapper script and desktop entry. There are no suspicious network requests, obfuscated code, or dangerous commands (e.g., `eval`, `base64`, `curl | bash`). The use of `chmod` and `cp` is normal for file installation. No evidence of supply-chain injection, exfiltration, or backdoors. The pinned checksums ensure integrity of the downloaded binary.
</details>
<summary>
Standard AUR PKGBUILD for prebuilt AppImage, no security issues found.</summary>
</security_assessment>

[1/2] Reviewing stably-orca.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for prebuilt AppImage, no security issues found.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a Linux application launcher, used by the Freedesktop.org menu system. It contains only metadata (name, description, icon category, etc.) and an `Exec` line that runs `stably-orca %U`. The `%U` argument is a conventional placeholder for a list of URLs or file paths passed by the desktop environment when opening associated files. There are no embedded commands, network requests, obfuscated strings, or references to external scripts. The file conforms to normal packaging practices and does not exhibit any signs of malicious injection or supply-chain attack behavior.
</details>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (stably-orca-bin-1.4.188.AppImage). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 1 additional files: stably-orca.sh
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing stably-orca.sh...
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard AUR wrapper that sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the upstream AppRun with `--disable-features=Vulkan`. There is no network access, no obfuscated code, no unexpected system modifications, and no dangerous commands (such as `eval`, `curl`, or `wget`). The comments explain the rationale for the flags and the `APPDIR` assignment, which are consistent with typical AppImage packaging practices. No evidence of malicious or injected code is present.
</details>
<summary>Standard wrapper script, no security concerns.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,022
  Completion Tokens: 1,614
  Total Tokens: 12,636
  Total Cost: $0.000816
  Execution Time: 39.04 seconds

Final Status: SAFE


No issues found.
