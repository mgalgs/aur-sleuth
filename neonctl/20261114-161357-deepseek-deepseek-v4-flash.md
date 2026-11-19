---
package: neonctl
pkgver: 9.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11658
completion_tokens: 1901
total_tokens: 13559
cost: 0.00139140
execution_time: 26.72
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T16:13:56Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Routine AUR package .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Package metadata only; no security risks.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for npm source, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard npm PKGBUILD with no malicious indicators.
---

Materializing neonctl from local mirror...
Materialized neonctl
Analyzing neonctl AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, checksums, etc.) and a package() function definition. There is no top-level command substitution, backtick execution, eval, or any other code that would execute during `makepkg --printsrcinfo`. The source is from the official npm registry with a pinned sha256sum. No suspicious or malicious content is present in the global scope.
</details>
<evidence></evidence>
<summary>Safe: no code runs at top-level.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no code runs at top-level.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default (`/*`) and then explicitly whitelists only the packaging-related files that should be tracked in version control: `PKGBUILD`, `.SRCINFO`, `.gitignore`, and `.nvchecker.toml`. This is a common and expected pattern for AUR packages hosted on Git. There is no code execution, network activity, obfuscation, or any other malicious behavior present.
</details>
<evidence></evidence>
<summary>Routine AUR package .gitignore file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Routine AUR package .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely metadata describing the `neonctl` AUR package. It contains no executable instructions, no network requests beyond declaring an upstream source URL (`https://registry.npmjs.org/neonctl/-/neonctl-9.5.0.tgz`), and no obfuscated or dangerous commands. The checksum (`sha256sums`) is pinned to a specific value. All declarations (architecture, dependencies, license) are standard for an npm-based package. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>

</evidence>
<summary>Package metadata only; no security risks.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Package metadata only; no security risks.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, which is used to track upstream version updates. It defines a single package entry `neonctl` that checks the npm registry for the latest version of the `neonctl` package. This is a standard and expected use of nvchecker in AUR packaging workflows. There is no obfuscated code, no suspicious commands, no network requests to untrusted hosts, and no system modifications. The file is benign and serves only as version tracking metadata.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for npm source, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for npm source, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for an npm-based package. The source is fetched from the official npm registry with a pinned SHA256 checksum, ensuring integrity. The `package()` function performs routine installation steps: npm global install under `$pkgdir`, cleanup of temporary files and paths, ownership fix, generation of bash completions by running the installed binary, and license symlink creation. There are no suspicious network requests, obfuscated code, dangerous commands (curl, eval, base64), or operations that deviate from expected packaging behavior. All actions serve the legitimate purpose of installing the neonctl CLI tool.
</details>
<evidence></evidence>
<summary>Standard npm PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard npm PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,658
  Completion Tokens: 1,901
  Total Tokens: 13,559
  Total Cost: $0.001391
  Execution Time: 26.72 seconds

Final Status: SAFE


No issues found.
