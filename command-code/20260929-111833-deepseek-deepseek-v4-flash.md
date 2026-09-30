---
package: command-code
pkgver: 1.69.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16361
completion_tokens: 4820
total_tokens: 21181
cost: 0.00364014
execution_time: 53.99
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T11:18:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no suspicious content.
  - file: LICENSE
    status: safe
    summary: Legal document with no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Build uses official npm and nodejs.org downloads with no malicious behavior.
---

Materializing command-code from local mirror...
Materialized command-code
Analyzing command-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD passes the narrow `makepkg --printsrcinfo` safety gate.

The global/top-level scope consists entirely of standard variable assignments (`pkgname`, `pkgver`, `source`, `sha512sums`, etc.). There are no command substitutions `$(...)`, backtick executions, network calls, or file operations at the top level that would execute during sourcing.

The only function defined is `package()`. Per the scope rules of this gate, `makepkg --printsrcinfo` does **not** execute function bodies, so the code inside `package()`—including the `curl` fallback Node.js download and the `npm install` step—is safely deferred to a later build step and is out of scope for this specific pre-parse gate. No top-level code exists that could execute a download, exfiltrate data, or run an obfuscated payload during the `--printsrcinfo` invocation.
</details>
<evidence>
</evidence>
<summary>Top-level scope only contains safe variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only contains safe variable definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard metadata for an AUR package. The source is fetched from the official npm registry (registry.npmjs.org), which is the expected upstream for a Node.js package. Checksums are provided for both the tarball and the LICENSE file, ensuring integrity. No dangerous commands, obfuscated code, network requests to unexpected hosts, or file operations are present. The file is purely declarative and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no suspicious content.</summary>
</security_assessment>

[1/3] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no suspicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Terms of Service document for the Command Code service (commandcode.ai). It contains legal text covering account terms, payment, acceptable use, intellectual property, disclaimers, and other standard legal provisions. There is no executable code, no scripts, no network requests, no obfuscated commands, and no system operations. The content is purely textual and legal in nature, with no indicators of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Legal document with no executable or malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Legal document with no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD installs the command-code npm package from registry.npmjs.org with a pinned version and sha512 checksums, and runs npm install with --ignore-scripts, which prevents upstream package install scripts from executing. It then replaces the npm-generated bin entries with simple wrapper scripts that only disable the application's self-update path and exec the installed entry. No data is exfiltrated and no system files outside the package are modified.

The only unusual behavior is a conditional fallback that downloads a prebuilt Node.js 22 tarball from the official nodejs.org HTTPS endpoint when the system node is broken, extracts it into srcdir, and uses it for the build. This is a build-time dependency workaround tied to a specific CachyOS issue, not a supply-chain injection: the remote is the official Node.js distribution host and the version is fixed. It is not checksum-pinned, so it is a reproducibility and hygiene concern, but it does not exhibit malicious behavior. The build otherwise follows normal AUR packaging practice.
</details>
<evidence>

</evidence>
<summary>
Build uses official npm and nodejs.org downloads with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Build uses official npm and nodejs.org downloads with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,361
  Completion Tokens: 4,820
  Total Tokens: 21,181
  Total Cost: $0.003640
  Execution Time: 53.99 seconds

Final Status: SAFE


No issues found.
