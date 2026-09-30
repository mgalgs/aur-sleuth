---
package: ghidra-mcp
pkgver: 6.0.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12145
completion_tokens: 7195
total_tokens: 19340
cost: 0.00185745
execution_time: 195.01
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T23:27:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: ghidra-mcp.install
    status: safe
    summary: Standard informational install script; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Maven/Python packaging for a Ghidra extension; no malicious behavior found.
---

Materializing ghidra-mcp from local mirror...
Materialized ghidra-mcp
Analyzing ghidra-mcp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard global variable declarations, array definitions, and function definitions (build() and package()). There are no top-level command substitutions, backtick executions, or dangerous calls (e.g., curl, wget, eval) that would execute code during sourcing. The `install` variable is set to a plain filename. Running `makepkg --printsrcinfo` will only source these definitions and is therefore safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, ghidra-mcp.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard Arch User Repository metadata file for the `ghidra-mcp` package. It defines the package name, version, dependencies, source URL (from the project's own GitHub release archive), and a SHA-256 checksum. No suspicious or malicious content is present. All fields follow normal packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, ghidra-mcp.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for ghidra-mcp.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (`.install`). Its `post_install()` function only prints informational configuration instructions to the terminal using `echo` statements — showing the user how to set up the MCP bridge with Claude Desktop and Cline, and mentioning the default bridge port. `post_upgrade()` simply re-invokes `post_install()` to repeat the same informational message after an upgrade, which is a conventional and benign pattern.

There are no network requests, no downloads, no code execution, no file system modifications, no obfuscation, and no interaction with credentials or system configuration. The HTML entity encoding (`&quot;`, `&apos;`) is merely an artifact of how the content was presented in this audit request, not an actual encoding used to hide behavior in the file. Everything in this script falls within ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>Standard informational install script; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed ghidra-mcp.install. Status: SAFE -- Standard informational install script; no malicious behavior found.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows ordinary packaging practices for a Ghidra extension and Python MCP bridge. The source tarball is fetched over HTTPS from the project&apos;s own upstream GitHub repository (`github.com/bethington/ghidra-mcp`), which is expected behavior, and a pinned `sha256sums` entry is provided (note: in the pasted text the hash appears to be 61 hex characters rather than 64, which would just fail the checksum/build rather than being malicious — a hygiene issue at most, not a threat). No `curl|bash`, `eval`, base64/obfuscated code, `git pull`/`git reset --hard`, or downloads from unexpected hosts are present.

The `build()` function only sets up a JDK 21 environment, locates the system Ghidra installation, installs Ghidra JARs into a local Maven repository under `$srcdir/.m2`, and runs the upstream `mvn`/`python -m build` build systems — all standard build steps. The `package()` function installs the resulting wheel, extension ZIP, and documentation exclusively into `$pkgdir`, with no writes outside the package staging directory and no tampering with system configuration, credentials, or user data. The operations (`find` to locate installed artifacts, `mvn install:install-file`, `python -m installer`) are all consistent with legitimate Maven/Python packaging. I found no evidence of injected malicious code, data exfiltration, backdoors, or supply-chain behavior beyond the normal upstream software being built.
</details>
<evidence>
</evidence>
<summary>Standard Maven/Python packaging for a Ghidra extension; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Maven/Python packaging for a Ghidra extension; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,145
  Completion Tokens: 7,195
  Total Tokens: 19,340
  Total Cost: $0.001857
  Execution Time: 195.01 seconds

Final Status: SAFE


No issues found.
