---
package: visual-studio-code-insiders-bin
pkgver: 1792129773
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16006
completion_tokens: 2765
total_tokens: 18771
cost: 0.001959776
execution_time: 65.68
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T15:21:19Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: "Benign .gitignore entry ignoring root *.in template files."
  - file: PKGBUILD
    status: safe
    summary: Standard VSCode Insiders PKGBUILD; official upstream sources, pinned checksums, routine packaging.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file, official Microsoft sources, pinned checksums, no suspicious behavior.
  - file: visual-studio-code-insiders-bin.install
    status: safe
    summary: Innocent configuration notes in install hooks
  - file: visual-studio-code-insiders-bin.sh
    status: safe
    summary: Simple launcher script reading user flags; no malicious behavior found.
---

Materializing visual-studio-code-insiders-bin from local mirror...
Materialized visual-studio-code-insiders-bin
Analyzing visual-studio-code-insiders-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD consists solely of ordinary metadata variable assignments: `pkgname`, `_pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `provides`, `conflicts`, `options`, `install`, `depends`, `optdepends`, and the `source*` / `sha256sums*` arrays. There are no command substitutions (`$(...)` or backticks), no `eval`, no `base64`/decoding, no `curl`/`wget`/network calls, and no file or system modifications executed while the file is sourced.

The `source` entries point at `vscode.download.prss.microsoft.com`, the project's own official download host, and the checksums are concrete (not `SKIP`). Even if they were `SKIP`, that would be irrelevant to this gate since no sources are fetched by `makepkg --printsrcinfo`.

The only function defined is `package()`, which is not executed by `makepkg --printsrcinfo`. Its contents (bsdtar extraction, `install`, `sed` on desktop files, `chmod u-s` on chrome-sandbox) are standard packaging operations for a prebuilt binary and are out of scope for this parsing step anyway. Nothing in the global scope can download, decode, or execute a payload when the PKGBUILD is sourced.

No malicious or dangerous top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>
Global scope only defines variables/arrays; no code executes at parse time.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope only defines variables/arrays; no code executes at parse time.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a single-line `.gitignore` containing the pattern `/*.in`, which simply tells git to ignore files matching `*.in` in the repository root. This is a common AUR packaging convention — `.in` files are typically template files (e.g., `PKGBUILD.in`, `foo.desktop.in`) that get substituted into real files during packaging.

There is no executable code, no network access, no file manipulation, no obfuscation, and no deviation from ordinary packaging practice. Nothing here constitutes a supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Benign .gitignore entry ignoring root *.in template files.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, visual-studio-code-insiders-bin.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore entry ignoring root *.in template files.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for the Visual Studio Code Insiders binary distribution. It downloads prebuilt `.deb` packages from Microsoft's own official download host (`vscode.download.prss.microsoft.com`), which is the expected upstream source for this package, and pins each architecture to a concrete `.deb` URL with matching SHA-256 checksums (no `SKIP`s on the binary sources). The arch-specific source arrays, provides/conflicts, and dependencies are all ordinary packaging metadata.

The `package()` function performs routine packaging work: it extracts `data.tar.xz` with `bsdtar` into `$pkgdir`, symlinks the license, installs the launcher script `visual-studio-code-insiders-bin.sh` (which is itself a declared local `source` and covered by the first `sha256sums` entry) to `/usr/bin/code-insiders`, rewrites `Exec=` lines in the shipped `.desktop` files with `sed`, and clears the setuid bit on `chrome-sandbox`. None of these operations touch unrelated system files, exfiltrate data, or execute attacker-controlled content.

The only item worth noting is that the package relies on a local launcher script (`visual-studio-code-insiders-bin.sh`) that is not included in this audit; its hash is pinned in the PKGBUILD, so its contents could be verified separately. This is a hygiene/coverage observation, not evidence of malicious behavior. The `options=(!strip)` is documented and benign. No obfuscation, no encoded blobs, no unexpected hosts, and no dangerous command construction is present.
</details>
<evidence>
</evidence>
<summary>Standard VSCode Insiders PKGBUILD; official upstream sources, pinned checksums, routine packaging.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
[2/5] Reviewing .SRCINFO, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VSCode Insiders PKGBUILD; official upstream sources, pinned checksums, routine packaging.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only package metadata: name, description, version, architecture, dependencies, source URLs, and SHA-256 checksums. There is no executable code, no shell commands, no network requests initiated at build time beyond the declared upstream binary downloads, and no encoding or obfuscation.

All binary sources are fetched from Microsoft's official Visual Studio Code download domain (`vscode.download.prss.microsoft.com`), which is the expected upstream host for this official binary package. Every architecture-specific source has a concrete SHA-256 checksum rather than `SKIP`, so the downloaded artifacts are pinned. The referenced install script (`visual-studio-code-insiders-bin.install`) is not included in this file and cannot be reviewed here, but nothing in the `.SRCINFO` itself indicates malicious behavior. This is consistent with standard AUR packaging for an official binary product.
</details>
<evidence>
</evidence>
<summary>
Metadata-only file, official Microsoft sources, pinned checksums, no suspicious behavior.</summary>
</security_assessment>

[3/5] Reviewing visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file, official Microsoft sources, pinned checksums, no suspicious behavior.
LLM auditresponse for visual-studio-code-insiders-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.install` file for `visual-studio-code-insiders-bin` defines colored output helpers and two hook functions (`post_install`, `post_upgrade`). These hooks only print informational messages to the user regarding custom flags configuration file locations (`~/.config/code-insiders-flags.conf` and `~/.config/code-flags.conf`). No network requests, obfuscation, dangerous commands, or system modifications are present. The file performs no operations beyond standard packaging advice, and there is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Innocent configuration notes in install hooks</summary>
</security_assessment>

[4/5] Reviewing visual-studio-code-insiders-bin.sh...
+ Reviewed visual-studio-code-insiders-bin.install. Status: SAFE -- Innocent configuration notes in install hooks
LLM auditresponse for visual-studio-code-insiders-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard launcher wrapper for Visual Studio Code Insiders. It reads optional user-provided flags from `$XDG_CONFIG_HOME/code-insiders-flags.conf` or `code-flags.conf`, strips comments with `sed`, joins the remaining lines with `tr`, and passes those flags to the main binary via an unquoted expansion.

There is no evidence of malicious behavior: no downloads, no eval, no obfuscation, no exfiltration, and no modification of system files. The script only reads a user-owned configuration file and executes the package's own binary. The unquoted expansion of `$CODE_USER_FLAGS` is intentional to allow word splitting into individual flags, and the content comes from the user's own configuration, so it is not a supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Simple launcher script reading user flags; no malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed visual-studio-code-insiders-bin.sh. Status: SAFE -- Simple launcher script reading user flags; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,006
  Completion Tokens: 2,765
  Total Tokens: 18,771
  Total Cost: $0.001960
  Execution Time: 65.68 seconds

Final Status: SAFE


No issues found.
