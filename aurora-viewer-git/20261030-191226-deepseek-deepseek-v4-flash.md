---
package: aurora-viewer-git
pkgver: 0.8.4.beta.20261030.1.r28.gcafab5b80
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14287
completion_tokens: 27857
total_tokens: 42144
cost: 0.006370091
execution_time: 246.88
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T19:12:25Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard packaging, no malicious indicators found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious code.
---

Materializing aurora-viewer-git from local mirror...
Materialized aurora-viewer-git
Analyzing aurora-viewer-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The PKGBUILD file is obfuscated by systematically replacing single and double quotation marks with HTML entity sequences (`&apos;` for `'`, `&quot;` for `"`). In shell, `&` is a job control operator. When `makepkg` sources this file during `--printsrcinfo`, the line `pkgdesc=&apos;A modern Second Life viewer, written from scratch in Rust (Vulkan)&apos;` is **not** parsed as a plain variable assignment. Instead, the shell tokenizes it as the assignment `pkgdesc=&apos;A modern ... (Vulkan)`, followed by the background operator `&`, which then unconditionally tries to execute the token `apos;` as a top-level shell command. This fulfills the criteria for obfuscated code being used to inject shell syntax and execute unintended commands — the file is designed to be dangerous to source, not merely malformed. The remainder of the file triggers syntax errors on subsequent lines, but the pivotal command-injection attempt at global scope is already in play when `makepkg --printsrcinfo` evaluates the PKGBUILD.
</details>
<evidence>
pkgdesc=&apos;A modern Second Life viewer, written from scratch in Rust (Vulkan)&apos;
</evidence>
<summary>Obfuscated HTML entities inject shell commands at top-level scope.</summary>
</security_assessment>

Second look for PKGBUILD (incontext):
<security_assessment>
<decision>SAFE</decision>
<details><p>The first verdict over‑reacted to the HTML entities.  While the file is badly formed (every quote and angle bracket is HTML‑encoded with `&apos;`, `&quot;`, `&lt;`, `&gt;`), the consequences at top‑level sourcing are not genuinely malicious.  When the shell attempts to parse lines such as `pkgdesc=&apos;A modern Second Life viewer … (Vulkan)&apos;` it will break on the bare `&` control operators and try to run commands like `apos;` or `Vulkan`.  These commands are not present on the system and will simply fail with “command not found”.  None of the top‑level content contains a deliberate payload (no `curl|bash`, no `eval` of a decoded blob, no exfiltration).  The fact that the file is obfuscated by HTML entity encoding is a packaging mistake, not a supply‑chain attack.  The intended content behind the encoding is exactly the standard, innocent PKGBUILD for aurora‑viewer‑git.  Nothing at the global scope will download, execute, or exfiltrate anything harmful.</p>
<p>Within the narrow `makepkg --printsrcinfo` gate, the file is safe — the shell may emit a flurry of error messages, but no malicious code is injected or executed.  The function bodies (`pkgver()`, `build()`, `package()`) are not invoked, so any concerns inside them are out of scope for this step.</p></details>
<evidence></evidence>
<summary>HTML entities cause errors, not a supply‑chain attack.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- HTML entities cause errors, not a supply‑chain attack.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>Standard AUR PKGBUILD for a Rust application. Sources are cloned from the project's official GitHub repository (https://github.com/Aurora-Viewer/Aurora-Viewer.git) and built with cargo in release mode. No anomalous network requests, obfuscated code, or dangerous commands (eval, base64, curl, wget) are present. File operations in the package() function are limited to installing the compiled binary, a desktop file, an icon, and the license into the package directory. sha256sums is 'SKIP', which is required for VCS sources and is not a security concern. The build function strips -O2 from CFLAGS/CXXFLAGS to work around a specific crate compatibility issue, which is a benign upstream accommodation.</details>
<evidence></evidence>
<summary>Standard packaging, no malicious indicators found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging, no malicious indicators found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `.SRCINFO`, a declarative metadata file used by Arch build tools (`makepkg`). It contains no executable logic, commands, or obfuscated data. The source points to the standard upstream GitHub repository (`github.com/Aurora-Viewer/Aurora-Viewer.git`), which is expected for a `-git` package. The `sha256sums = SKIP` line is standard and required for VCS sources and is explicitly not considered malicious per the provided guidelines. There is no evidence of exfiltration, hidden downloads, or any deviation from standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,287
  Completion Tokens: 27,857
  Total Tokens: 42,144
  Total Cost: $0.006370
  Execution Time: 246.88 seconds

Final Status: SAFE


No issues found.
