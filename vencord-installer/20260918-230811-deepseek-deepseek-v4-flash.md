---
package: vencord-installer
pkgver: 1.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17071
completion_tokens: 7521
total_tokens: 24592
cost: 0.00155555372
execution_time: 193.9
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T23:08:10Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License text only; no executable or suspicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration for version tracking.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file with pinned upstream tag and checksum; no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard ISC license text; no executable or suspicious content.
  - file: REUSE.toml
    status: safe
    summary: Static REUSE config file; no malicious or dangerous behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Go package build; no malicious behavior detected.
---

Materializing vencord-installer from local mirror...
Materialized vencord-installer
Analyzing vencord-installer AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and evaluates only its global/top-level scope. In this PKGBUILD, the top-level consists solely of standard metadata variable assignments (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, dependency arrays, `source`, and `sha256sums`). There are no top-level command substitutions, backticks, `eval`, `curl`, `wget`, exfiltration attempts, or obfuscated code.

The `prepare()`, `build()`, and `package()` functions contain build-related commands, including `go build`, `go mod download`, `git rev-parse`, and `install`. However, these functions are not executed by `makepkg --printsrcinfo`, so they are outside the scope of this specific safety gate. The `source` array uses the package's own upstream Git repository, which is normal, and no sources are downloaded or verified during this metadata-printing step.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD code is standard metadata; unsafe functions are not executed during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD code is standard metadata; unsafe functions are not executed during --printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text MIT/ISC-style software license. It contains no executable code, no network operations, no file manipulation, no obfuscation, and no system modifications. It is exactly what it appears to be: a standard permissive license granting permission to use, copy, modify, and distribute the software. There are no security concerns.
</details>
<evidence></evidence>
<summary>License text only; no executable or suspicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- License text only; no executable or suspicious content.
[1/6] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to monitor upstream releases. It specifies the GitHub repository `Vencord/Installer`, uses `max_tag` to find the latest version tag, and sets a `v` prefix for version matching. There is no executable code, no network requests beyond the declared upstream source, and no obfuscated or dangerous content. The file is consistent with standard packaging practices for tracking version updates.
</details>
<evidence></evidence>
<summary>Standard nvchecker configuration for version tracking.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration for version tracking.
[2/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the `vencord-installer` AUR package. It declares the package using a pinned Git tag (`v1.4.2`) from the official upstream repository `https://github.com/Vencord/Installer.git` and includes a non-SKIP SHA-256 checksum. Dependencies are normal runtime and build dependencies for a Go-based GUI application and match the package description. No malicious commands, network requests, obfuscation, or unexpected file operations are present. There is nothing beyond standard AUR packaging metadata.
</details>
<evidence>
</evidence>
<summary>
Standard metadata file with pinned upstream tag and checksum; no security concerns.</summary>
</security_assessment>

[3/6] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file with pinned upstream tag and checksum; no security concerns.
[3/6] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain ISC license text. It contains no executable code, no network access, no file operations, and no obfuscated content. It is exactly what a LICENSE file in an AUR package should be: a standard permissive software license. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard ISC license text; no executable or suspicious content.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license text; no executable or suspicious content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE tool configuration used for declaring copyright and license metadata on packaging and repository files. It contains only a version field and an annotation table listing file patterns such as PKGBUILD, .gitignore, README.md, and various wildcard file types. No executable code, network requests, obfuscated strings, or suspicious operations are present.

The content is consistent with standard AUR packaging hygiene and does not deviate into any behavior that could exfiltrate data, download or execute untrusted code, modify system files, or otherwise introduce a supply-chain risk. It is a static metadata configuration file with no security relevance.
</details>
<evidence>
</evidence>
<summary>
Static REUSE config file; no malicious or dangerous behavior found.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Static REUSE config file; no malicious or dangerous behavior found.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a normal Go packaging pattern. It checks out the package's own upstream repository at a tag, runs `go mod download` in prepare, builds two Go binaries in build, and installs them along with an icon and a desktop file. There is no use of curl/wget, eval, base64, obfuscated strings, extra network hosts, or writes outside `$srcdir`/`$pkgdir`.

The only minor hygiene note is that the source is a `git+...#tag=...` VCS source while a non-`SKIP` sha256sum is supplied; this is unusual and may not be meaningful for a VCS source, but it is not evidence of malice. Go module downloads at build time are also standard for Go packages and are governed by the project's own `go.mod`/`go.sum`. No injected or supply-chain behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>
Standard Go package build; no malicious behavior detected.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go package build; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,071
  Completion Tokens: 7,521
  Total Tokens: 24,592
  Total Cost: $0.001556
  Execution Time: 193.90 seconds

Final Status: SAFE


No issues found.
