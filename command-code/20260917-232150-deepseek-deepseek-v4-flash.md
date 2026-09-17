---
package: command-code
pkgver: 1.55.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16303
completion_tokens: 7337
total_tokens: 23640
cost: 0.00216839
execution_time: 242.34
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T23:21:49Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Legal terms document, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Safe; fallback node download from official source.
---

Materializing command-code from local mirror...
Materialized command-code
Analyzing command-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
During `makepkg --printsrcinfo`, only the PKGBUILD's global/top-level scope executes. The global scope here contains only standard metadata assignments (pkgname, pkgver, pkgdesc, arch, source, sha512sums, etc.) and the definition of the `package()` function. There are no top-level command substitutions, no `eval`, no `curl`/`wget`, and no network-touching or file-modifying statements at global scope, so sourcing the file is inert.

The dynamic download and install logic (the `curl -fsSL ... | tar -xJ` fallback to Node 22.23.2 from nodejs.org, plus wrapper generation) lives entirely inside `package()`, which is not invoked by `--printsrcinfo` and is therefore out of scope for this gate. For the later full audit, note that the fallback fetches a tarball at package time without a checksum — a reproducibility/hygiene consideration worth reviewing — although the host (nodejs.org) is the official upstream distribution point for Node. No dangerous top-level behavior was found.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only has variable assignments; package() code not executed during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only has variable assignments; package() code not executed during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Terms of Service document for the commandcode.ai service. It contains no executable code, no network requests, no obfuscated content, and no instructions that could modify a system. It is purely a legal agreement text. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Legal terms document, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Legal terms document, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It contains only declarative fields such as package name, version, description, architecture, dependencies, source URLs, and checksums. All sources point to the official npm registry (`registry.npmjs.org`), a legitimate and trusted source for Node.js packages. Checksums are provided (SHA-512), ensuring integrity. There is no executable code, no obfuscation, no suspicious network requests, and no commands that could be exploited. This file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for the `command-code` npm package. It downloads the package from the official npm registry and installs it with `npm install -g`. A notable but non-malicious feature is a fallback mechanism that downloads a Node.js binary from `nodejs.org` (official source) if the system node is broken, which is a workaround for a known CachyOS issue. This download is performed without checksum verification, which is a hygiene concern but not evidence of a supply-chain attack. The package does not exfiltrate data, execute untrusted code from unexpected hosts, or contain obfuscated commands. All operations serve the intended purpose of building and installing the application.
</details>
<evidence>

</evidence>
<summary>Safe; fallback node download from official source.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe; fallback node download from official source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,303
  Completion Tokens: 7,337
  Total Tokens: 23,640
  Total Cost: $0.002168
  Execution Time: 242.34 seconds

Final Status: SAFE


No issues found.
