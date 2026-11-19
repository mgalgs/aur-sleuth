---
package: opencode-studio
pkgver: 2.5.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17679
completion_tokens: 5000
total_tokens: 22679
cost: 0.002518789
execution_time: 39.4
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T11:06:11Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with build and package artifact exclusions; no security concerns.
  - file: LICENSE
    status: safe
    summary: Plain MIT license text with no executable or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: "SAFE: Pure metadata file with pinned checksums and upstream GitHub sources."
  - file: opencode-studio.desktop
    status: safe
    summary: Standard desktop entry; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious or suspicious behavior found.
  - file: opencode-studio.sh
    status: safe
    summary: Benign launcher script; starts local Node services and opens localhost UI. No malicious behavior.
---

Materializing opencode-studio from local mirror...
Materialized opencode-studio
Analyzing opencode-studio AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable and array assignments (pkgname, pkgver, source, etc.). No command substitutions, `eval`, backtick execution, or calls to networking tools like `curl` or `wget` are present. While the file uses HTML-encoded single quotes (`&amp;apos;`) in place of regular apostrophes, which would cause syntax errors and potential background attempts when sourced, these do not result in the execution of arbitrary or malicious code — any command invoked (e.g., `apos;Local GUI…`) will fail harmlessly with a "command not found" error. The functions `build()` and `package()` are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No malicious execution in global scope. Safe for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious execution in global scope. Safe for printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in Arch packaging repositories. It ignores build directories (`src/`, `pkg/`) and generated package artifacts (`*.tar.gz`, `*.pkg.tar.*`). These entries are normal for AUR and PKGBUILD workflows and contain no commands, network operations, obfuscation, or any behavior outside routine packaging hygiene.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore with build and package artifact exclusions; no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with build and package artifact exclusions; no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain LICENSE document containing standard MIT License text and a note referencing the project's upstream GitHub repository. It contains no executable code, no network operations, no file modifications, no obfuscation, and no instructions of any kind. There is nothing in this file that constitutes malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Plain MIT license text with no executable or suspicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode-studio.desktop...
[2/6] Reviewing .SRCINFO, PKGBUILD, opencode-studio.desktop...
+ Reviewed LICENSE. Status: SAFE -- Plain MIT license text with no executable or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file for the `opencode-studio` AUR package. It contains only package metadata: name, description, version, URL, architecture, license, dependencies, and source entries with SHA-256 checksums. No executable code, build functions, network commands, or file operations are present.

The sources are fetched from the project's own GitHub repository (tag v2.5.1) over HTTPS, along with a launcher script, desktop entry, and license file. All four sources have explicit SHA-256 checksums, including the tarball. There is no evidence of obfuscation, unexpected hosts, credential access, or supply-chain injection.
</details>
<evidence>
</evidence>
<summary>
SAFE: Pure metadata file with pinned checksums and upstream GitHub sources.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, opencode-studio.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- SAFE: Pure metadata file with pinned checksums and upstream GitHub sources.
[3/6] Reviewing PKGBUILD, opencode-studio.desktop, opencode-studio.sh...
LLM auditresponse for opencode-studio.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org desktop entry for launching an application. It contains only metadata: application name, comment, executable name, icon, and category. The `Exec=opencode-studio` line simply invokes the package's own installed binary, which is normal and expected for a desktop entry. There are no network operations, obfuscated commands, file manipulations, or system modifications. The file matches ordinary packaging practice for a GUI application and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, opencode-studio.sh...
+ Reviewed opencode-studio.desktop. Status: SAFE -- Standard desktop entry; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads a pinned release tarball from the project's own GitHub repository, verifies it with a sha256 checksum, and builds the application using `npm ci` and `npx next build`. There are no suspicious network requests, no execution of downloaded scripts, no obfuscated code, no unexpected file modifications, and no data exfiltration.

The `npm ci` commands fetch dependencies from the npm registry during the build; this is normal for npm-based packages and not evidence of malice. The `sed` path rewrites and removal of musl-specific binaries are routine packaging adjustments for Arch/glibc. All source files have pinned checksums, including the launcher script and desktop file. Nothing in this file deviates from expected packaging behavior.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[5/6] Reviewing opencode-studio.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious or suspicious behavior found.
LLM auditresponse for opencode-studio.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward application launcher script. It starts two Node.js processes from the package's own installation directory (`/usr/lib/opencode-studio/server/index.js` and `/usr/lib/opencode-studio/client/server.js`), binds the web UI to localhost:127.0.0.1 port 1080 (configurable via `STUDIO_UI_PORT`), registers a standard trap to clean up both background processes on exit, and opens the local URL in the default browser via `xdg-open`.

There is no suspicious network activity (all connections are to localhost, and `xdg-open` only opens a local URL), no encoded/obfuscated commands, no file operations outside the package's scope, and no execution of remotely fetched content. The script does not use `eval`, `base64`, `curl`, or `wget`. Keeping the backend bound to 127.0.0.1 is actually a reasonable security posture for a local web UI. This is consistent with normal packaging practice for a launcher script.
</details>
<evidence>
</evidence>
<summary>
Benign launcher script; starts local Node services and opens localhost UI. No malicious behavior.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed opencode-studio.sh. Status: SAFE -- Benign launcher script; starts local Node services and opens localhost UI. No malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,679
  Completion Tokens: 5,000
  Total Tokens: 22,679
  Total Cost: $0.002519
  Execution Time: 39.40 seconds

Final Status: SAFE


No issues found.
