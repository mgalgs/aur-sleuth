---
package: github-desktop
pkgver: 3.4.14
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12915
completion_tokens: 2392
total_tokens: 15307
cost: 0.00083256096
execution_time: 30.63
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T15:19:04Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Static config file for nvchecker, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
  - file: github-desktop.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
---

Materializing github-desktop from local mirror...
Materialized github-desktop
Analyzing github-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global/top-level scope. This PKGBUILD contains only static variable assignments and array declarations (pkgname, source, DLAGENTS, etc.) with no command substitutions, external commands, or function calls at the top level. The DLAGENTS definition and SKIP checksums are not executed during sourcing; they are just data. No dangerous operations (downloads, executions, data exfiltration) are triggered by simply sourcing this file. The prepare(), build(), and package() functions are not run at this stage. Therefore, the command is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TOML configuration for `nvchecker`, a standard AUR tool used to automatically detect new upstream releases. It points to the official `shiftkey/desktop` GitHub repository and uses regex to extract version numbers from release tags. There are no commands, no downloads, no obfuscation, and no unexpected operations. It is a benign, static configuration file consistent with routine packaging practices.
</details>
<evidence></evidence>
<summary>Static config file for nvchecker, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, github-desktop.desktop...
[1/4] Reviewing .SRCINFO, PKGBUILD, github-desktop.desktop...
+ Reviewed .nvchecker.toml. Status: SAFE -- Static config file for nvchecker, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata declaration for an AUR package. It defines the package name, description, version, dependencies, and sources. All sources point to expected upstream repositories (shiftkey/desktop for the Linux fork of GitHub Desktop, plus official GitHub repos for gemoji, gitignore, and choosealicense.com). Checksums are either SHA256 hashes for static files or SKIP for VCS sources, which is normal AUR practice. There are no executable commands, no suspicious URLs, no obfuscated content, and no deviations from standard packaging metadata. The file contains no code that could execute or exfiltrate data; it is purely declarative.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, github-desktop.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based package. It fetches the upstream source from the official shiftkey/desktop repository at a pinned release tag, alongside three submodule repositories (gemoji, gitignore, choosealicense.com) which are also official GitHub projects. The submodules are redirected to local copies in `$srcdir` during `prepare()`, which is a common pattern to use pre-fetched sources rather than re-fetching. The build uses `yarn install` and `yarn build:prod` under `xvfb-run`, which is normal for Electron/Node.js applications. The only modification to source files is a sed command adding `--openssl-legacy-provider` to a Node.js compile command, which is a documented workaround for OpenSSL compatibility. There are no obfuscated commands, no external network requests beyond the declared sources, and no file operations outside the application&#x27;s own installation paths (`/opt/github-desktop`, `/usr/share/applications`, `/usr/share/icons`, `/usr/bin/github-desktop`). The SKIP checksums on the VCS submodule sources are expected and not a security concern. All behavior is consistent with legitimate packaging.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/4] Reviewing github-desktop.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
LLM auditresponse for github-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .desktop entry for launching GitHub Desktop. The `Exec` field points to `/usr/bin/github-desktop` (a binary installed by the package). The `MimeType` entries register custom URL scheme handlers (`x-github-client://`, `x-github-desktop-auth://`, `x-github-desktop-dev-auth://`), which is normal for GitHub Desktop to handle authentication callbacks from the browser. There is no obfuscated code, no network requests, no dangerous commands (curl, wget, eval, base64, etc.), and no operation outside the scope of the application. This file does not contain any malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed github-desktop.desktop. Status: SAFE -- Standard desktop entry, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,915
  Completion Tokens: 2,392
  Total Tokens: 15,307
  Total Cost: $0.000833
  Execution Time: 30.63 seconds

Final Status: SAFE


No issues found.
