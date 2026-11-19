---
package: claude-desktop
pkgver: 5.11492.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 16719
completion_tokens: 3588
total_tokens: 20307
cost: 0.00215055
execution_time: 31.87
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T16:03:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative package metadata; no executable or malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore file.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious behavior found.
  - file: claude-desktop.sh
    status: safe
    summary: Standard launcher script, no malicious behavior.
---

Materializing claude-desktop from local mirror...
Materialized claude-desktop
Analyzing claude-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only static variable assignments and the definition of `package()` at the top level. No command substitutions (`$(…)` or backticks), no `eval` calls, and no invocations of external commands (curl, wget, etc.) exist in the global scope. The sole function defined, `package()`, is not executed when the PKGBUILD is sourced—it runs only during the packaging phase, which is out of scope for this gate. All variable values are plain strings or arrays thereof; the only expansions are simple parameter substitutions (e.g., `"${_baseurl}/${pkgname}_${pkgver}_amd64.deb"`) that reference other variables, not command output. Running `makepkg --printsrcinfo` on this file therefore cannot trigger any unintended network access, code execution, or data exfiltration.
</details>
<evidence>
</evidence>
<summary>
No executable top-level code; safe to source.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for the Arch User Repository (AUR) package `claude-desktop`. It contains no executable code, scripts, or instructions. All source URLs point to the official Anthropic domain (`downloads.claude.ai`), and the checksums are provided as explicit SHA-256 hashes (not `SKIP`). Dependencies are standard system libraries and tools appropriate for a desktop application that uses sandboxing (`bubblewrap`, `socat`, `virtiofsd`, `qemu-system-*`). There is no evidence of obfuscated content, unexpected network destinations, or any malicious behavior. The file is a standard, well-formed package metadata file.
</details>
<evidence>
</evidence>
<summary>Declarative package metadata; no executable or malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, claude-desktop.sh...
[1/4] Reviewing .gitignore, PKGBUILD, claude-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative package metadata; no executable or malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` template used in AUR package repositories. It solely contains comments explaining the purpose of the file and Git ignore rules for build artifacts (`*.deb`, `*.pkg.tar*`, `src/`, `pkg/`). There is no executable code, no network requests, no obfuscated content, and no commands that could be interpreted as malicious. It perfectly aligns with standard, safe packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore file.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-desktop.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward repackaging of Anthropic&#39;s official Debian package for Arch Linux. All source files are fetched from the official `downloads.claude.ai` domain with pinned SHA256 checksums. The `package()` function performs only expected operations: extracting the .deb payload, replacing the binary symlink with a Wayland-aware launcher (sourced from the PKGBUILD itself), setting the standard setuid bit on `chrome-sandbox`, removing Debian-specific lintian data, and creating symlinks to map Debian Cowork paths to Arch equivalents. No network requests, obfuscated code, or unexpected system modifications occur. The file follows standard AUR packaging conventions and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious behavior found.</summary>
</security_assessment>

LLM auditresponse for claude-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher wrapper for the Claude Desktop Electron application. It reads optional flags from a user-configurable file in `$XDG_CONFIG_HOME/claude-desktop-flags.conf` (default `~/.config/`), detects whether a Wayland session is active, and passes the appropriate `--ozone-platform` flag unless the user overrides it. All operations (reading a config file, checking environment variables, calling `exec` on the application binary) are routine packaging behavior. There are no network requests, obfuscated commands, dangerous shell operations (eval, base64, curl, wget), or any code that deviates from the stated purpose of launching the application. The script does not manipulate data outside its own application scope and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard launcher script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing claude-desktop.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious behavior found.
[4/4] Reviewing ...
+ Reviewed claude-desktop.sh. Status: SAFE -- Standard launcher script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,719
  Completion Tokens: 3,588
  Total Tokens: 20,307
  Total Cost: $0.002151
  Execution Time: 31.87 seconds

Final Status: SAFE


No issues found.
