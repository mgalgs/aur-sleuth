---
package: firefox-nightly-bin
pkgver: 158.0a1.20260918.092903
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 21336
completion_tokens: 3608
total_tokens: 24944
cost: 0.001399048
execution_time: 53.85
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-18T19:26:48Z
file_verdicts:
  - file: firefox-nightly.desktop
    status: safe
    summary: Standard desktop entry file; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Firefox Nightly; no malicious content.
  - file: policies.json
    status: safe
    summary: Standard Firefox policy file, no malicious content.
  - file: get_latest_version.sh
    status: safe
    summary: Safe helper script for fetching Firefox nightly version updates.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; all sources from official Mozilla servers.
---

Materializing firefox-nightly-bin from local mirror...
Materialized firefox-nightly-bin
Analyzing firefox-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD in its top-level scope, so only top-level statements are in scope for this gate. The top-level content consists of variable assignments, an associative array declaration, source array definitions, checksum and PGP key metadata, plus a `package()` function definition. No top-level command substitutions, `eval`/`base64`/`curl`/`wget` invocations, or other executable statements appear in the shown content. The `package()` body contains filesystem operations, but that function is not executed by `makepkg --printsrcinfo`.

The source URLs point to Mozilla&apos;s official FTP host, and the use of checksums and PGP keys is normal packaging metadata. The presence of a `SKIP` checksum is not grounds for blocking this step because no sources are downloaded or verified while merely printing `.SRCINFO`. No malicious top-level execution is present.
</details>
<evidence></evidence>
<summary>Top-level only variable/function definitions; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level only variable/function definitions; no code executes during printsrcinfo.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: 20260918-092903-firefox-158.0a1.en-US.linux-x86_64.tar.xz.asc::https://ftp.mozilla.org/pub/firefox/nightly/2026/09/2026-09-18-09-29-03-mozilla-central/firefox-158.0a1.en-US.linux-x86_64.tar.xz.asc, 20260918-092903-firefox-158.0a1.en-US.linux-aarch64.tar.xz.asc::https://ftp.mozilla.org/pub/firefox/nightly/2026/09/2026-09-18-09-29-03-mozilla-central/firefox-158.0a1.en-US.linux-aarch64.tar.xz.asc
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, firefox-nightly.desktop...
LLM auditresponse for firefox-nightly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org `.desktop` entry for Firefox Nightly. It contains the expected metadata (Name, GenericName, Comment in many locales), a single `Exec` line pointing to `/usr/lib/firefox-nightly/firefox %u`, MIME type associations, and two desktop actions (`new-window` and `new-private-window`) that also invoke the same binary with `--new-window` and `--private-window` flags. There is no code execution, network access, obfuscation, or deviation from normal packaging practices. The file is inert configuration—it tells the desktop environment how to launch Firefox Nightly and provides localized strings. No security issue.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, firefox-nightly.desktop, get_latest_version.sh...
[1/5] Reviewing .SRCINFO, PKGBUILD, get_latest_version.sh...
+ Reviewed firefox-nightly.desktop. Status: SAFE -- Standard desktop entry file; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging script for Firefox Nightly. It fetches pre-compiled binaries from Mozilla's official FTP server (ftp.mozilla.org), which is the correct upstream source. The package function performs only expected operations: installing binaries, creating symlinks, installing desktop files and icons, and disabling browser auto-updates via a policy file. No network requests to unrelated hosts, no obfuscated code, no execution of external scripts fetched at build time, and no exfiltration of system data. Checksums are present for the tarballs (the `.asc` signature checksums are `SKIP`, which is normal for signature files). The PGP key listed matches Mozilla's official release key. File operations are confined to the package install directory (`$pkgdir`) and are routine. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Firefox Nightly; no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, get_latest_version.sh, policies.json...
[2/5] Reviewing .SRCINFO, get_latest_version.sh, policies.json...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Firefox Nightly; no malicious content.
LLM auditresponse for policies.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Firefox policies.json configuration file. It sets the &quot;DisableAppUpdate&quot; policy to true, which disables Firefox's built-in update mechanism. This is a common practice for packaged versions of Firefox (including AUR packages) to prevent the browser from attempting to update itself outside of the system package manager. There is no executable code, no network destinations, no data manipulation, or any other behavior indicative of a supply chain attack. The file is benign and follows expected packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard Firefox policy file, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, get_latest_version.sh...
+ Reviewed policies.json. Status: SAFE -- Standard Firefox policy file, no malicious content.
LLM auditresponse for get_latest_version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer helper that fetches the latest Firefox nightly version from Mozilla&#39;s official FTP and updates the PKGBUILD with the new version and build timestamp. All network requests are directed to Mozilla&#39;s own servers (`https://ftp.mozilla.org/pub/firefox/nightly`), which is the expected upstream source for the package. The script then uses `sed` to modify `pkgver`, `_version`, and language placeholders in the PKGBUILD, and finally runs `updpkgsums` to update checksums. There is no evidence of data exfiltration, downloading of code from untrusted sources, obfuscated commands, or any behavior that deviates from standard AUR packaging workflow. The use of user-supplied arguments (`$1`, `$2`) for language settings is part of the intended helper functionality and does not introduce a supply-chain attack vector when used as designed.
</details>
<evidence></evidence>
<summary>Safe helper script for fetching Firefox nightly version updates.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed get_latest_version.sh. Status: SAFE -- Safe helper script for fetching Firefox nightly version updates.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard Arch Linux package metadata file for `firefox-nightly-bin`. All source tarballs are fetched from Mozilla's official FTP server (`ftp.mozilla.org` under `/pub/firefox/nightly/`), which is the legitimate upstream distribution point. The file includes valid PGP key fingerprints (`14F26682D0916CDD81E37B6D61B7B526D98F0353`) associated with Mozilla, and provides SHA-512 checksums for the binary tarballs (the signature file `.asc` correctly uses `SKIP`, which is normal). There are no suspicious URLs, obfuscated strings, encoded commands, or any operations that could exfiltrate data, download unauthorized code, or modify system files. The metadata simply declares package name, version, dependencies, and sources – all consistent with standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; all sources from official Mozilla servers.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; all sources from official Mozilla servers.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,336
  Completion Tokens: 3,608
  Total Tokens: 24,944
  Total Cost: $0.001399
  Execution Time: 53.85 seconds

Final Status: SAFE


No issues found.
