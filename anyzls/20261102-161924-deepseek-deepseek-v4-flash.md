---
package: anyzls
pkgbase: anyzig
pkgver: 2026_10_23
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13186
completion_tokens: 4109
total_tokens: 17295
cost: 0.001947764
execution_time: 109.85
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T16:19:24Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, harmless.
  - file: .nvchecker.toml
    status: safe
    summary: Normal version-check configuration file.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
---

anyzls is built from anyzig
Materializing anyzls from local mirror...
Materialized anyzls
Analyzing anyzls AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD consists solely of variable assignments using plain strings, arrays, and parameter expansions (e.g., `${_url##*/}-${pkgver}`). No command substitutions (`$(...)` or backticks), no `eval` calls, no traps, and no other command executions are present at the top level. All operations that could modify the system or fetch data (such as `sed`, `zig build`, `install`) are defined inside functions (`prepare()`, `build()`, `package_*()`), which are **not** executed by `makepkg --printsrcinfo`. The content is straightforward, without obfuscation, encoding tricks, or unusual patterns. Thus, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository, containing only ignore/un-ignore patterns for git version control. It does not contain any executable instructions, network requests, obfuscation, or any other activity that could be considered malicious. Files like this are routine in any AUR package that tracks its sources with git, and there is no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, harmless.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, harmless.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration that only specifies the upstream Git repository used for version tracking. It contains no executable code, network requests, filesystem operations, or any other behavior that could compromise the system. The prefix `&quot;v&quot;` is a common convention for version tags. There is no evidence of malicious intent or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Normal version-check configuration file.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Normal version-check configuration file.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for an AUR package. It contains only declarative information: package name, version, description, architecture targets, license, dependencies, and a source tarball URL with a BLAKE2b checksum. No executable code, network requests, or file operations are present. The checksum is a specific hash (not `SKIP`), which is consistent with standard packaging hygiene. There are no obfuscated commands, backdoors, or exfiltration attempts. The content is purely informational and does not perform any action, making it safe.
</details>
<evidence>
</evidence>
<summary>AUR metadata file with no executable content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is fetched from the upstream GitHub repository (`github.com/marler8997/anyzig`) which matches the package&#39;s stated purpose, and the tarball is pinned with a BLAKE2b checksum. The `prepare()` function applies a small `sed` patch to `build.zig` to fix a build dependency; while it modifies source code, the inserted line is a legitimate build-workaround, not an injection of malicious functionality. The `build()` function runs the upstream build system (`zig build`) with standard options, and the `package_*` functions copy the expected binaries and documentation. There are no suspicious network requests, no obfuscated or encoded commands, no `eval`, `curl`, `wget`, or other dangerous operations. The entire file is consistent with a trustworthy package maintainer&#39;s work and shows no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,186
  Completion Tokens: 4,109
  Total Tokens: 17,295
  Total Cost: $0.001948
  Execution Time: 109.85 seconds

Final Status: SAFE


No issues found.
