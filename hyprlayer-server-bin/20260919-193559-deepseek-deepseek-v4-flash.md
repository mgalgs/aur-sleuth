---
package: hyprlayer-server-bin
pkgver: 0.8.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9801
completion_tokens: 2136
total_tokens: 11937
cost: 0.00056348292
execution_time: 43.45
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T19:35:58Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious activity found.
  - file: hyprlayer-server.service
    status: safe
    summary: Clean systemd service unit file.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned sources and valid checksums; no malicious behavior.
---

Materializing hyprlayer-server-bin from local mirror...
Cloning https://aur.archlinux.org/hyprlayer-server-bin.git...
Cloned hyprlayer-server-bin
Analyzing hyprlayer-server-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No dangerous top-level code exists in this PKGBUILD. All variable definitions are static strings or arrays. The `package()` function (which contains `install` commands) is not executed during `makepkg --printsrcinfo`. There are no command substitutions, external network fetches, or other potentially malicious operations in the global scope.
</details>
<evidence></evidence>
<summary>No malicious top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code present.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, hyprlayer-server.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary release. It downloads a prebuilt binary from the project's official GitHub releases, checksums are pinned and verified (no SKIP), and installation is a simple `install -Dm755` along with a systemd user service file. There is no obfuscated code, no unexpected network requests, no execution of unchecked content, and no exfiltration or backdoor injection. The use of `git` as a dependency is likely for the upstream application's functionality (e.g., interacting with git repositories) and is not a supply-chain risk. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious activity found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, hyprlayer-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious activity found.
LLM auditresponse for hyprlayer-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the `hyprlayer-server` package. It defines a simple service that starts `/usr/bin/hyprlayer-server serve` and configures restart behavior. The comments are explanatory and consistent with normal packaging documentation. There are no network requests, obfuscated commands, file modifications, or any other indicators of malicious activity. The file adheres to expected AUR packaging practices.
</details>
<evidence></evidence>
<summary>Clean systemd service unit file.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed hyprlayer-server.service. Status: SAFE -- Clean systemd service unit file.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is a standard package metadata file for a `-bin` AUR package. It declares a proprietary prebuilt binary from the project's own GitHub releases (`BrightBlock/hyprlayer-releases`), which is consistent with the stated project URL (`brightblock.ai/hyprlayer`). Both source entries have explicit, non-SKIP sha256 checksums, which is good supply-chain hygiene since the downloaded binary is pinned to a specific release version (`server-v0.8.3`).

The optdepends entries describing the runtime shelling out to `claude-code`, `github-cli`, and `hyprlayer` describe the application's own functionality (an agent runtime reaching tools/agents over a local socket or SSH), not injected malicious behavior. There is no obfuscated code, no unexpected network endpoints, no file tampering, no credential access, and no attempt to fetch or execute code outside the declared upstream source. The unescaped use of a single service file from the local AUR directory is standard practice. Nothing in this file deviates from ordinary packaging practice or shows evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata with pinned sources and valid checksums; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned sources and valid checksums; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,801
  Completion Tokens: 2,136
  Total Tokens: 11,937
  Total Cost: $0.000563
  Execution Time: 43.45 seconds

Final Status: SAFE


No issues found.
