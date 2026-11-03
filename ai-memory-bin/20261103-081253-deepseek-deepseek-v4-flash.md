---
package: ai-memory-bin
pkgver: 3.3.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11040
completion_tokens: 2144
total_tokens: 13184
cost: 0.001394848
execution_time: 16.52
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T08:12:52Z
file_verdicts:
  - file: ai-memory.install
    status: safe
    summary: Install script only prints informational here-doc messages; no execution, no threats.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; upstream GitHub sources with pinned checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary PKGBUILD; pinned upstream release checksums, no malicious code.
---

Materializing ai-memory-bin from local mirror...
Materialized ai-memory-bin
Analyzing ai-memory-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD top level. This file consists of variable assignments, source/checksum arrays, and function definitions; there are no top-level command substitutions, network fetches, file modifications, or encoded command execution. The references to `sed` and `curl` are inside comments and are not executed.

The `package()` function contains install/copy operations, but it is not run during `--printsrcinfo`, so it is out of scope for this gate. The declared sources point to the project's own GitHub release assets and have checksums, though no sources are downloaded at this step.
</details>
<evidence>
</evidence>
<summary>No top-level execution; package function not run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution; package function not run.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, ai-memory.install...
LLM auditresponse for ai-memory.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman `.install` script file. It contains only `post_install()` and `post_upgrade()` hooks, and both consist solely of `cat &lt;&lt;'EOF' ... EOF` here-documents that print informational messages to the user. There is no command execution, no network access, no file operations, no `eval`/`base64`, and no obfuscation.

The commands mentioned (`systemd-sysusers`, `systemd-tmpfiles`, `systemctl enable --now`, `ai-memory setup`) appear only as *text inside the printed message* — the user is told to run them manually. They are consistent with the application's documented setup for a user or system service (creating a data directory, a bearer token, and a systemd unit) and reference only the package's own config paths (`/etc/ai-memory/...`, `~/.config/ai-memory/env`). Nothing here deviates from ordinary AUR/packaging practice.

</details>
<evidence>
</evidence>
<summary>Install script only prints informational here-doc messages; no execution, no threats.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed ai-memory.install. Status: SAFE -- Install script only prints informational here-doc messages; no execution, no threats.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for a prebuilt binary package. It downloads versioned release tarballs from the project's own GitHub repository, and both architecture-specific sources are pinned with SHA-256 checksums. No commands, obfuscated content, eval/base64 usage, or unexpected network destinations are present in this file. The referenced install script and binary contents are not included here and cannot be evaluated from this metadata alone.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; upstream GitHub sources with pinned checksums.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; upstream GitHub sources with pinned checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a conventional PKGBUILD for a prebuilt binary package. It fetches release tarballs from the upstream project's own GitHub Releases (`https://github.com/akitaonrails/ai-memory/releases/download/v$pkgver/...`) and pins them with concrete sha256 checksums (`bb967293...` for x86_64, `e6745926...` for aarch64). There is no `eval`, no base64/hex-obfuscated payload, no `curl | bash`, no `wget` of external code, and no data exfiltration. The `package()` function only installs files into `$pkgdir`.

The remaining content — docs, license, hooks, config template, env file, systemd units, sysusers and tmpfiles configs — is normal, expected packaging for a local-first MCP server that can run as a service. The maintainer comment noting that pkgver/checksums are rewritten by CI at publish time is a maintenance note, not executable behavior. No injected or unexpected operations are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR binary PKGBUILD; pinned upstream release checksums, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary PKGBUILD; pinned upstream release checksums, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,040
  Completion Tokens: 2,144
  Total Tokens: 13,184
  Total Cost: $0.001395
  Execution Time: 16.52 seconds

Final Status: SAFE


No issues found.
