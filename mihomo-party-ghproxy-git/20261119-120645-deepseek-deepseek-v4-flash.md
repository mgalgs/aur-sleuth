---
package: mihomo-party-ghproxy-git
pkgver: 2.0.4.r32.ge837463
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 17623
completion_tokens: 5990
total_tokens: 23613
cost: 0.00266427
execution_time: 39.6
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T12:06:44Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR build artifact ignore file.
  - file: README.md
    status: safe
    summary: Documentation only, no executable content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD with no malicious behavior.
  - file: github-route.sh
    status: safe
    summary: Legitimate proxy route selection helper for GitHub downloads.
---

Materializing mihomo-party-ghproxy-git from local mirror...
Materialized mihomo-party-ghproxy-git
Analyzing mihomo-party-ghproxy-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD only performs standard variable assignments (`pkgname`, `source`, `sha256sums`, etc.), one benign command substitution to resolve the path to a sibling script (`_route_file=$(realpath ...)`), and one function definition (`git() { ... }`). Defining a function does not execute its body; the body of `git()` — which sources `github-route.sh` and calls `_github_git` — only runs when `git` is actually invoked. Since `makepkg --printsrcinfo` does not call `git` or download any sources, none of the build‑stage logic in `prepare()`, `build()`, or `package()` is triggered. No top‑level code downloads payloads, exfiltrates data, or executes arbitrary commands.
</details>
<evidence></evidence>
<summary>Safe: top-level only assigns variables and defines a function.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: top-level only assigns variables and defines a function.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file contains standard ignore patterns for an AUR package build directory (e.g., `/src/`, `/pkg/`, compiled package files `/*.pkg.tar.*`). There is no obfuscated code, network requests, file operations, or any command execution. The patterns are entirely conventional and serve only to prevent build artifacts from being tracked in version control. No security concerns.
</details>
<evidence></evidence>
<summary>Standard AUR build artifact ignore file.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, README.md...
[1/5] Reviewing .SRCINFO, PKGBUILD, README.md...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR build artifact ignore file.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a README.md documenting the purpose and usage of the AUR package. It contains no executable code, no network requests, no file operations, and no obfuscated content. It simply describes how to build the package and configure proxies. This is standard documentation and poses no security risk.
</details>
<evidence></evidence>
<summary>Documentation only, no executable content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, README.md, github-route.sh...
[2/5] Reviewing .SRCINFO, PKGBUILD, github-route.sh...
+ Reviewed README.md. Status: SAFE -- Documentation only, no executable content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for an Arch User Repository package. It contains no executable code, only package names, version, dependencies, source URLs, and checksums. The `sha256sums = SKIP` for the git source is standard practice for VCS sources and is not a security issue. The other source (`github-route.sh`) has a proper SHA256 checksum. There is no evidence of obfuscation, dangerous commands, network exfiltration, or any malicious behavior. The file is consistent with normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, github-route.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard VCS package that clones the upstream `clash-party` repository from GitHub. It includes a custom `github-route.sh` script (pinned with a SHA-256 checksum) that wraps git clone/fetch operations to route them through a GitHub proxy – consistent with the package&#x27;s `ghproxy` suffix. The `git()` function only intercepts operations targeting the exact upstream URL, and deferred to the verified route script; there is no generic command injection or arbitrary network pull.  
The build process uses `pnpm` and extracts a `.deb` artifact – normal for an Electron app. The `package()` function sets `chmod 4755` on `chrome-sandbox`, a standard requirement for Chromium sandboxing. No obfuscated code, unexpected downloads, exfiltration, or system-wide tampering is present.  
The only hygiene note is the `SKIP` checksum for the VCS source, which is expected for `-git` packages. Overall, the file shows no sign of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing github-route.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD with no malicious behavior.
LLM auditresponse for github-route.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This helper script manages proxy selection for GitHub operations during the build of the mihomo-party-ghproxy-git package. All network destinations are to the user-configured proxy (via environment variables) and to the GitHub raw content server (the project's legitimate upstream). The script performs speed comparisons between direct and proxied routes using a 512 KiB sample from a Google Fonts repository – a benign benchmarking activity that does not exfiltrate any data or execute untrusted code. No obfuscation, dangerous commands (eval, base64, curl|bash), or unexpected file operations are present. The behavior aligns with the package's stated purpose of optimizing downloads via a proxy.
</details>
<evidence></evidence>
<summary>Legitimate proxy route selection helper for GitHub downloads.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed github-route.sh. Status: SAFE -- Legitimate proxy route selection helper for GitHub downloads.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,623
  Completion Tokens: 5,990
  Total Tokens: 23,613
  Total Cost: $0.002664
  Execution Time: 39.60 seconds

Final Status: SAFE


No issues found.
