---
package: ckbcomp
pkgver: 1.249
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10980
completion_tokens: 1743
total_tokens: 12723
cost: 0.001316406
execution_time: 32.32
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T15:04:27Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Safe configuration file for version checking.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with pinned source and no malicious behavior.
---

Materializing ckbcomp from local mirror...
Materialized ckbcomp
Analyzing ckbcomp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions in its global scope: metadata (pkgname, pkgver, etc.) and a source array with a fixed URL and a SHA256 checksum. There are no command substitutions, eval statements, or any executable code that runs when the file is sourced. The `package()` function is not executed by `makepkg --printsrcinfo`, so it is out of scope for this gate. No malicious or dangerous behavior is present at the top level.
</details>
<evidence>
</evidence>
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
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the `PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself. There are no commands, network operations, obfuscation, or any other security-relevant content. The file is benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` contains configuration for the `nvchecker` tool, which is used to monitor upstream releases. It specifies a Git source pointing to the official Debian installer team repository (`https://salsa.debian.org/installer-team/console-setup.git`), which is the legitimate upstream for `console-setup` (which includes `ckbcomp`). The `include_regex` is a standard version-matching pattern. No commands, encoded data, or unexpected network destinations are present. This file poses no security risk.
</details>
<evidence>

</evidence>
<summary>Safe configuration file for version checking.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe configuration file for version checking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file. It defines a package (`ckbcomp`) with a single source tarball fetched over HTTPS from the official Debian installer-team repository on salsa.debian.org. The tarball is pinned to version 1.249 and verified by a SHA-256 checksum. There is no embedded code, no network operations beyond the declared source download, no obfuscation, and no unexpected system modifications. The content conforms to typical AUR packaging practices and does not exhibit any indicators of malicious supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging script for <code>ckbcomp</code>, a tool that compiles XKB keyboard descriptions. It downloads a specific version archive from the official Debian installer-team repository on salsa.debian.org, verifies the download with a hardcoded SHA256 checksum, and installs a single script (<code>Keyboard/ckbcomp</code>) into <code>/usr/bin</code>. There are no suspicious operations: no obfuscated code, no unexpected network requests, no execution of untrusted content, and no file manipulation outside the package&#x27;s scope. The use of <code>git</code> as a makedepend is unnecessary for a tarball source, but this is a minor packaging inefficiency, not a security concern.
</details>
<evidence>
</evidence>
<summary>Legitimate PKGBUILD with pinned source and no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with pinned source and no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,980
  Completion Tokens: 1,743
  Total Tokens: 12,723
  Total Cost: $0.001316
  Execution Time: 32.32 seconds

Final Status: SAFE


No issues found.
