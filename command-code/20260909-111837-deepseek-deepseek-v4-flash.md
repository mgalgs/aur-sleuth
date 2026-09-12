---
package: command-code
pkgver: 1.51.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16224
completion_tokens: 1885
total_tokens: 18109
cost: 0.001771588364
execution_time: 85.75
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T11:18:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious indicators found.
  - file: LICENSE
    status: safe
    summary: Standard legal terms document; no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, safe; fallback download from official Node.js site.
---

Materializing command-code from local mirror...
Materialized command-code
Analyzing command-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard top-level variable definitions (`pkgname`, `pkgver`, etc.) and array declarations (`source`, `sha512sums`). There are no command substitutions, backtick expressions, or function calls in the global scope that would execute code when the file is sourced. The `package()` function contains network operations (curl download), but `makepkg --printsrcinfo` does not execute function bodies. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file defines metadata for the `command-code` AUR package. The source is a .tgz tarball fetched from the official npm registry (`registry.npmjs.org`), which is standard practice for npm-based packages. Both the tarball and the LICENSE file have non-SKIP sha512sums, indicating integrity verification. There are no unusual commands, network requests, or obfuscated content in this metadata file. The `!strip` option and `noextract` directive are legitimate packaging choices. No evidence of injected malicious behavior or supply-chain attack vectors is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious indicators found.</summary>
</security_assessment>

[1/3] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious indicators found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text software license / terms of service document for the Command Code service (commandcode.ai). It contains no executable code, no obfuscated strings, no network requests, no file operations, and no system commands. The content consists entirely of legal prose covering account terms, payment, intellectual property, disclaimers, and similar topics. The only non-plain-text characters are standard XML/HTML entities (e.g., &amp;quot;, &amp;amp;, &amp;apos;) used to escape quotes and ampersands, which is normal for a text file stored in XML context. There is no evidence of malicious or dangerous behavior. The file is a standard part of the package and serves its intended purpose.
</details>
<evidence>
</evidence>
<summary>Standard legal terms document; no executable or malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard legal terms document; no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for an npm-based application. The `package()` function installs the package from the official npm registry using `npm install -g` with `--ignore-scripts`, which is a security-conscious choice. The wrapper scripts are simple shell scripts that block the `update` subcommand (since the package is managed by the system) and set an environment variable to skip updates.

The only potentially unusual section is the fallback Node.js download, triggered when the system `node` binary is broken due to a known CachyOS packaging issue. This download fetches a specific version of Node.js from the official `nodejs.org` domain over HTTPS — the authoritative source for Node.js binaries. While no SHA checksum is verified for the downloaded archive, the URL is pinned to a specific version and originates from the project's own distribution channel, which is consistent with a temporary workaround. There is no evidence of obfuscation, data exfiltration, backdoor, or any behavior outside the stated purpose of the package. The script does not attempt to execute code from an untrusted or unexpected host.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, safe; fallback download from official Node.js site.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, safe; fallback download from official Node.js site.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,224
  Completion Tokens: 1,885
  Total Tokens: 18,109
  Total Cost: $0.001772
  Execution Time: 85.75 seconds

Final Status: SAFE


No issues found.
