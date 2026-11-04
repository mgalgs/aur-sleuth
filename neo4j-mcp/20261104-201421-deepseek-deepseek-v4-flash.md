---
package: neo4j-mcp
pkgver: 2.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9648
completion_tokens: 1497
total_tokens: 11145
cost: 0.001150422
execution_time: 26.33
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T20:14:20Z
file_verdicts:
  - file: neo4j-mcp.install
    status: safe
    summary: Informational telemetry notice, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, pinned checksum, no malice.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators found.
---

Materializing neo4j-mcp from local mirror...
Materialized neo4j-mcp
Analyzing neo4j-mcp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The global scope contains only standard variable assignments (`pkgname`, `pkgver`, `arch`, `source`, `sha256sums`, etc.) and function definitions. There are no top-level command substitutions, `eval`/`source` of external content, network fetches, or file-modifying operations that would execute during sourcing.

The `prepare()`, `build()`, `check()`, and `package()` functions contain Go build/test/install logic, but those are not executed by `makepkg --printsrcinfo`. The pinned tar.gz source and fixed checksum are normal packaging practice; no download occurs at this step.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; only standard variables and function definitions execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only standard variables and function definitions execute.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, neo4j-mcp.install...
LLM auditresponse for neo4j-mcp.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that displays a notice about upstream telemetry. It contains only `echo` statements with informational text. There are no dangerous operations, network requests, obfuscation, or any deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Informational telemetry notice, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed neo4j-mcp.install. Status: SAFE -- Informational telemetry notice, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR metadata. It references the official Neo4j MCP GitHub repository as the source (`https://github.com/neo4j/mcp/archive/refs/tags/v2.1.0.tar.gz`) and provides a SHA-256 checksum (not SKIP). Dependencies (`glibc`, `go`) are typical for a Go-based application. No obfuscated code, suspicious network requests, or dangerous commands are present. The file contains only declarative packaging metadata.
</details>
<evidence></evidence>
<summary>Standard metadata, pinned checksum, no malice.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, pinned checksum, no malice.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a Go project. It fetches the source tarball from the official Neo4j MCP GitHub repository with a pinned version and a valid SHA-256 checksum. All build steps (prepare, build, check, package) use standard Go toolchain commands (`go mod download`, `go build`, `go test`) and install the resulting binary to `/usr/bin`. There are no suspicious network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or any operations that deviate from the application&#x27;s stated purpose. No supply-chain attack vectors are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,648
  Completion Tokens: 1,497
  Total Tokens: 11,145
  Total Cost: $0.001150
  Execution Time: 26.33 seconds

Final Status: SAFE


No issues found.
