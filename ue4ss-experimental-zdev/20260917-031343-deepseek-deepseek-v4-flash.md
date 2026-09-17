---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1136_g35d1795d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15860
completion_tokens: 7294
total_tokens: 23154
cost: 0.002697875488
execution_time: 186.83
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T03:13:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious behavior observed.
  - file: ue4ss-install
    status: safe
    summary: Standard deployment helper, no malicious behavior.
---

Materializing ue4ss-experimental-zdev from local mirror...
Materialized ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of the PKGBUILD. That scope contains only variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.), a pure parameter-expansion assignment `_verstr=&quot;${pkgver//_/-}&quot;`, and two function definitions (`latestver` and `package`). No assignment uses command substitution `$(...)` or backticks, so no external command runs at parse time.

The `gh api` call inside `latestver()` and the `install`/`cp`/`rm` operations inside `package()` are function *bodies*, not top-level statements; they cannot execute during `--printsrcinfo`. The source URLs point to the package's own upstream GitHub release and both checksums are pinned. Nothing in the top-level scope downloads, executes, or exfiltrates data, so this narrow gate passes.
</details>
<evidence></evidence>
<summary>Top-level scope defines only variables/functions; no commands execute during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope defines only variables/functions; no commands execute during --printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, .SRCINFO...
[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration file for a Git repository. It ignores all files by default, then whitelists essential files such as `.gitignore`, `.SRCINFO`, `PKGBUILD`, a helper script (`ue4ss-install`), and common auxiliary files like `*.install`, `*.patch`, and `*.diff`. There is no executable code, no network requests, no obfuscation, and no attempt to modify system files. It conforms to typical AUR packaging practices and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no malicious content.
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured package for the UE4SS mod loader's experimental developer release. All network sources point to the project's own official GitHub releases, with pinned SHA256 sums for both the main asset and the helper script. The `package()` function only copies prebuilt Windows binaries into `/usr/share/ue4ss` and installs a deploy script; it does not fetch or execute any code from untrusted origins. The `latestver()` helper function queries the GitHub API exclusively for version detection—it is a maintainer convenience, not part of the build or install pipeline. No obfuscation, encoded payloads, or suspicious commands (eval, curl|bash, git pull, etc.) are present. The file complies with standard AUR packaging practices and shows no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares package metadata, dependencies, and two sources: a prebuilt ZIP downloaded from the project's official GitHub releases URL and a local helper script named `ue4ss-install`. No `prepare()`, `build()`, or `package()` functions are included in this file, so there is no packaging logic here to execute arbitrary commands. The GitHub URL points to the upstream UE4SS-RE/RE-UE4SS project, which is consistent with the package's stated purpose.

Both source entries have pinned SHA-256 checksums, which is normal and good practice. The use of `depends = bash` is benign. There is no evidence of obfuscation, hidden network requests, suspicious file operations, or execution of untrusted content. The referenced `ue4ss-install` helper script is not present in this file, so it cannot be inspected here; however, nothing in the `.SRCINFO` itself indicates malicious or dangerous behavior. This file is consistent with routine AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file; no malicious behavior observed.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious behavior observed.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `ue4ss-install` is a well-documented helper for deploying the UE4SS modding payload into a game directory. It performs only standard file operations (copy, symlink, remove) using the payload provided by the package at `/usr/share/ue4ss`. It does not make any network requests, download or execute external code, read sensitive system files, or contain any obfuscated or encoded commands. The uninstall routine uses `rm -rf` on the deployed files, which is expected and limited to the package's own files. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard deployment helper, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Standard deployment helper, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,860
  Completion Tokens: 7,294
  Total Tokens: 23,154
  Total Cost: $0.002698
  Execution Time: 186.83 seconds

Final Status: SAFE


No issues found.
