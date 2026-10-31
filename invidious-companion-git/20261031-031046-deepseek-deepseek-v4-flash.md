---
package: invidious-companion-git
pkgver: release.master.127.gfcb0456
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12560
completion_tokens: 4743
total_tokens: 17303
cost: 0.002006186
execution_time: 46.62
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T03:10:45Z
file_verdicts:
  - file: invidious-companion.config
    status: safe
    summary: Configuration template with placeholder key; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: invidious-companion.install
    status: safe
    summary: Post-install script prints informational messages only.
  - file: PKGBUILD
    status: safe
    summary: Standard -git PKGBUILD, no malicious behavior found.
---

Materializing invidious-companion-git from local mirror...
Materialized invidious-companion-git
Analyzing invidious-companion-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's global scope. In this PKGBUILD, the global scope contains only standard variable and array assignments: `pkgname`, `pkgver`, `pkgrel`, `options`, `arch`, `source`, `sha512sums`, dependencies, and similar packaging metadata. There are no top-level command substitutions, no `eval`, no `curl`/`wget` invocations, no base64-decoded payloads, and no network or file-exfiltration operations that would execute during sourcing.

The potentially dynamic code lives inside `pkgver()`, `build()`, and `package()`, none of which are executed by `makepkg --printsrcinfo`. Those functions will be reviewed separately in the full PKGBUILD audit. The `SKIP` checksum for the git source is not relevant to this narrow gate, since no sources are downloaded or verified during metadata generation.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is safe; only static metadata assignments exist.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; only static metadata assignments exist.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, invidious-companion.config...
LLM auditresponse for invidious-companion.config:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for the Invidious Companion application. It contains only a single line defining a placeholder secret key (`SERVER_SECRET_KEY=CHANGE_ME`), which is standard practice for application configuration files distributed in source or packaging repositories. There is no executable code, no network requests, no obfuscation, no file operations, and no indication of any malicious or dangerous behavior. The placeholder value instructs the user to replace it with a real secret key, which is a normal security precaution rather than a security issue.
</details>
<evidence>
</evidence>
<summary>Configuration template with placeholder key; no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed invidious-companion.config. Status: SAFE -- Configuration template with placeholder key; no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, invidious-companion.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `invidious-companion-git` AUR package. It defines package metadata (name, version, description, dependencies, etc.) and lists sources from the official GitHub repository (`https://github.com/iv-org/invidious-companion`) along with local config and install files. The `sha512sums` entry for the VCS source is correctly set to `SKIP`, which is normal for git-based packages. There are no executable commands, no network requests (beyond declaring the upstream source), no obfuscated content, and no unexpected operations. The file is purely declarative and contains no code that could be malicious.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, invidious-companion.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for invidious-companion.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a post-installation script that prints informational messages to the user. It contains no dangerous commands, no network requests, no file modifications, no obfuscation, and no unexpected behavior. It simply tells the user to create a configuration key and start the service.
</details>
<evidence>
</evidence>
<summary>Post-install script prints informational messages only.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed invidious-companion.install. Status: SAFE -- Post-install script prints informational messages only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for a version-controlled (-git) package. The VCS source is fetched directly from the legitimate upstream repository (`github.com/iv-org/invidious-companion`), and the `sha512sums` entry is correctly set to `SKIP` for the VCS source. The `pkgver()` function uses `git describe`, which is standard. The `build()` function performs ordinary packaging adaptations to the service file via `sed` (adjusting paths and configuration for the Arch Linux filesystem) and compiles the application using `deno task compile`. The `package()` function installs the binary, service, config, and license into their proper locations. There is no evidence of exfiltration, obfuscated code, backdoors, or execution of untrusted content. The unpinned source reference and the `install=invidious-companion.install` assignment (which is inert in this context) do not constitute malicious behavior.
</details>
<evidence></evidence>
<summary>Standard -git PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -git PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,560
  Completion Tokens: 4,743
  Total Tokens: 17,303
  Total Cost: $0.002006
  Execution Time: 46.62 seconds

Final Status: SAFE


No issues found.
