---
package: chrome-devtools-mcp
pkgver: 1.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9718
completion_tokens: 1902
total_tokens: 11620
cost: 0.001135848
execution_time: 80.53
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T19:25:37Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard npm package PKGBUILD with pinned checksummed source; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no security concerns.
---

Materializing chrome-devtools-mcp from local mirror...
Materialized chrome-devtools-mcp
Analyzing chrome-devtools-mcp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions at the global scope. No command substitution, backtick execution, or any other code that would run during sourcing. The `latestver()` function is defined but not called at the top level. Therefore, executing `makepkg --printsrcinfo` on this PKGBUILD would not trigger any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default and then whitelists only the files that are conventionally expected in an AUR repository: the PKGBUILD, .SRCINFO, installer scripts, patches, service files, desktop files, configuration files, images, license, readme, changelog, ini and txt files. There is no evidence of malicious behavior, obfuscated code, network requests, or any deviation from standard packaging practices. The file serves only to prevent non-essential files from being tracked in version control.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Node.js application. It downloads the package tarball from the official npm registry with a pinned version (`1.9.0`) and a fixed `sha512sums` checksum, so the source artifact is integrity-checked. The `package()` function only copies the package contents into `/usr/lib/node_modules`, creates two expected symlinks in `/usr/bin`, and installs the license file. There is no use of `eval`, base64 decoding, `curl | bash`, arbitrary file modification, or network exfiltration.

The `latestver()` helper queries the official npm registry for version metadata using `curl`, but it is not invoked during `build()` or `package()` and appears to be a convenience function for the maintainer. This is consistent with ordinary AUR maintenance workflows, and the network destination is the package's own upstream source. No genuinely malicious or dangerous behavior is present.
</details>
<evidence></evidence>
<summary>
Standard npm package PKGBUILD with pinned checksummed source; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard npm package PKGBUILD with pinned checksummed source; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `chrome-devtools-mcp` package. It declares the package name, version, description, dependencies, and source with an accompanying SHA-512 checksum. The source is fetched from the official npm registry (`registry.npmjs.org`), which is the expected upstream location for npm packages. There is no embedded code, no dangerous commands, no obfuscation, and no references to external or untrusted hosts. The file is purely descriptive and contains no executable or malicious content.
</details>
<evidence></evidence>
<summary>Standard package metadata; no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,718
  Completion Tokens: 1,902
  Total Tokens: 11,620
  Total Cost: $0.001136
  Execution Time: 80.53 seconds

Final Status: SAFE


No issues found.
