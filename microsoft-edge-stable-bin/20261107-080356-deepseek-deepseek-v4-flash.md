---
package: microsoft-edge-stable-bin
pkgver: 157.0.4341.42
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17697
completion_tokens: 3795
total_tokens: 21492
cost: 0.002301117
execution_time: 70.97
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T08:03:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with no malicious content.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .gitignore
    status: safe
    summary: Standard gitignore file with no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: "Safe: standard nvchecker regex config querying Microsoft's official Edge repository."
  - file: microsoft-edge-stable.install
    status: safe
    summary: Benign post-install script with no security concerns.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard launcher wrapper, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard Edge binary package; pinned checksums; no malicious activity.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments (e.g., `pkgname`, `source`, `sha256sums`) and a `package()` function definition at the top level. No command substitutions, backticks, or direct execution of commands occur during sourcing. Therefore, running `makepkg --printsrcinfo` (which only sources the global scope) is safe. The `package()` function and other build steps are not executed at this stage.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only package metadata with no executable instructions or suspicious content. All source files are from official Microsoft repositories or are auxiliary files (shell script, license PDF). Checksums are provided and pinned to specific versions. There are no obfuscated commands, unexpected network destinations, or signs of supply-chain tampering.
</details>
<evidence></evidence>
<summary>Standard package metadata with no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with no malicious content.
[2/7] Reviewing .gitignore, .nvchecker.toml...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
[2/7] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in Git repositories to prevent certain file patterns from being tracked. The listed patterns (`.log`, `.zst`, `.deb`, `.rpm`) are typical build artifacts and logs that are not meant to be version-controlled. There is no code execution, no network access, no obfuscation, and no system modification. The file is innocuous and follows normal packaging practices for an AUR package that may produce compressed packages or download other package formats during build.
</details>
<evidence></evidence>
<summary>Standard gitignore file with no security concerns.</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file with no security concerns.
[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a standard version-checking tool. It instructs nvchecker to query the official Microsoft Edge repository package index over HTTPS and extract the `microsoft-edge-stable` version with a regular expression. The URL is the legitimate upstream source for the package, and the config performs no downloads of executable code, no shell commands, no obfuscation, and no file system modifications. This is consistent with normal packaging/update-checking practice.
</details>
<evidence>
</evidence>
<summary>
Safe: standard nvchecker regex config querying Microsoft's official Edge repository.
</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe: standard nvchecker regex config querying Microsoft's official Edge repository.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a post-installation script for the Microsoft Edge Stable browser package. It defines colored output helper functions and two functions (`post_install`, `post_upgrade`) that print informational messages to the user. The messages advise the user where to place custom flags (`~/.config/microsoft-edge-stable-flags.conf`) and what command to use to launch the browser (`microsoft-edge-stable`). There are no network requests, file operations, encoded commands, or any other behavior that could indicate a supply-chain attack or malicious intent. The script performs only cosmetic output and provides user guidance, which is standard and expected for an AUR `.install` file.
</details>
<evidence></evidence>
<summary>Benign post-install script with no security concerns.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Benign post-install script with no security concerns.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher wrapper for Microsoft Edge Stable. It reads optional user-provided flags from `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf` (a file under the user's home directory) and passes them to the browser. There are no network requests, no obfuscated code, no dangerous commands (eval, curl, wget, base64, etc.), and no unexpected file operations. The unquoted expansion of `$EDGE_USER_FLAGS` is a common pattern and is not malicious; it allows the user to specify additional arguments via the config file. No evidence of supply-chain attack or injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper, no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard launcher wrapper, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard repackaging of Microsoft's official Edge `.deb` package. The source is fetched from `packages.microsoft.com` with a pinned version and pinned SHA-256 checksums for all three files. The `package()` function only extracts the `.deb`, installs icons, installs the launcher script and license, resizes icons with ImageMagick, and cleans up temporary files. There is no `eval`, base64 decoding, obfuscation, unexpected network download, or execution of attacker-controlled code.

The `chmod 4755` on `msedge-sandbox` is the normal setuid sandbox binary used by Chromium-based browsers, matching upstream behavior and not evidence of malice. The separate launcher script is a local file with a pinned checksum; nothing in this file exfiltrates data or modifies files outside the package's own install scope. Overall, this is consistent with ordinary AUR packaging for a prebuilt proprietary browser.
</details>
<evidence>
</evidence>
<summary>
Standard Edge binary package; pinned checksums; no malicious activity.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Edge binary package; pinned checksums; no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,697
  Completion Tokens: 3,795
  Total Tokens: 21,492
  Total Cost: $0.002301
  Execution Time: 70.97 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
