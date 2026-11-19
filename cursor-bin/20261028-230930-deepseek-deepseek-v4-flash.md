---
package: cursor-bin
pkgver: 3.27.22
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13144
completion_tokens: 3740
total_tokens: 16884
cost: 0.001876784
execution_time: 34.26
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T23:09:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A normal .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard binary repackaging PKGBUILD with pinned sources.
  - file: rg.sh
    status: safe
    summary: Safe wrapper script for ripgrep flag substitution
---

Materializing cursor-bin from local mirror...
Cloning https://aur.archlinux.org/cursor-bin.git...
Cloned cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only top-level code. In this PKGBUILD, the global scope consists solely of variable and array assignments (`pkgname`, `pkgver`, `source`, `sha512sums`, `noextract`, `_app`, etc.). There are no command substitutions, no `eval`, no `curl`/`wget`/`base64` calls, and no file-modifying commands at the top level.

The `package()` function contains file extraction, symlink creation, `sed`, and `install` commands, but these are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata printing does not itself perform any malicious or dangerous action. Any concerns about the package contents or build steps are outside the scope of this narrow gate and should be addressed in the full audit.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is only variable assignments; no dangerous commands execute during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is only variable assignments; no dangerous commands execute during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It lists build artifacts (AppImage, compiled package, extracted files) and a sourced file (src/cursor.png) to be ignored by version control. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices.
</details>
<evidence>

</evidence>
<summary>A normal .gitignore with no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- A normal .gitignore with no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. All sources point to legitimate upstream locations (cursor.com and gitlab.archlinux.org). No obfuscated code, dangerous commands, or unusual network requests are present. The package uses declared checksums for verification. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary repackaging of the upstream Cursor .deb for Arch Linux. Sources are fetched from the application&apos;s official upstream domain with a pinned commit identifier, and the .deb checksum is explicitly set via `sha512sums[0]`, replacing the initial `SKIP`. The helper scripts from the Arch Linux GitLab and the local `rg.sh` are also covered by SHA-512 checksums.

The `package()` function only extracts the upstream .deb&apos;s `data.tar.xz` into `$pkgdir`, installs launcher scripts/symlinks, and patches paths for use with the system Electron package. There is no execution of downloaded payloads at build time, no encoded or obfuscated commands, no unexpected network activity, and no writes outside the package destination. The local `rg.sh` file is not visible in this PKGBUILD, but installing a wrapper in the app&apos;s ripgrep location is consistent with packaging the system ripgrep. No evidence of injected malicious behavior was found.
</details>
<evidence></evidence>
<summary>No malicious behavior found; standard binary repackaging PKGBUILD with pinned sources.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard binary repackaging PKGBUILD with pinned sources.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple wrapper for `ripgrep` (`/usr/bin/rg`). It replaces any occurrence of the argument `--cursor-ignore` with `--ignore-file` using bash parameter expansion, then `exec`s the real `rg` binary.  

There is no obfuscation, no network activity, no file writes, and no execution of untrusted code. The substitution is safe and does not introduce command injection. The script serves a clear packaging purpose (likely adapting ripgrep flags for the Cursor editor) and contains no supply-chain attack patterns.
</details>
<evidence>
</evidence>
<summary>Safe wrapper script for ripgrep flag substitution</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Safe wrapper script for ripgrep flag substitution
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,144
  Completion Tokens: 3,740
  Total Tokens: 16,884
  Total Cost: $0.001877
  Execution Time: 34.26 seconds

Final Status: SAFE


No issues found.
