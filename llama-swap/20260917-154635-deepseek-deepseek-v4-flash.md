---
package: llama-swap
pkgver: v256
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11701
completion_tokens: 5633
total_tokens: 17334
cost: 0.00160769
execution_time: 101.55
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T15:46:35Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore pattern, no security concerns.
  - file: llama-swap.service
    status: safe
    summary: Clean systemd service unit, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard Arch build and install process.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative AUR metadata; pinned upstream source; no malicious behavior found.
---

Materializing llama-swap from local mirror...
Materialized llama-swap
Analyzing llama-swap AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. No commands are executed during sourcing that could download, exfiltrate data, or run untrusted payloads. There are no unsafe command substitutions, no dangerous global code, and all work is deferred to the `build()` and `package()` functions which are not executed by `makepkg --printsrcinfo`. This step is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only the pattern `*/`, which is a standard Git ignore rule that matches all directories (and often their contents depending on interpretation). There is no obfuscated code, no network requests, no system file operations, and no deviation from normal packaging practices. This file is benign.
</details>
<evidence></evidence>
<summary>Standard gitignore pattern, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore pattern, no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, llama-swap.service...
LLM auditresponse for llama-swap.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the llama-swap application. It uses `DynamicUser=yes`, stores state in `/var/lib/llama-swap`, and runs the binary with a configuration file from `/etc/llama-swap/config.yaml`. The service binds only to `127.0.0.1:12434`, which is loopback — a safe practice for a local API server. No suspicious commands, network requests, obfuscated code, or system modifications are present. The unit follows standard packaging conventions and presents no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Clean systemd service unit, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed llama-swap.service. Status: SAFE -- Clean systemd service unit, no security concerns.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a standard Arch packaging pattern. It declares the source as the upstream GitHub repository for llama-swap at a tagged release, provides checksums, and builds the project with the project's own Makefile targets (`make linux-amd64` or `make linux-arm64`) based on architecture. The package function installs only expected files owned by the package: the license, an example config, a systemd unit, and the compiled binary.

No suspicious behavior is present. There is no use of `eval`, base64 decoding, `curl | bash`, unexpected network requests, or file writes outside the package directory. The git source references a tag rather than a commit and includes a non-SKIP checksum entry, which is somewhat unusual for a VCS source, but this is a packaging hygiene concern at most and not evidence of malicious behavior. The systemd service file is also built from the package's own source and installed normally.

Overall, this file is consistent with legitimate AUR packaging and does not contain injected or hidden code.
</details>
<evidence></evidence>
<summary>No malicious behavior; standard Arch build and install process.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard Arch build and install process.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata record for the llama-swap package. It contains purely declarative data: package name, description, upstream URL, architectures, license, dependencies, and source checksums. There is no executable code, embedded script, or install-time logic in this file — its only purpose is to describe the package build to makepkg/pacman.

The single source is fetched from the package's own upstream GitHub repository (github.com/mostlygeek/llama-swap) pinned to a specific tag (v256), which is the expected and conventional location for this project's code. Both source entries (the git archive and the systemd service file) include sha256 checksums, and there are no SKIP checksums, no suspicious download hosts, no curl|bash patterns, no base64/eval obfuscation, and no file-manipulation or data-exfiltration behavior anywhere in the file. The declared dependencies (curl, gcc-libs, glibc) and makedepends (git, go, npm) are consistent with a Go-based tool that manages and proxies llama.cpp-compatible servers.

One minor packaging note: a git+https source entry would more commonly use SKIP for its checksum rather than a literal hash; if that hash does not match what makepkg computes for a git clone, the build could fail in a clean environment. That is a correctness/hygiene concern at most and does not indicate malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard declarative AUR metadata; pinned upstream source; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative AUR metadata; pinned upstream source; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,701
  Completion Tokens: 5,633
  Total Tokens: 17,334
  Total Cost: $0.001608
  Execution Time: 101.55 seconds

Final Status: SAFE


No issues found.
