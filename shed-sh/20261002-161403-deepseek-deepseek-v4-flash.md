---
package: shed-sh
pkgver: 0.45.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13320
completion_tokens: 3296
total_tokens: 16616
cost: 0.000557536
execution_time: 39.79
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-02T16:14:02Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: shed.install
    status: safe
    summary: Standard shell registration script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: verbump.sh
    status: safe
    summary: Standard version bump script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD; no malicious behavior or suspicious operations found.
---

Materializing shed-sh from local mirror...
Materialized shed-sh
Analyzing shed-sh AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and functions at the global/top-level scope. There are no command substitutions, backticks, `eval` invocations, or other code that would execute arbitrary commands during sourcing. The function bodies (`prepare`, `build`, `package`) are not run by `makepkg --printsrcinfo`. All variable assignments are plain strings; no dynamic content is fetched or executed. The escaped HTML entities in the maintainer line and description are inert and do not cause command execution. Sourcing this PKGBUILD presents no immediate risk.
</details>
<evidence>
</evidence>
<summary>No top-level execution; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution; sourcing is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: shed-sh-0.45.0.tar.gz::https://github.com/km-clay/shed/archive/v0.45.0.tar.gz
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard ignore patterns for build artifacts (`*.pkg.tar*`), source and package directories (`src/`, `pkg/`), tarball leftovers (`shed-sh-*`), and test build directories (`test-build*`). There is no executable code, network interaction, or any other potentially dangerous content. This file is purely a configuration file for Git to exclude certain files from version control, and meets standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
[1/5] Reviewing .SRCINFO, PKGBUILD, shed.install...
LLM auditresponse for shed.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.install` script that adds and removes the shell path `/usr/bin/shed` from `/etc/shells`.  
- `post_install()` checks if the entry exists; if not, it appends it.  
- `post_remove()` uses `sed` to delete the line on package removal.  

There are no suspicious network requests, obfuscated code, or dangerous operations. This is a normal packaging practice for adding a custom shell to the system shell list.
</details>
<evidence>
</evidence>
<summary>Standard shell registration script, no security issues.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed shed.install. Status: SAFE -- Standard shell registration script, no security issues.
[2/5] Reviewing .SRCINFO, PKGBUILD, verbump.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for the AUR package `shed-sh`. It declares metadata such as package version, description, license, dependencies (cargo, sqlite), and the upstream source URL (GitHub release tarball). No suspicious or malicious content is present. The use of `sha256sums = SKIP` is common in AUR packages and does not indicate malice. The file contains no code, no network requests, no obfuscation, and no unexpected operations. It is purely descriptive metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, verbump.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for verbump.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple version-bumping helper for AUR maintainers. It uses `vice` (likely a typo or a local editor/tool) to perform an in-place regex substitution on two files (`PKGBUILD` and `.SRCINFO`), replacing the project version number with the first command-line argument. There are no network requests, obfuscated code, file exfiltration, or execution of untrusted content. The script modifies only files that are part of the package build metadata, which is a standard maintainer task. The use of `&quot;` instead of plain double quotes is likely an artifact of HTML escaping in the prompt, but even if present literally, it would merely cause a scripting error without security impact.
</details>
<evidence></evidence>
<summary>Standard version bump script, no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed verbump.sh. Status: SAFE -- Standard version bump script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Rust packaging practices for an AUR package. It downloads the upstream source tarball from the project's own GitHub repository, runs `cargo fetch` and `cargo build`, then installs the built binary and documentation into the package directory. No obfuscated code, suspicious network destinations, encoded payloads, or unexpected system modifications are present.

The `sha256sums=(SKIP)` entry is a reproducibility/hygiene concern, but it is explicitly not to be treated as malicious by itself. The `sed` command modifying `Cargo.toml` removes the `bundled` feature, which is a routine source adjustment. The build uses the `stable` Rust toolchain, and all operations stay within the package source/build/install workflow. There is no evidence of exfiltration, backdoors, or execution of attacker-controlled code beyond normal dependency fetching and building.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD; no malicious behavior or suspicious operations found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD; no malicious behavior or suspicious operations found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,320
  Completion Tokens: 3,296
  Total Tokens: 16,616
  Total Cost: $0.000558
  Execution Time: 39.79 seconds

Final Status: SAFE


No issues found.
