---
package: voltius-git
pkgver: 0.38.0.r0.g9900d940
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10536
completion_tokens: 2590
total_tokens: 13126
cost: 0.00110012
execution_time: 54.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T15:42:29Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; no malicious behavior found.
  - file: voltius.desktop
    status: safe
    summary: Standard .desktop launcher; Exec=voltius is benign; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD with no suspicious behavior; safe.
---

Materializing voltius-git from local mirror...
Materialized voltius-git
Analyzing voltius-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The top-level scope of this PKGBUILD contains only variable declarations and function definitions. No command substitutions, eval, or other executable code is present outside of `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this file poses no immediate security risk.</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, voltius.desktop...
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file for the voltius-git package. It declares the package as a VCS build from its upstream repository (https://github.com/VoltiusApp/voltius), sets expected dependencies for a GTK/WebKit application, and uses SKIP checksums, which is normal for git-based sources. No suspicious URLs, commands, file operations, or encoded content are present. The file contains only declarative packaging metadata with no executable logic.

The use of an unpinned git branch is standard for -git packages and does not itself indicate malice. No evidence of exfiltration, unexpected downloads, obfuscation, backdoors, or tampering with unrelated system files was found. This is consistent with ordinary AUR packaging practice.
</details>
<evidence></evidence>
<summary>Standard AUR VCS metadata; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, voltius.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; no malicious behavior found.
LLM auditresponse for voltius.desktop:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop launcher file for the Voltius application. It contains only metadata (Name, Comment, Icon, Categories) and a simple `Exec=voltius` line that invokes the package's own installed binary without arguments, shell metacharacters, or environment manipulation. No URL schemes (http/https/etc.) are used in Exec, so no code is fetched or executed from the network. There is no obfuscation, no encoding, no file manipulation, and nothing that deviates from ordinary desktop-entry packaging practice.

The comment describing the app as an "SSH/SFTP/Serial client with E2EE sync and plugins" merely states the upstream application's declared functionality; it does not indicate any injected malicious behavior in this file. The file is consistent with a benign AUR packaging artifact.
</details>
<evidence>
</evidence>
<summary>
Standard .desktop launcher; Exec=voltius is benign; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed voltius.desktop. Status: SAFE -- Standard .desktop launcher; Exec=voltius is benign; no malicious behavior found.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows a standard AUR VCS build pattern: it clones the upstream Voltius repository from the official GitHub URL, uses SKIP checksums (normal for git sources), installs a pinned pnpm version into a local prefix during prepare(), and uses it to run the project's own Tauri build. No checksum is asserted for the git checkout, but that is standard for -git packages and not a sign of malice.

The only network operations are fetching the declared upstream repo and installing pnpm from the npm registry. There is no use of curl|bash, base64/obfuscated commands, unexpected file writes, exfiltration, or tampering with system files. TAURI_SIGNING_PRIVATE_KEY is set to a dummy value only to satisfy the build, not to expose secrets.

Potential minor concerns such as unpinned sources and build-time dependency fetching are ordinary packaging hygiene issues for VCS/AUR packages and do not constitute malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS PKGBUILD with no suspicious behavior; safe.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD with no suspicious behavior; safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,536
  Completion Tokens: 2,590
  Total Tokens: 13,126
  Total Cost: $0.001100
  Execution Time: 54.00 seconds

Final Status: SAFE


No issues found.
