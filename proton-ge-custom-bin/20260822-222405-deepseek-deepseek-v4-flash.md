---
package: proton-ge-custom-bin
pkgver: GE_Proton11_5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 19655
completion_tokens: 3469
total_tokens: 23124
cost: 0.00152271518
execution_time: 105.02
files_reviewed: 4
files_skipped: 0
files_unauditable: 5115
unpinned_sources: 0
date: 2026-08-22T22:24:05Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: No evidence of supply-chain attack; standard packaging.
  - file: pleasenote.install
    status: safe
    summary: No malicious code; standard installation notification.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM limit for gaming package; no malice.
  - file: launcher.sh
    status: safe
    summary: Standard Proton launcher script, no malicious behavior.
---

Cloning https://aur.archlinux.org/proton-ge-custom-bin.git...
Cloned proton-ge-custom-bin
Analyzing proton-ge-custom-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only contains variable assignments, string substitutions, and source array definitions. There is no `pkgver()` function. The sources are fetched from the official GitHub releases via HTTPS, with checksums provided. No dangerous commands (curl, wget, eval, etc.) are present in the top-level scope or any function that would execute during `--nobuild --nodeps --noprepare`. The `build()` and `package()` functions contain commands but are not executed at this stage. Running `makepkg --printsrcinfo` and fetching sources is safe.
</details>
<summary>No malicious code in global scope; sources are standard GitHub releases.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; sources are standard GitHub releases.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, pleasenote.install...
[0/3] Reviewing PKGBUILD, pleasenote.install, pam_limits.conf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions. It downloads the official upstream Proton GE release tarball from GitHub (with valid sha512sums), applies minor file-path adjustments via `sed`, and installs binaries and support configuration files (PAM limits, modules-load.d) that are typical for gaming performance tuning. There are no hidden network requests, obfuscated commands, data exfiltration, or backdoors. All operations are transparent and serve the package's stated purpose.
</details>
<summary>No evidence of supply-chain attack; standard packaging.</summary>
</security_assessment>

[1/3] Reviewing pleasenote.install, pam_limits.conf...
+ Reviewed PKGBUILD. Status: SAFE -- No evidence of supply-chain attack; standard packaging.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.install` hook file that emits a user-friendly message during package installation and upgrade. It does not perform any network requests, file modifications, or execute untrusted commands. The only action is printing text to the console advising the user to optionally join the `games` group. There is no malicious or suspicious behavior.
</details>
<summary>No malicious code; standard installation notification.</summary>
</security_assessment>

[2/3] Reviewing pam_limits.conf...
+ Reviewed pleasenote.install. Status: SAFE -- No malicious code; standard installation notification.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd PAM limits configuration that grants a priority adjustment (nice -11) to processes in the `games` group. This is a standard and expected configuration for a gaming compatibility package like proton-ge-custom, allowing games to run with higher CPU scheduling priority. There is no encoded content, no external network access, no file exfiltration, and no unusual commands. The setting is a straightforward resource limit tweak that aligns with the package's stated purpose.
</details>
<summary>
Standard PAM limit for gaming package; no malice.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM limit for gaming package; no malice.
Reviewed all required files.
Deciding which files to review next...
Note: 5115 compiled/archived file(s) cannot be audited as text and were not reviewed (GE-Proton11-5_1-x86_64.tar.gz, src/GE-Proton11-5-x86_64/files/lib/x86_64-linux-gnu/libpiper_phonemize.so.1.2.0, src/GE-Proton11-5-x86_64/files/lib/x86_64-linux-gnu/libbz2.so and 5112 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 1007 files available for selection; offering the 50 highest-priority to the model. 667 lower-priority file(s) were not offered.
LLM response for file selection:
launcher.sh
Decided to review 1 additional files: launcher.sh
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing launcher.sh...
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This launcher script is a standard helper for running Proton (Wine/Proton compatibility layer) outside of Steam. It sets environment variables (STEAM_COMPAT_DATA_PATH, STEAM_COMPAT_CLIENT_INSTALL_PATH, DXVK_STATE_CACHE_PATH) and creates their respective directories if absent. It then invokes the proton executable with the user-supplied arguments. No malicious behavior is present: there are no network requests (no curl/wget), no obfuscated code, no base64 decoding, no eval, no unexpected file operations outside the defined prefixes/cache paths, and no exfiltration of data. The script only performs routine directory creation and environment setup for Proton, which is consistent with the package&#x27;s stated purpose. The `_proton` variable defaults to `echo` (likely a placeholder replaced in the actual PKGBUILD), and the script does not execute any external code that isn&#x27;t the user&#x27;s intended executable.
</details>
<summary>Standard Proton launcher script, no malicious behavior.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed launcher.sh. Status: SAFE -- Standard Proton launcher script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,655
  Completion Tokens: 3,469
  Total Tokens: 23,124
  Total Cost: $0.001523
  Execution Time: 105.02 seconds

Final Status: SAFE


No issues found.
