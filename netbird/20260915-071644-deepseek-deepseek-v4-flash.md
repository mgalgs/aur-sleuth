---
package: netbird
pkgver: 0.78.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11326
completion_tokens: 5861
total_tokens: 17187
cost: 0.002042191088
execution_time: 131.2
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T07:16:43Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service with proper security hardening.
  - file: PKGBUILD
    status: safe
    summary: Standard Go package build with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; pinned upstream source, no malicious behavior.
---

Materializing netbird from local mirror...
Materialized netbird
Analyzing netbird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global (top-level) scope. The top-level scope of this PKGBUILD contains standard variable assignments (e.g., `pkgbase`, `pkgver`, `url`, `arch`, `makedepends`, `source`, `sha256sums`), array definitions, and function definitions for `prepare()`, `build()`, `check()`, `_completions()`, and the two `package_*()` functions.

Crucially, there are no dangerous command substitutions (`$(...)` or backticks), `eval` calls, obfuscated code, or active network/file execution commands (e.g., `curl`, `wget`, `exec`) in the global scope. The functions are merely *defined* here, not invoked, during `makepkg --printsrcinfo`.

Since the top-level environment is benign and performs no risky operations, sourcing it for metadata extraction is safe. A thorough audit of the `prepare()`, `build()`, and `package()` function bodies will still be conducted in a subsequent step, but no immediate threat exists for this narrow parsing gate.
</details>
<evidence>
</evidence>
<summary>Top-level scope contains only safe definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only safe definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, netbird-server.service...
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the `netbird-server` service. It declares standard dependencies, runs the server binary from `/usr/bin/netbird-server` with a configuration file path, and includes extensive security hardening options (e.g., `NoNewPrivileges=yes`, `ProtectSystem=yes`, `PrivateTmp=yes`) that follow recommended sandboxing practices. There is no suspicious code, network requests, obfuscation, or unexpected commands. The file performs no dynamic execution or external data fetching; it is purely a declarative service definition. It aligns fully with expected AUR packaging for a system service.
</details>
<evidence></evidence>
<summary>Standard systemd service with proper security hardening.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service with proper security hardening.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Go project. The source tarball is fetched over HTTPS from the project&apos;s official upstream GitHub repository (netbirdio/netbird) at a pinned release tag (v0.78.2), and both the tarball and the systemd unit are covered by pinned SHA-256 checksums — no `SKIP` entries and no unpinned VCS fetch. This is good supply-chain hygiene.

The build process is ordinary for Go packages: `prepare()` runs `go mod download -x` to fetch the module dependencies declared by the upstream project, and `build()` exports normal `CGO`/Go flags, runs `go build` on the upstream client/combined targets, and generates shell completions from the locally built binary. The package functions install the built binary, license, completions, an env file, and systemd service units into standard paths under `$pkgdir`. There are no network requests to unexpected hosts, no `eval`/`base64`/`curl|bash`, no obfuscated code, and no file operations outside the package install scope.
</details>
<evidence>
</evidence>
<summary>
Standard Go package build with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go package build with pinned checksums; no malicious behavior found.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata file for netbird 0.78.2. It contains only declarative metadata: package name, version, architecture list, dependencies, source URLs, and sha256 checksums. There is no executable code, no shell commands, no network callback logic, and no file operations.

The single remote source is the official upstream GitHub archive for the netbirdio/netbird project, pinned to a specific release tag (v0.78.2) over HTTPS, and both source entries have concrete sha256 checksums (no SKIP). The additional netbird-server.service is the package's own systemd unit file. This matches ordinary AUR packaging practice; there is no evidence of injected or hidden malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; pinned upstream source, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; pinned upstream source, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,326
  Completion Tokens: 5,861
  Total Tokens: 17,187
  Total Cost: $0.002042
  Execution Time: 131.20 seconds

Final Status: SAFE


No issues found.
