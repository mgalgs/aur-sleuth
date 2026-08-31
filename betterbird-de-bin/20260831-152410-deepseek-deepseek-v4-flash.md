---
package: betterbird-de-bin
pkgver: 153.2.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 15227
completion_tokens: 2323
total_tokens: 17550
cost: 0.00169993642
execution_time: 36.63
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 60
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-31T15:24:10Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Legitimate .desktop file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard -bin PKGBUILD with pinned checksums, official upstream source, and safe pkgdir-only install operations.
  - file: vendor-prefs.js
    status: safe
    summary: Benign preference file for system dictionaries.
---

Cloning https://aur.archlinux.org/betterbird-de-bin.git...
Cloned betterbird-de-bin
Analyzing betterbird-de-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only contains variable assignments, the `source` array, and `sha256sums`. There are no command substitutions, `eval`, or any other executable statements outside of function definitions. The `package()` function is not run by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The source URLs point to the official Betterbird project website (betterbird.eu), which is expected and legitimate. No data exfiltration, obfuscated code, or unexpected network destinations are present in the global scope or `pkgver()` (which is not defined as a function). Fetching and extracting the sources is the intended behavior of these commands and poses no additional risk.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 60 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an AUR package. It defines package metadata, dependencies, and source URLs with valid SHA-256 checksums. All sources point to the official Betterbird website and accompanying files (desktop entry and vendor-prefs.js). There is no obfuscated code, no dangerous commands, no unexpected network requests, and no deviation from normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop, vendor-prefs.js...
[1/4] Reviewing PKGBUILD, eu.betterbird.Betterbird.desktop, vendor-prefs.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org .desktop file for the Betterbird email client (a Thunderbird fork). It defines application metadata, MIME type associations, localized names and comments, and two desktop actions (compose message and open address book). All `Exec` lines reference the `betterbird` binary with expected arguments (`%u`, `-compose`, `-addressbook`). No system commands, network requests, encoded/obfuscated content, or unusual operations are present. The file follows normal AUR packaging conventions and contains no evidence of malicious code.
</details>
<evidence></evidence>
<summary>Legitimate .desktop file, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vendor-prefs.js...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Legitimate .desktop file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package build for Betterbird (German edition). It downloads a prebuilt tarball from the project's own official upstream (betterbird.eu) over HTTPS, with all three sources pinned by explicit sha256sums. The `package()` function only performs routine operations: creating directories, copying the unpacked application into `$pkgdir/opt/betterbird`, installing a `.desktop` file and a `vendor-prefs.js` config, and creating symlinks for the binary, hunspell dictionaries, and icons — all confined to `$pkgdir`.

No malicious behavior is present: there are no network requests at build time beyond the declared upstream source, no obfuscated or encoded commands, no use of `eval`, `curl`, `wget`, or `base64`, no writes outside `$pkgdir`, and no data exfiltration or backdoors. The `echo` in `package()` merely prints a German message asking users to vote for the package on the AUR, which is harmless (if slightly unconventional for a package script). The pinned checksums and HTTPS source provide good supply-chain hygiene.
</details>
<evidence>
</evidence>
<summary>
Standard -bin PKGBUILD with pinned checksums, official upstream source, and safe pkgdir-only install operations.
</summary>
</security_assessment>

[3/4] Reviewing vendor-prefs.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -bin PKGBUILD with pinned checksums, official upstream source, and safe pkgdir-only install operations.
LLM auditresponse for vendor-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward JavaScript preference file for Mozilla-based applications (like Thunderbird). It sets the `spellchecker.dictionary_path` to a system path `/usr/share/hunspell`, which is a standard practice in Linux distributions to use system-provided dictionaries. There is no obfuscation, network requests, file operations, or any suspicious behavior. The file is innocuous and follows expected packaging conventions.
</details>
<evidence></evidence>
<summary>Benign preference file for system dictionaries.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vendor-prefs.js. Status: SAFE -- Benign preference file for system dictionaries.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,227
  Completion Tokens: 2,323
  Total Tokens: 17,550
  Total Cost: $0.001700
  Execution Time: 36.63 seconds

Final Status: SAFE


No issues found.
