---
package: eitri-git
pkgver: 0.2.0.0.gd0d362e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16292
completion_tokens: 2378
total_tokens: 18670
cost: 0.000884016
execution_time: 63.2
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T07:08:27Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; package follows normal AUR build practices.
---

Materializing eitri-git from local mirror...
Materialized eitri-git
Analyzing eitri-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and function declarations at the global (top-level) scope.  There is no command substitution, eval, or any other code that would execute when the PKGBUILD is sourced by `makepkg --printsrcinfo`.  All potentially dangerous operations (curling the Skia archive, git operations, etc.) are confined to the `prepare()`, `build()`, and `package()` functions, which are **not** executed by `--printsrcinfo`.  Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution on sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution on sourcing.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for a `-git` package. It declares upstream Git sources from the project's own GitHub repository, plus an upstream Neovide fork and Verdandi repository, and a pinned Node.js binary tarball from the official nodejs.org domain with a fixed SHA-256 checksum. No shell commands, network requests, file modifications, or code execution instructions are present in this file.

The `sha256sums = SKIP` entries apply only to the VCS Git sources, which is normal and expected for `-git` packages. The Node.js tarball has a real checksum. No obfuscated content, suspicious downloads, credential access, or system tampering appears anywhere in the metadata. The package depends on normal build and runtime components appropriate for a Neovim/Claude Code-related project.

Overall, this file contains only package metadata and does not exhibit any malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious behavior found.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is consistent with normal AUR VCS packaging practices. It builds from the project&apos;s own git sources, uses `cargo build --frozen`, invokes upstream packaging scripts, and installs built artifacts into `$pkgdir`. The `sha256sums=(&apos;SKIP&apos; ...)` entries are expected for git sources and are not a security finding. The use of a pinned commit for the Verdandi sidecar, including validation that the revision is 40 hex characters, is a supply-chain hygiene measure rather than an attack.

The prepare/build steps reference local clones, local git archives, and upstream build tooling. `git submodule update` and `git checkout` operate on repositories declared in the `source` array and are not fetching unchecked remote content outside the normal build flow. There is no evidence of obfuscated commands, encoded payloads, exfiltration, remote script execution, or tampering with system files outside the package destination. The references to npm, Node, and Skia binaries appear to be part of the project&apos;s declared sidecar build process, not an injected attack.
</details>
<evidence></evidence>
<summary>No malicious behavior found; package follows normal AUR build practices.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; package follows normal AUR build practices.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,292
  Completion Tokens: 2,378
  Total Tokens: 18,670
  Total Cost: $0.000884
  Execution Time: 63.20 seconds

Final Status: SAFE


No issues found.
