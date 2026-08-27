---
package: hermes-agent-desktop
pkgver: 0.20.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 18711
completion_tokens: 3635
total_tokens: 22346
cost: 0.00202599838
execution_time: 43.16
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
upstream_files: 10490
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-27T15:18:21Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Static metadata file, no malice detected.
  - file: system-electron-resources.patch
    status: safe
    summary: Environment variable path override, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code.
---

Cloning https://aur.archlinux.org/hermes-agent-desktop.git...
Cloned hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
For the narrow safety gate (fetching sources and sourcing the PKGBUILD), this PKGBUILD is safe. The `source` array contains only the upstream GitHub tarball for NousResearch/hermes-agent plus a local patch file; no unexpected or third-party download hosts are involved. The tarball URL is the project's own upstream tag and both checksums are pinned SHA-256 values, so there is no SKIP or unverified-checksum concern here.

The PKGBUILD's top-level scope contains only variable assignments, array definitions, and function definitions — no command substitutions, no `eval`, no `curl`/`wget`/`bash` payload execution, and no network operations. `pkgver` is a static variable, not a function that runs code. All potentially interesting operations (`npm ci`, patching, Electron linking, builds, and install steps) are inside `prepare()`, `build()`, `check()`, and `package()`, which are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Those functions should still be audited in the full PKGBUILD review, but they are out of scope for this gate.
</details>
<evidence>
</evidence>
<summary>
Sources are upstream GitHub tarballs with pinned checksums; no top-level or pkgver code executes malicious actions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sources are upstream GitHub tarballs with pinned checksums; no top-level or pkgver code executes malicious actions.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/hermes-agent-2026.8.27/apps/desktop/assets/icon.png); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 10490 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file for an Arch User Repository (AUR) package. It simply lists common build artifacts (tarballs, zip files, and assembled package files) to prevent them from being tracked by Git. There are no commands, no network operations, no obfuscation, and no other security-relevant content. It is a routine, benign file.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License text. It contains no code, no commands, no network requests, no obfuscation, and no file operations. It is a purely declarative license file with no potential for malicious behavior. The content is exactly what you would expect in a LICENSE file for an open-source project.
</details>
<evidence>
</evidence>
<summary>Standard license file, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, system-electron-resources.patch...
[2/5] Reviewing .SRCINFO, PKGBUILD, system-electron-resources.patch...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch User Repository package. It contains only static declarations: package name, version, dependencies, source URLs, and checksums. No executable code, scripts, instructions, or obfuscated content is present. The source URL points to the project's official GitHub repository with a provided SHA256 checksum, which is a normal practice. The unusual version tag `v2026.8.27` does not indicate malice. There are no network requests, system modifications, or dangerous commands. The file poses no security risk as a supply-chain attack vector.
</details>
<evidence>
</evidence>
<summary>Static metadata file, no malice detected.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, system-electron-resources.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file, no malice detected.
LLM auditresponse for system-electron-resources.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch simply adds an alternative path for finding `install-stamp.json` using the environment variable `HERMES_DESKTOP_RESOURCES_PATH`. This is a standard configuration injection via environment variable, commonly used in packaging to allow customization of resource directories. There is no network activity, code execution, obfuscation, or data exfiltration. The modification is benign and consistent with normal build/packaging practices.
</details>
<evidence></evidence>
<summary>Environment variable path override, no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed system-electron-resources.patch. Status: SAFE -- Environment variable path override, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an Electron‑based desktop application.  
All source downloads originate from the official upstream GitHub repository with pinned commits and SHA256 checksums.  
No obfuscated code, inline base64, `curl|bash`, `wget`, `eval`, or any network exfiltration is present.  

- **prepare()**: patches the source to use Arch’s system Electron, runs `npm ci --prefer-offline --ignore-scripts` and `npm rebuild node-pty --offline` — both offline operations.  
- **build()**: runs the upstream build commands (`npm run build`, `npm run builder`) with offline mode and system Electron linked; no unexpected network calls.  
- **check()**: runs upstream typecheck/tests and verifies the native addon loads under the system Electron runtime.  
- **package()**: copies built resources, creates a standard launcher shell script that reads user‑supplied flags from `~/.config/hermes-desktop-flags.conf` and executes `electron42` with the app — a common pattern. No script is `source`d; it is data‑only.  

The use of HTML entities (`&lt;`, `&gt;`) in the maintainer line is a formatting artifact and has no security impact.  
No evidence of supply‑chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,711
  Completion Tokens: 3,635
  Total Tokens: 22,346
  Total Cost: $0.002026
  Execution Time: 43.16 seconds

Final Status: SAFE


No issues found.
