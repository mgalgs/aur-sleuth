---
package: firefox-nightly-bin
pkgver: 158.0a1.20260917.203453
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 21486
completion_tokens: 9002
total_tokens: 30488
cost: 0.003499050940
execution_time: 195.47
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-18T11:24:51Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Firefox Nightly binary.
  - file: firefox-nightly.desktop
    status: safe
    summary: Standard desktop entry; no malicious behavior or injected code found.
  - file: get_latest_version.sh
    status: safe
    summary: Standard version bump script, no malicious behavior.
  - file: policies.json
    status: safe
    summary: Minimal, standard Firefox policy file disabling auto-update; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard firefox-nightly-bin metadata; official Mozilla sources, pinned checksums, no malicious indicators.
---

Materializing firefox-nightly-bin from local mirror...
Materialized firefox-nightly-bin
Analyzing firefox-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
`makepkg --printsrcinfo` only sources the PKGBUILD and executes top-level statements. In this file, the top-level scope consists solely of variable assignments, associative array definitions, and `source`/`sha512sums` array declarations. There is no top-level command substitution, `eval`, `curl`, `wget`, `bash` execution, or any statement that would download or run code while the file is sourced.

The `package()` function body contains installation commands and symlink operations, but those are not executed by `--printsrcinfo`; they will be reviewed in the full PKGBUILD audit. The source URLs point to Mozilla&apos;s official `ftp.mozilla.org` domain, which is the expected upstream for this package. No suspicious or obfuscated top-level code is present.
</details>
<evidence></evidence>
<summary>Top-level scope only defines data; no code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines data; no code execution risk.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: 20260917-203453-firefox-158.0a1.en-US.linux-x86_64.tar.xz.asc::https://ftp.mozilla.org/pub/firefox/nightly/2026/09/2026-09-17-20-34-53-mozilla-central/firefox-158.0a1.en-US.linux-x86_64.tar.xz.asc, 20260917-203453-firefox-158.0a1.en-US.linux-aarch64.tar.xz.asc::https://ftp.mozilla.org/pub/firefox/nightly/2026/09/2026-09-17-20-34-53-mozilla-central/firefox-158.0a1.en-US.linux-aarch64.tar.xz.asc
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, firefox-nightly.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for distributing Mozilla Firefox Nightly as a prebuilt binary. The source tarballs are downloaded from Mozilla's official FTP (ftp.mozilla.org) using a properly structured build ID path. Checksums are provided for the tarballs, and a valid PGP key is listed for signature verification. The package() function installs the browser binary, desktop file, icons, and a policies.json to disable auto-updates — all normal packaging steps. There is no obfuscated code, no unexpected network requests, no execution of external scripts, and no tampering with files outside the package's own install destination. The operations are consistent with the package's stated purpose and do not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Firefox Nightly binary.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, firefox-nightly.desktop, get_latest_version.sh...
[1/5] Reviewing .SRCINFO, firefox-nightly.desktop, get_latest_version.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Firefox Nightly binary.
LLM auditresponse for firefox-nightly.desktop:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org <code>.desktop</code> launcher file for Firefox Nightly. It contains only desktop entry metadata: application name, generic name, comment, localized translations, MIME type associations, startup settings, and two <code>Exec</code> lines that launch the browser binary from the package&apos;s own installation directory (<code>/usr/lib/firefox-nightly/firefox</code>).

No suspicious behavior is present. There are no network commands, no obfuscated code, no references to external hosts, no shell execution, and no file manipulation beyond launching the application. The <code>Exec</code> lines use standard <code>%u</code> argument placeholders for URLs, which is normal for a web browser desktop entry. The file is consistent with how Firefox and other browsers ship their desktop integration files.
</details>
<evidence></evidence>
<summary>Standard desktop entry; no malicious behavior or injected code found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, firefox-nightly.desktop, get_latest_version.sh, policies.json...
[2/5] Reviewing .SRCINFO, get_latest_version.sh, policies.json...
+ Reviewed firefox-nightly.desktop. Status: SAFE -- Standard desktop entry; no malicious behavior or injected code found.
LLM auditresponse for get_latest_version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `get_latest_version.sh` is a standard AUR maintainer helper that automates version bumping for the `firefox-nightly-bin` package. It fetches version and build ID information from Mozilla's official FTP (`ftp.mozilla.org`), parses the data, and updates the `PKGBUILD` file using `sed`. Finally, it runs `updpkgsums` to regenerate checksums.

No evidence of malicious behavior is present:
- Network requests target only Mozilla's official FTP, which is the expected upstream source for this package.
- There are no obfuscated commands, no `eval`, no `curl|bash` patterns, and no unexpected system modifications.
- The script does not exfiltrate any local data or download executable code from unknown hosts.
- The use of positional parameters (`$1`, `$2`) in `sed` commands could potentially be a code-injection vector if the script is invoked with malicious arguments, but this is a developer-facing tool run locally by the AUR maintainer, not a package install script. This is considered a minor hygiene concern, not a supply-chain attack.

The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard version bump script, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, policies.json...
+ Reviewed get_latest_version.sh. Status: SAFE -- Standard version bump script, no malicious behavior.
LLM auditresponse for policies.json:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a Firefox enterprise policy JSON containing a single policy, `DisableAppUpdate`, set to `true`. This is a standard, legitimate configuration for a browser installed via a system package manager: it disables the browser's built-in auto-updater so that updates are instead handled by the distribution's package manager. This prevents version conflicts between the packaged installation and Firefox's own updater.

There is no code to execute, no network access, no obfuscation, no file manipulation, and no data access of any kind. The content is exactly what it appears to be — a minimal, well-formed JSON policy file. No security issues of any kind are present.
</details>
<evidence>

</evidence>
<summary>Minimal, standard Firefox policy file disabling auto-update; no security concerns.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed policies.json. Status: SAFE -- Minimal, standard Firefox policy file disabling auto-update; no security concerns.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is declarative package metadata for `firefox-nightly-bin`. All source tarballs are fetched from the official Mozilla nightly directory on `ftp.mozilla.org` over HTTPS, with dated paths consistent with the declared `pkgver` (158.0a1, 2026-09-17 build). The x86_64 and aarch64 Firefox tarballs each have a pinned, concrete SHA-512 checksum, and the signing key is pinned via `validpgpkeys`. The `SKIP` entries apply only to the detached `.asc` signature files, whose integrity is instead verified through GPG signature checking — this is standard, harmless AUR practice, not a red flag.

The file contains no executable code, no downloads from unexpected hosts, no `eval`/`base64`/`curl|bash`, no obfuscation, no file tricks, and no post-install logic. Dependencies, optional dependencies, license identifiers, and architecture declarations are all consistent with a normal Firefox binary packaging. In short, the tarball downloads come from Mozilla's own official server with checksum and signature pinning; there is nothing here that deviates from standard packaging practice or that indicates a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard firefox-nightly-bin metadata; official Mozilla sources, pinned checksums, no malicious indicators.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard firefox-nightly-bin metadata; official Mozilla sources, pinned checksums, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,486
  Completion Tokens: 9,002
  Total Tokens: 30,488
  Total Cost: $0.003499
  Execution Time: 195.47 seconds

Final Status: SAFE


No issues found.
