---
package: pw-live-danmaku-git
pkgver: r24.6070b8a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12807
completion_tokens: 1673
total_tokens: 14480
cost: 0.00252565
execution_time: 37.33
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-05T07:04:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR -git metadata; VCS checksums SKIP; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: pw-live-danmaku-git.install
    status: safe
    summary: Install script only prints usage instructions; contains no malicious or suspicious behavior.
---

Materializing pw-live-danmaku-git from local mirror...
Materialized pw-live-danmaku-git
Analyzing pw-live-danmaku-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgname, pkgver, depends, source, etc.) and function definitions for prepare(), pkgver(), build(), and package(). No command substitutions, eval, curl, wget, or other executable code exists in the global scope. The `source` array uses git URLs with SKIP checksums, which is normal for VCS packages and does not trigger any download or execution during `makepkg --printsrcinfo`. The functions are not invoked during this parsing step, so their contents are irrelevant for this gate. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; only variable definitions and functions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; only variable definitions and functions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, pw-live-danmaku-git.install...
[0/3] Reviewing PKGBUILD, pw-live-danmaku-git.install, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a `-git` package. It declares two VCS sources from the project's own GitHub repositories, both with `sha256sums = SKIP`, which is expected and required for VCS sources. The dependencies (`curl`, `openssl`, `brotli`, `pipewire`, etc.) are reasonable for a chat-rendering PipeWire plugin. The `install` file and `optdepends` entries are ordinary packaging metadata.

No malicious content is present: there are no network fetch-and-execute commands, no obfuscated code, no suspicious file operations, and no data exfiltration. The unpinned VCS sources are a standard `-git` package practice and are not a supply-chain attack by themselves. The package has no `prepare()` or `build()` functions in this file, so there is nothing here that fetches unchecked content beyond the declared `source` entries.
</details>
<evidence>
</evidence>
<summary>
Standard AUR -git metadata; VCS checksums SKIP; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, pw-live-danmaku-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR -git metadata; VCS checksums SKIP; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a `-git` package. It clones the upstream source and a required submodule repository (both from the package's own GitHub organization), builds with `make`, and installs a binary, documentation, and a systemd user unit. There is no obfuscated code, no unexpected network requests, no exfiltration of local data, and no execution of untrusted downloaded content. The `sha256sums` are set to `SKIP`, which is normal for VCS sources. The unit file rendering uses `sed` to replace placeholders with paths appropriate for a packaged binary, which is a legitimate packaging operation. There are no signs of malicious injection; the package does exactly what its description states.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing pw-live-danmaku-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
LLM auditresponse for pw-live-danmaku-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` script contains only `post_install()` and `post_upgrade()` functions that print a usage/configuration message via a `cat &lt;&lt;'EOF'` heredoc. The heredoc is quoted (`'EOF'`), so no variable expansion or command substitution occurs, and the text is purely informational — it explains how to enable the systemd user unit, change the room ID, use `--cookie-file`, and similar options.

No commands are executed other than `cat` to print text. There are no network requests, no downloads, no file writes, no encoded or obfuscated content, and no modification of system files. The `systemctl` and `pw-live-danmaku` commands appear only inside the printed instructions for the user to run manually, not as commands invoked by the install script itself. This is standard packaging practice for an AUR package install script.
</details>
<evidence>
</evidence>
<summary>
Install script only prints usage instructions; contains no malicious or suspicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed pw-live-danmaku-git.install. Status: SAFE -- Install script only prints usage instructions; contains no malicious or suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,807
  Completion Tokens: 1,673
  Total Tokens: 14,480
  Total Cost: $0.002526
  Execution Time: 37.33 seconds

Final Status: SAFE


No issues found.
