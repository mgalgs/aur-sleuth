---
package: pacman-tmpfs
pkgver: 2026.10.25
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14910
completion_tokens: 3181
total_tokens: 18091
cost: 0.001935752
execution_time: 30.92
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T23:01:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no security issues.
  - file: pacman-tmpfs.install.sh
    status: safe
    summary: Safe; reads temporary file for display, no execution.
  - file: PKGBUILD
    status: safe
    summary: Wrapper for tmpfs cache, no malicious behavior found.
---

Materializing pacman-tmpfs from local mirror...
Materialized pacman-tmpfs
Analyzing pacman-tmpfs AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD sets variables, defines a heredoc for `_usage` and `_script`, and immediately writes the usage text to `/tmp/pacman-tmpfs_usage.txt`. Writing a simple text file to `/tmp` is not inherently dangerous—it does not execute unknown code, exfiltrate data, or modify system files. The `_script` heredoc uses single-quote delimiters (`'EOF'`), so no command substitution or variable expansion occurs inside it. The `pkgver()`, `prepare()`, `build()`, and `package()` functions (including the `package()` function that writes `_script` to disk and creates symlinks) are not executed during `makepkg --printsrcinfo`. No downloading, obfuscated commands, or suspicious network activity is present in the top-level code. Therefore, sourcing this PKGBUILD to print SRCINFO is safe.
</details>
<evidence></evidence>
<summary>Only writes a usage file to /tmp; no dangerous global code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only writes a usage file to /tmp; no dangerous global code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, pacman-tmpfs.install.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an AUR package. It contains only textual fields describing the package: name, description, version, URL, install script reference, architecture, license, dependencies, and build options. There is no executable code, encoded payloads, network requests, or any behavior that could constitute a supply-chain attack. The unusual URL scheme ("tip://_See_PKGBUILD_for_usage_") is a placeholder and poses no risk. No security concerns are present in this file.
</details>
<evidence></evidence>
<summary>Standard metadata, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, pacman-tmpfs.install.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no security issues.
LLM auditresponse for pacman-tmpfs.install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script reads a file from `/tmp/pacman-tmpfs_usage.txt` and prints its contents, then deletes the file. This is a standard pattern for displaying multi-line usage messages during package installation. While `/tmp` is world-writable and could be subject to local tampering (e.g., a symlink attack or race condition), the content is only printed to stdout via `printf` with a `%s` format specifier—it is never executed or interpreted as a command. There is no obfuscation, no network activity, no code injection, and no exfiltration of data. The behaviour is consistent with ordinary packaging practices for showing installation notes. The local file handling risk is a minor security consideration but does not constitute a supply-chain attack or genuinely malicious behaviour.
</details>
<evidence></evidence>
<summary>Safe; reads temporary file for display, no execution.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed pacman-tmpfs.install.sh. Status: SAFE -- Safe; reads temporary file for display, no execution.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines the `pacman-tmpfs` package, which is a wrapper script that redirects pacman/yay/paru operations to temp directories on tmpfs. The included heredoc script (`_script`) performs standard operations: creating temporary directories and configs (copies of `/etc/pacman.conf` and `/etc/makepkg.conf`), cleaning cache directories (both pacman's and the AUR helpers' caches), and then calling the original packer binary with environment overrides. There are no network requests, no downloads of external code, no obfuscated/encoded commands, and no attempts to exfiltrate data. The destructive `rm -rf` calls on cache directories are consistent with the package's stated goal of using tmpfs instead of persistent cache. The symlink replacements of `pacman`, `yay`, and `paru` in `/usr/local/bin` are the package's intended behavior to intercept calls. No evidence of supply-chain attack or malicious injection is present.
</details>
<evidence></evidence>
<summary>Wrapper for tmpfs cache, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Wrapper for tmpfs cache, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,910
  Completion Tokens: 3,181
  Total Tokens: 18,091
  Total Cost: $0.001936
  Execution Time: 30.92 seconds

Final Status: SAFE


No issues found.
