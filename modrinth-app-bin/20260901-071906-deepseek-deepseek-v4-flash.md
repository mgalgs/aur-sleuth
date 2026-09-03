---
package: modrinth-app-bin
pkgver: 0.19.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 13675
completion_tokens: 2441
total_tokens: 16116
cost: 0.00150163244
execution_time: 53.84
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 1
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T07:19:06Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD repackaging pinned upstream binary; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues
  - file: modrinth-app
    status: safe
    summary: Benign launcher wrapper with NVIDIA workaround; no malicious behavior detected.
  - file: modrinth-file-extensions.xml
    status: safe
    summary: Benign MIME type registration file.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, pinned source, no issues.
---

Cloning https://aur.archlinux.org/modrinth-app-bin.git...
Cloned modrinth-app-bin
Analyzing modrinth-app-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only assigns variables and defines a `package()` function. The `source` array fetches a binary `.deb` from the official Modrinth GitHub releases page, with a pinned version and checksum (not skipped). No code in the global scope or `pkgver()` (which is absent) performs any dangerous operations. The `package()` function is not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, running these commands is safe.
</details>
<evidence>
</evidence>
<summary>Standard binary package from upstream; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard binary package from upstream; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 1 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for repackaging an upstream `.deb` binary. The source is the official Modrinth GitHub releases URL (`github.com/modrinth/code`), which is the package's own upstream. A pinned `sha256sums` checksum is provided, so the downloaded artifact is verified against a fixed value. The `package()` function uses `bsdtar` to extract the `usr` tree from the Debian package into `$pkgdir` and creates a symlink for the binary name — all routine, non-malicious operations.

There are no suspicious network requests, no obfuscated or encoded commands, no `eval`/`curl|bash`, no post-install hooks manipulating files outside the package scope, and no unchecked content fetched at build time. The extraction scope is limited to `usr` inside the upstream package, and no unrelated hosts are contacted. Nothing in this file deviates from ordinary packaging practice; it is safe.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD repackaging pinned upstream binary; no malicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD repackaging pinned upstream binary; no malicious behavior found.
[1/5] Reviewing .SRCINFO, .gitignore, modrinth-app...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .gitignore for an AUR package. It only lists patterns to ignore build artifacts (pkg/, src/, compiled packages). There is no executable code, network requests, obfuscation, or any security-relevant operations.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, modrinth-app...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues
[2/5] Reviewing .SRCINFO, modrinth-app, modrinth-file-extensions.xml...
LLM auditresponse for modrinth-app:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple shell launcher for the Modrinth App. It checks whether an NVIDIA GPU is present using `lspci`, and if so sets `WEBKIT_DISABLE_DMABUF_RENDERER=1` to avoid rendering issues. This is a common and benign compatibility workaround.

The script then launches the packaged application binary at `/opt/modrinth-app/modrinth-app` with `MODRINTH_EXTERNAL_UPDATE_PROVIDER=1`, passing through any user arguments. There are no network requests, downloads, obfuscated commands, file exfiltration, or execution of untrusted content. The behavior is consistent with standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Benign launcher wrapper with NVIDIA workaround; no malicious behavior detected.
</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, modrinth-file-extensions.xml...
+ Reviewed modrinth-app. Status: SAFE -- Benign launcher wrapper with NVIDIA workaround; no malicious behavior detected.
LLM auditresponse for modrinth-file-extensions.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Freedesktop shared MIME-info XML file that registers the `.mrpack` extension as a subclass of `application/zip` with an icon and comment. It contains no executable code, no network requests, no obfuscation, and no file operations. It is purely declarative and follows standard desktop integration practices.
</details>
<evidence></evidence>
<summary>Benign MIME type registration file.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed modrinth-file-extensions.xml. Status: SAFE -- Benign MIME type registration file.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `modrinth-app-bin` package. It declares a pinned upstream source (`v0.19.2` from the official Modrinth GitHub releases) with a provided SHA-256 checksum. There are no obfuscated commands, network fetches, file manipulations, or any other malicious content. The package follows normal binary packaging practices for the AUR.
</details>
<evidence></evidence>
<summary>Standard metadata file, pinned source, no issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, pinned source, no issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,675
  Completion Tokens: 2,441
  Total Tokens: 16,116
  Total Cost: $0.001502
  Execution Time: 53.84 seconds

Final Status: SAFE


No issues found.
