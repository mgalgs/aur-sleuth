---
package: ttf-ms-win11-other
pkgbase: ttf-ms-win11
pkgver: 10.0.26200.9445
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 35856
completion_tokens: 3521
total_tokens: 39377
cost: 0.003801020188
execution_time: 116.94
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T07:10:22Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore; excludes build artifacts and fonts only. No security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard local-source font PKGBUILD, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: No malicious code; standard AUR metadata file.
---

ttf-ms-win11-other is built from ttf-ms-win11
Materializing ttf-ms-win11-other from local mirror...
Materialized ttf-ms-win11-other
Analyzing ttf-ms-win11-other AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running makepkg --printsrcinfo sources the PKGBUILD and executes only its top-level scope. In the visible content, the top-level scope consists of comments, variable assignments, arrays of font filenames, a source array built with parameter expansion, a sha256sums array, and function definitions. It does not contain any top-level command substitution, eval, curl, wget, base64 decoding, network exfiltration, or invocation of the package functions.

The DLAGENTS entry for file:// sources invokes /usr/bin/echo only to print a message if a local source file cannot be found. That is not executed by makepkg --printsrcinfo, and it performs no download or execution of untrusted code. The SKIP checksum entries are not a concern for this narrow gate, because no source verification or download occurs during --printsrcinfo. Any code inside pkgver(), prepare(), build(), or package() is out of scope for this step and would be evaluated in the full audit.
</details>
<evidence></evidence>
<summary>
The PKGBUILD top-level scope is limited to data definitions and function declarations. No malicious code executes at source time, so running makepkg --printsrcinfo is safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- The PKGBUILD top-level scope is limited to data definitions and function declarations. No malicious code executes at source time, so running makepkg --printsrcinfo is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR package repository. It excludes build artifacts (`src`, `pkg`, `*.pkg.tar*`), editor backup files (`*~`), license/desktop metadata files, and font binaries (`*.ttf`, `*.ttc`, `*.fon`). This is normal hygiene to keep generated files and large binaries out of the git repository. There is no executable code, no network access, no obfuscation, and no suspicious system modification. Nothing in this file deviates from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore; excludes build artifacts and fonts only. No security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore; excludes build artifacts and fonts only. No security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard font package that expects the user to manually provide font files from a Windows 11 installation. All sources use `file://` URIs and refer to local paths. The `DLAGENTS` line simply prints a user-friendly error message if a required font is missing—this is normal AUR practice for local-source packages. The `sha256sums` array contains hardcoded checksums for every font file (with `SKIP` only for the license file, which is also normal). The `package_*` functions only install fonts and the license into the standard system directories (`/usr/share/fonts/TTF` and `/usr/share/licenses/`). There is no network activity, no obfuscation, no attempts to exfiltrate data, and no execution of untrusted code. The package follows standard Arch packaging conventions and contains no genuinely malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard local-source font PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard local-source font PKGBUILD, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file defines metadata for the `ttf-ms-win11-other` AUR package. All sources are specified as local `file://` URIs pointing to font files that must already exist on the user's system. There are no network downloads, no commands executed, and no obfuscated or suspicious content. The use of `SKIP` for the license checksum is a standard practice for files that are not downloaded. No malicious behavior or supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>No malicious code; standard AUR metadata file.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious code; standard AUR metadata file.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,856
  Completion Tokens: 3,521
  Total Tokens: 39,377
  Total Cost: $0.003801
  Execution Time: 116.94 seconds

Final Status: SAFE


No issues found.
