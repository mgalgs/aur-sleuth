---
package: herdr-core-bin
pkgver: 0.1.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7809
completion_tokens: 4590
total_tokens: 12399
cost: 0.001545999
execution_time: 34.4
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-30T15:19:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksummed binaries.
---

Materializing herdr-core-bin from local mirror...
Materialized herdr-core-bin
Analyzing herdr-core-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD was analyzed specifically for dangerous top-level code that would execute during `makepkg --printsrcinfo`. The file consists entirely of static variable assignments (arrays like `source`, `provides`, `sha256sums`) and a single function definition (`package()`). There are no command substitutions, `eval` calls, `curl|bash` patterns, `source`/`.` commands loading external files, or other executable statements at the top level. The `sha256sums=('SKIP')` entry is explicitly excluded from flagging for this specific gate by the assessment rules. The `package()` function contains installation commands (`install`, `ln`) but it is a function definition whose body is not executed during the `--printsrcinfo` phase. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No top-level code executes; perfectly safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes; perfectly safe to parse.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE::https://raw.githubusercontent.com/herdrdev/herdr-core/master/LICENSE
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file, containing only package definition attributes: name, version, architecture, dependencies, sources, and checksums. All source URLs point to the package's own upstream (herdr.dev and a GitHub repository under the `herdrdev` organization), which is expected and benign. The use of `SKIP` for the `sha256sums` of the `LICENSE` source is a common practice for VCS sources and, per the guidelines, is not evidence of malice. No code, scripts, commands, or instructions are present that could execute or modify the system. There are no obfuscated strings, no network requests initiated by this file (it merely declares upstream URLs), and no unusual or dangerous content. Therefore, the file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt binary from the project&#x27;s own release domain (`releases.herdr.dev`) with a fixed SHA256 checksum, and installs only the binary, a symlink, and a LICENSE file into standard system paths. No obfuscated code, network requests beyond the declared upstream sources, unexpected file operations, or dangerous commands (eval, curl|bash, etc.) are present. The `SKIP` checksum on the LICENSE source is an accepted practice for VCS-pinned files and is not a security concern here. The package function is minimal and performs no system modifications outside of its own installation directory. There is no evidence of injected malicious code; the file follows standard AUR packaging patterns for a prebuilt binary package.
</details>
<evidence>
</evidence>
<summary>Clean PKGBUILD with pinned checksummed binaries.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksummed binaries.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,809
  Completion Tokens: 4,590
  Total Tokens: 12,399
  Total Cost: $0.001546
  Execution Time: 34.40 seconds

Final Status: SAFE


No issues found.
