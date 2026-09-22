---
package: opencode-beta
pkgver: 2.0.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12287
completion_tokens: 2313
total_tokens: 14600
cost: 0.001498593278
execution_time: 61.44
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T11:05:35Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license text; no executable or malicious content present.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: opencode2
    status: safe
    summary: Standard launcher script; executes adjacent binary with passed arguments. No malicious behavior.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists only of static variable assignments (package metadata, source URLs, checksums) and the definition of the `package()` function. No command substitutions, backticks, or other executable code appear at global scope. Therefore, sourcing this file for `makepkg --printsrcinfo` will not execute any risky operations. The source URLs point to the official npm registry, which is the expected upstream for this application.
</details>
<evidence></evidence>
<summary>
No dangerous global code; safe to source.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing LICENSE...
[0/4] Reviewing LICENSE, .SRCINFO...
[0/4] Reviewing LICENSE, .SRCINFO, PKGBUILD...
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no network operations, no file system manipulations, and no obfuscated content. The only notable formatting detail is the use of HTML entities (&amp;quot;) which are simply escaped quotation marks in the license text — a normal artifact of how the file was embedded/displayed, not an encoding trick. There is no evidence of malicious behavior, injected payloads, or deviation from standard packaging practices. This is a benign license file with no security implications.
</details>
<evidence>
</evidence>
<summary>
Standard MIT license text; no executable or malicious content present.</summary>
</security_assessment>

[0/4] Reviewing LICENSE, .SRCINFO, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text; no executable or malicious content present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads official tarballs from the npm registry (registry.npmjs.org) with pinned SHA256 checksums, and includes local files (opencode2 wrapper script and LICENSE) with verified hashes. The package() function only installs binaries and license into the correct locations. There is no obfuscated code, no unexpected network requests, no execution of fetched content at build time, and no manipulation of system files outside the package scope. The use of SKIP checksums is absent; all sources are verified. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, opencode2...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `opencode-beta`. It contains no executable code, only package metadata, source URLs, and checksums. All binary sources are fetched from the official npm registry (`registry.npmjs.org`) under the `@opencode` scope, which is the expected upstream for this package. Checksums are provided (not `SKIP`), ensuring integrity of the downloaded artifacts. No suspicious URLs, obfuscation, or dangerous operations are present. The file adheres to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing opencode2...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for opencode2:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple, standard shell launcher script. It resolves the directory containing the script itself via `dirname &quot;$0&quot;` and then `exec`s the `opencode` binary located in that same directory, forwarding all command-line arguments with `&quot;$@&quot;`.

There is nothing malicious here: no network access, no downloads, no obfuscated or encoded content, no use of `eval`, `base64`, `curl`, `wget`, or any file-modifying operations. The quoting is correct, so there is no argument-injection or path-injection risk. Passing command-line arguments through to the real binary is exactly the expected behavior of a wrapper script that provides an alternate command name (e.g. `opencode2`). This is entirely consistent with standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard launcher script; executes adjacent binary with passed arguments. No malicious behavior.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed opencode2. Status: SAFE -- Standard launcher script; executes adjacent binary with passed arguments. No malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,287
  Completion Tokens: 2,313
  Total Tokens: 14,600
  Total Cost: $0.001499
  Execution Time: 61.44 seconds

Final Status: SAFE


No issues found.
