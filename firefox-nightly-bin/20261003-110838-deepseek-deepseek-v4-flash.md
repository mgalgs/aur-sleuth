---
package: firefox-nightly-bin
pkgver: 159.0a1.20261002.211853
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21493
completion_tokens: 4348
total_tokens: 25841
cost: 0.000845292
execution_time: 66.61
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-10-03T11:08:38Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; all sources from official Mozilla FTP, no suspicious elements.
  - file: firefox-nightly.desktop
    status: safe
    summary: Standard desktop entry file; no malicious behavior found.
  - file: get_latest_version.sh
    status: safe
    summary: Standard maintainer update script, no threats.
  - file: policies.json
    status: safe
    summary: Standard Firefox policy disabling auto-updates.
  - file: PKGBUILD
    status: safe
    summary: Standard Firefox Nightly PKGBUILD; no malicious behavior found.
---

Materializing firefox-nightly-bin from local mirror...
Materialized firefox-nightly-bin
Analyzing firefox-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, array definitions, and comments at the global/top-level scope. There are no command substitutions, backtick executions, eval calls, or any other constructs that would execute during sourcing. The sole function defined (`package()`) is only executed during the build phase and is therefore out of scope for this gate. No network downloads, data exfiltration, or obfuscated code is triggered by simply sourcing the file. The use of SKIP checksums for some sources is a packaging practice that does not execute any code at this stage.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe; no top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe; no top-level execution.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: 20261002-211853-firefox-159.0a1.en-US.linux-x86_64.tar.xz.asc::https://ftp.mozilla.org/pub/firefox/nightly/2026/10/2026-10-02-21-18-53-mozilla-central/firefox-159.0a1.en-US.linux-x86_64.tar.xz.asc, 20261002-211853-firefox-159.0a1.en-US.linux-aarch64.tar.xz.asc::https://ftp.mozilla.org/pub/firefox/nightly/2026/10/2026-10-02-21-18-53-mozilla-central/firefox-159.0a1.en-US.linux-aarch64.tar.xz.asc
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, firefox-nightly.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file describing the `firefox-nightly-bin` package. It lists sources exclusively from Mozilla's official FTP server (`ftp.mozilla.org`), which is the expected upstream location for Firefox Nightly builds. The two remote tarballs (for x86_64 and aarch64) have pinned SHA-512 checksums, and the package defines a valid PGP key for signature verification. The `.asc` signature files use `SKIP` checksums, which is a trust/hygiene choice but not malicious. There are no embedded commands, no obfuscated code, no unexpected network destinations, and no operations that deviate from standard packaging practices. The file contains only metadata; no executable logic is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; all sources from official Mozilla FTP, no suspicious elements.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, firefox-nightly.desktop, get_latest_version.sh...
[1/5] Reviewing PKGBUILD, firefox-nightly.desktop, get_latest_version.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; all sources from official Mozilla FTP, no suspicious elements.
LLM auditresponse for firefox-nightly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher entry for the Firefox Nightly package. It contains only desktop entry metadata, localized names and comments, a MimeType list, and an `Exec` line that launches the installed browser binary at `/usr/lib/firefox-nightly/firefox`. No network fetching, no shell command substitution, no obfuscated content, and no unexpected file operations are present. The translations are ordinary upstream localization strings; the `&apos;` sequences are just text within translation values and do not execute anything. There is no evidence of injected malicious behavior or supply-chain tampering.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, firefox-nightly.desktop, get_latest_version.sh, policies.json...
[2/5] Reviewing PKGBUILD, get_latest_version.sh, policies.json...
+ Reviewed firefox-nightly.desktop. Status: SAFE -- Standard desktop entry file; no malicious behavior found.
LLM auditresponse for get_latest_version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a maintainer helper that fetches the latest Firefox nightly version from Mozilla&#39;s official FTP (`https://ftp.mozilla.org/pub/firefox/nightly`), extracts the version and build ID, updates the PKGBUILD with sed, and runs `updpkgsums` to refresh checksums. All network requests go to the package&#39;s own upstream source. There is no obfuscated code, no exfiltration of data, no execution of untrusted downloaded content, and no deviation from standard AUR packaging workflows. The only minor issues are a potential bug (undefined `_base_url` variable) and the use of `sed -i` without backup, but these are not malicious.
</details>
<evidence></evidence>
<summary>Standard maintainer update script, no threats.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, policies.json...
+ Reviewed get_latest_version.sh. Status: SAFE -- Standard maintainer update script, no threats.
LLM auditresponse for policies.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Firefox enterprise policy configuration file that disables automatic updates (`DisableAppUpdate: true`). This is a common and expected practice for packages distributed via a system package manager, as updates are handled by the package manager itself. There is no obfuscation, network requests, file operations, or any other potentially malicious behavior. The file is a simple JSON object with a single policy setting.
</details>
<evidence></evidence>
<summary>Standard Firefox policy disabling auto-updates.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed policies.json. Status: SAFE -- Standard Firefox policy disabling auto-updates.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Firefox Nightly binary PKGBUILD. It downloads prebuilt tarballs and detached signatures from Mozilla&apos;s official ftp.mozilla.org domain, pins an explicit build ID and version, and pins Mozilla&apos;s release key in validpgpkeys. The sha512 checksums are pinned for the tarballs; the `SKIP` entries apply only to the `.asc` signature files, which is normal packaging practice and not evidence of malice.

The `package()` function only installs files into `$pkgdir`, creates the expected binary symlink, installs `.desktop` and icon files, disables browser auto-updates via `policies.json`, and replaces bundled dictionary data with system-provided hunspell/hyphenation symlinks. There are no dangerous commands such as `eval`, `base64`, `curl`, `wget`, or runtime downloads, and no writes outside the package destination. The behavior is consistent with ordinary Mozilla packaging.
</details>
<evidence>
</evidence>
<summary>
Standard Firefox Nightly PKGBUILD; no malicious behavior found.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Firefox Nightly PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,493
  Completion Tokens: 4,348
  Total Tokens: 25,841
  Total Cost: $0.000845
  Execution Time: 66.61 seconds

Final Status: SAFE


No issues found.
