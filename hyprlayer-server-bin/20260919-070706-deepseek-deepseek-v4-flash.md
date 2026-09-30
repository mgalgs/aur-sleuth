---
package: hyprlayer-server-bin
pkgver: 0.8.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9816
completion_tokens: 3013
total_tokens: 12829
cost: 0.00074520768
execution_time: 81.67
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:07:06Z
file_verdicts:
  - file: hyprlayer-server.service
    status: safe
    summary: Standard systemd service unit file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: "Clean, standard PKGBUILD: pinned checksums, upstream HTTPS source, no malicious behavior."
---

Materializing hyprlayer-server-bin from local mirror...
Materialized hyprlayer-server-bin
Analyzing hyprlayer-server-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and a `package()` function in its global scope. There are no command substitutions, `eval`, `curl`, `wget`, or any other executable operations that would run when the file is sourced by `makepkg --printsrcinfo`. All values are literal strings or simple variable expansions using `${pkgver}`, `${_bin}`, etc., which are safe at parse time. The `package()` function is not executed during this step. No obfuscated or dangerous top-level code is present.
</details>
<evidence></evidence>
<summary>No executable code at global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at global scope; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, hyprlayer-server.service...
LLM auditresponse for hyprlayer-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the hyprlayer-server binary. It defines a simple service that executes `/usr/bin/hyprlayer-server serve` with restart on failure. The comments explain design decisions (e.g., no SSH_AUTH_SOCK environment variable to avoid freezing) and installation behavior. There is no evidence of malicious content: no network requests, obfuscated code, unexpected file operations, or deviations from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed hyprlayer-server.service. Status: SAFE -- Standard systemd service unit file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR metadata for a prebuilt binary package. It defines the package name, version, dependencies, and sources. The sources are the upstream binary release from the project's official GitHub repository and a systemd service file, both with pinned SHA-256 checksums. There is no obfuscated code, no suspicious network destinations, no attempts to exfiltrate data, and no commands to execute at build time within this file. The file only describes the package; the actual build and install logic would be in the PKGBUILD. As a metadata file, it poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for a prebuilt binary package. The source is fetched over HTTPS from the project&apos;s own GitHub releases page, and both the binary and the systemd user unit have pinned SHA-256 checksums — no SKIP entries, no unpinned or mutable source, no build-time fetching. The `package()` function only installs the binary into `/usr/bin` and a user-level systemd unit into `/usr/lib/systemd/user/`, which is the correct, conventional location for a package-provided user unit. The unit is installed but not enabled, matching standard Arch packaging practice.

There is no obfuscated code, no `eval`, no base64/hex encoding, no curl-or-wget piped to a shell, no exfiltration of local data, and no modifications outside `$pkgdir`. The `depends=(&apos;git&apos;)` and optdepends (claude-code, github-cli, hyprlayer) are consistent with the stated purpose of a headless server that orchestrates agentic coding sessions. The only inherent trust consideration is that this is a proprietary prebuilt binary that cannot be source-audited — users must trust the BrightBlock release — but that is expected for a `-bin` package, and the pinned checksum means the file is verified before install. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Clean, standard PKGBUILD: pinned checksums, upstream HTTPS source, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard PKGBUILD: pinned checksums, upstream HTTPS source, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,816
  Completion Tokens: 3,013
  Total Tokens: 12,829
  Total Cost: $0.000745
  Execution Time: 81.67 seconds

Final Status: SAFE


No issues found.
