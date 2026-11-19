---
package: pi
pkgver: 1.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10917
completion_tokens: 2447
total_tokens: 13364
cost: 0.001438801
execution_time: 85.45
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T11:04:30Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned sources and checksums; no malicious behavior found.
  - file: LICENSE
    status: safe
    summary: License file only, no executable or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for AI coding agent, no malicious behavior.
---

Materializing pi from local mirror...
Materialized pi
Analyzing pi AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level/global scope contains only static variable and array assignments: pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, makedepends, optdepends, options, source, and sha256sums. There are no command substitutions, no external network fetches, no `eval`/`base64`/obfuscated code, and no file-modifying operations executed while the PKGBUILD is sourced. Running `makepkg --printsrcinfo` will therefore only parse these metadata definitions.

The `prepare()`, `build()`, and `package()` functions contain file operations and build commands, but they are not executed by `makepkg --printsrcinfo`; they will be evaluated in the full audit. As far as this narrow gate is concerned, sourcing this PKGBUILD is safe.
</details>
<evidence>

</evidence>
<summary>
Top-level scope has only static metadata definitions; no code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope has only static metadata definitions; no code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for the AUR package `pi`. It declares the package name, version, upstream URL, dependencies, and two source tarballs: the upstream GitHub release archive and the npm package tarball from the official npm registry. Both sources use pinned versioned URLs and include specific sha256sums, which is a healthy supply-chain posture. There are no build instructions, no scripts, no network fetches beyond the declared sources, no obfuscated content, and no file operations present in this metadata file. The `&gt;=` in the depends line is simply XML-escaped `>=` in the input format, not a security concern.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned sources and checksums; no malicious behavior found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style license text. It contains no executable code, no instructions, no network requests, no obfuscation, and no file operations. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>License file only, no executable or suspicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file only, no executable or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for the "pi" AI coding agent. All source tarballs are fetched over HTTPS from the project&#39;s own GitHub and npm registry, accompanied by hardcoded SHA-256 checksums for integrity verification. The `prepare()` and `build()` functions perform routine operations: merging two upstream package components, running `npm ci` with `--ignore-scripts` (disabling external code execution during install), and running the upstream `npm run build:offline` script. The `package()` function installs files into standard system directories and creates a symlink for the executable. There is no obfuscated code, no unexpected network requests, no exfiltration of local data, and no execution of externally fetched code. The use of `--ignore-scripts` during npm install is a good security practice. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for AI coding agent, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for AI coding agent, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,917
  Completion Tokens: 2,447
  Total Tokens: 13,364
  Total Cost: $0.001439
  Execution Time: 85.45 seconds

Final Status: SAFE


No issues found.
