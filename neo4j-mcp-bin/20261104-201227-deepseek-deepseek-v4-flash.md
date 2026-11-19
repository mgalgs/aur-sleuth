---
package: neo4j-mcp-bin
pkgver: 2.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9428
completion_tokens: 3886
total_tokens: 13314
cost: 0.001565200
execution_time: 38.38
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T20:12:26Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary PKGBUILD with pinned checksums.
  - file: neo4j-mcp.install
    status: safe
    summary: Informational post-install message only; no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
---

Materializing neo4j-mcp-bin from local mirror...
Materialized neo4j-mcp-bin
Analyzing neo4j-mcp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#x27;s global/top-level scope—the only code executed during `makepkg --printsrcinfo`—consists entirely of standard metadata variable assignments (`pkgname`, `pkgver`, `source_x86_64`, `sha256sums`, etc.). There are no command substitutions, backticks, `eval` invocations, `curl`/`wget` calls, or any other constructs that would execute arbitrary commands during sourcing.

The `package()` function defined at the bottom contains an `install` command, but it is purely a function definition. Function bodies are not executed during the `--printsrcinfo` parsing phase, so any content inside them is explicitly out of scope for this specific gate. No network requests, obfuscation, or unexpected file operations occur in the global scope.
</details>
<evidence></evidence>
<summary>Global scope has no executable threats.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no executable threats.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, neo4j-mcp.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is standard for a prebuilt binary package. It downloads the official release from the project's GitHub repository with pinned checksums, and installs the binary into `/usr/bin`. There are no suspicious network requests, obfuscated code, or unexpected system modifications.  
No evidence of supply chain injection or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard prebuilt binary PKGBUILD with pinned checksums.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, neo4j-mcp.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary PKGBUILD with pinned checksums.
LLM auditresponse for neo4j-mcp.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `neo4j-mcp.install` contains only a `post_install` function that prints an informational message to the terminal. It warns the user about the upstream application's default telemetry behavior (Mixpanel, MAC address included). No commands are executed that download, modify, exfiltrate, or run any external code. This is a standard, harmless AUR install script.
</details>
<evidence></evidence>
<summary>Informational post-install message only; no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed neo4j-mcp.install. Status: SAFE -- Informational post-install message only; no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It declares the package name, version, license, and two source tarballs (for x86_64 and aarch64) fetched from the official GitHub releases of the upstream project (neo4j/mcp). Both sources include pinned SHA256 checksums, ensuring integrity of the downloaded archives. There is no executable code, no obfuscation, and no instructions that perform any operation at build time or runtime. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,428
  Completion Tokens: 3,886
  Total Tokens: 13,314
  Total Cost: $0.001565
  Execution Time: 38.38 seconds

Final Status: SAFE


No issues found.
