---
package: qoder-cn-ide-bin
pkgver: 1.31.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 56463
completion_tokens: 4757
total_tokens: 61220
cost: 0.005845958062
execution_time: 93.39
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T11:14:30Z
file_verdicts:
  - file: LICENSE.html
    status: safe
    summary: Static website content; no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard binary packaging, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: qoder-cn-ide.sh
    status: safe
    summary: Standard Electron launcher; no suspicious behavior.
  - file: qoder-cn-ide.js
    status: safe
    summary: Standard Electron app launcher; no malicious behavior found.
---

Materializing qoder-cn-ide-bin from local mirror...
Materialized qoder-cn-ide-bin
Analyzing qoder-cn-ide-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function definitions (pkgver, _get_app_dir, _check_electron_version, prepare, package). None of these functions are called at global scope, and there are no command substitutions, backticks, or eval-like constructs in the top-level code that would execute during sourcing. All operations that could perform downloads, file modifications, or shell execution are confined within functions that are only invoked during later build phases (prepare, package, pkgver). Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE.html...
[0/5] Reviewing .SRCINFO, LICENSE.html, PKGBUILD...
LLM auditresponse for LICENSE.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `LICENSE.html` is a fully rendered HTML page of the Qoder website's Terms of Service. It contains standard website frontend code: Next.js chunks from the project's own CDN (`g.alicdn.com`), Google Analytics scripts, and inline JavaScript for theme setting, locale detection, and i18n resource fetching. The only use of `atob` decodes a URL pointing to `https://lang.alicdn.com/`, which is the project's own i18n CDN – this is not malicious obfuscation. No dangerous commands (`eval`, `curl`, `wget`, `exec`) are present, and no code attempts to execute external scripts outside the expected CDN resources. This file is included as documentation and does not perform any system-modifying or data-exfiltrating actions. It is safe.
</details>
<evidence></evidence>
<summary>Static website content; no malicious code.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE.html. Status: SAFE -- Static website content; no malicious code.
[1/5] Reviewing .SRCINFO, PKGBUILD, qoder-cn-ide.js...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a pre-built binary application. The source is a pinned RPM from the official upstream (Aliyun OSS bucket) with a SHA256 checksum provided. The prepare() function performs routine cleanup (removing platform-specific files and unused node_modules) and uses sed for path substitution—all normal for adapting a cross-platform app to Linux. There are no suspicious network requests, obfuscated code, eval/base64 usage, or attempts to exfiltrate data. The only remote source is the application's own download URL, and the checksum is verified. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard binary packaging, no malicious code.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, qoder-cn-ide.js, qoder-cn-ide.sh...
[2/5] Reviewing .SRCINFO, qoder-cn-ide.js, qoder-cn-ide.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary packaging, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It contains standard fields: package name, version, description, upstream URL, architecture, licenses, dependencies, source URLs, and checksums. The source URL points to an Alibaba Cloud OSS bucket (oss-cn-hangzhou.aliyuncs.com) which is consistent with the stated upstream &#34;https://qoder.cn&#34; (a Chinese IDE product). All source entries have SHA-256 checksums provided. No embedded commands, obfuscated content, or suspicious scripts are present. The file itself is declarative and does not execute anything during normal pacman/makepkg operations.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[3/5] Reviewing qoder-cn-ide.js, qoder-cn-ide.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for qoder-cn-ide.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Electron application launcher for an IDE. It sets environment variables (ELECTRON_IS_DEV, ELECTRON_FORCE_IS_PACKAGED, etc.), loads user‑supplied flags from XDG config files, and then executes the Electron runtime with the application’s main script. There are no network requests, suspicious command executions, obfuscated code, or attempts to exfiltrate data. All operations are confined to reading local configuration files and running the packaged application.
</details>
<evidence></evidence>
<summary>Standard Electron launcher; no suspicious behavior.</summary>
</security_assessment>

[4/5] Reviewing qoder-cn-ide.js...
+ Reviewed qoder-cn-ide.sh. Status: SAFE -- Standard Electron launcher; no suspicious behavior.
LLM auditresponse for qoder-cn-ide.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Electron application launcher for a packaged app. It performs the following expected operations:
- Sets the process name by writing to `/proc/self/comm`, which only affects the current process and is a common Electron technique for setting the process title.
- Adjusts `process.argv` to strip launcher arguments before the application entry point.
- Configures standard Electron paths (user cache, user data) using the application name.
- Reads its own `package.json` and dynamically imports the app's bundled main script at `out/main.js`.

There is no evidence of malicious behavior: no network requests, no calls to `eval`, `exec`, `curl`, `wget`, or `base64`, no obfuscated/encoded payloads, no file operations outside the application's own paths, and no tampering with unrelated system files. The dynamic import of `out/main.js` is the normal entry point for the application's own code, not an external or unexpected download. Overall, this file conforms to ordinary Electron packaging practices and exhibits no supply-chain red flags.
</details>
<evidence></evidence>
<summary>Standard Electron app launcher; no malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed qoder-cn-ide.js. Status: SAFE -- Standard Electron app launcher; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 56,463
  Completion Tokens: 4,757
  Total Tokens: 61,220
  Total Cost: $0.005846
  Execution Time: 93.39 seconds

Final Status: SAFE


No issues found.
