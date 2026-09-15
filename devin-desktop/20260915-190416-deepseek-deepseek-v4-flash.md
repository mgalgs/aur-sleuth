---
package: devin-desktop
pkgver: 3.10.27
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 19902
completion_tokens: 8394
total_tokens: 28296
cost: 0.00302545740
execution_time: 213.26
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T19:04:15Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard prebuilt binary packaging, no malice."
  - file: devin-desktop.desktop
    status: safe
    summary: Standard desktop entry file; no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned checksums; no malicious content.
  - file: devin-desktop-url-handler.desktop
    status: safe
    summary: Standard URL-handler desktop entry; launches own binary; no malicious behavior.
  - file: devin-desktop.sh
    status: safe
    summary: Standard Electron launcher; only reads user config and runs packaged app.
---

Materializing devin-desktop from local mirror...
Materialized devin-desktop
Analyzing devin-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope; it does not execute `prepare()`, `build()`, or `package()`. The top-level scope in this file consists solely of static metadata assignments (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`), helper variables (`_apt_pool`, `_upstream_ver`, `_debfile`), the `source` and `sha256sums` arrays, and function definitions. No command substitution, `eval`, network fetch, or external command invocation appears at top level, so sourcing the PKGBUILD does not download or execute anything. The more invasive operations (deb extraction, Electron version detection, symlinking system binaries into the package, launcher install) are all inside `prepare()`/`build()`/`package()` and are out of scope for this narrow gate; they should be reviewed in the full PKGBUILD audit. The file content shown is also partially mangled/truncated, but the visible top-level code is benign.
</details>
<evidence></evidence>
<summary>No malicious code executes during `makepkg --printsrcinfo`; the top-level scope is limited to variable assignments and function definitions, so this step is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during `makepkg --printsrcinfo`; the top-level scope is limited to variable assignments and function definitions, so this step is safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, devin-desktop-url-handler.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `devin-desktop` downloads a prebuilt `.deb` package from the official Codeium APT repository, extracts it, and installs the application to `/opt`. All operations are standard for packaging a proprietary Linux binary: extraction of the archive, replacement of bundled `ripgrep` and `fd` with system symlinks, installation of desktop entries, icons, and shell completions. The Electron version is detected at build time and validated against the declared dependency. There is no obfuscated code, no unexpected network requests (the sole download is the package's own upstream `.deb`), no exfiltration of local data, and no modification of files outside the package's own installation directories. The checksums are pinned for all sources. The URL path contains an opaque token (`wVxQEIWkwPUEAGf3`) which appears to be a CDN routing prefix used by the upstream distributor; this is not a sign of malice. The file follows standard AUR packaging practices and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>Safe: standard prebuilt binary packaging, no malice.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, devin-desktop-url-handler.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard prebuilt binary packaging, no malice.
[1/5] Reviewing .SRCINFO, devin-desktop-url-handler.desktop, devin-desktop.desktop...
LLM auditresponse for devin-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org desktop entry for the Devin application. It defines the application name, comment, icon, launch command, category, MIME type, and a desktop action for opening a new empty window. The Exec lines invoke the application binary from the package installation directory with standard arguments (`%F` for file paths, `--new-window` for the action). There is no suspicious network activity, obfuscation, file manipulation, or execution of untrusted code. The file is consistent with normal packaging practice for a desktop application.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious behavior detected.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, devin-desktop-url-handler.desktop...
+ Reviewed devin-desktop.desktop. Status: SAFE -- Standard desktop entry file; no malicious behavior detected.
[2/5] Reviewing .SRCINFO, devin-desktop-url-handler.desktop, devin-desktop.sh...
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It contains only package metadata: name, version, description, URL, dependencies, source file entries, and SHA-256 checksums. It contains no executable code, no install or build functions, no post-install scripts, and no commands that could download and execute content at build time beyond the declared source artifacts.

All three sources are pinned with explicit SHA-256 checksums, and the `.deb` is fetched over HTTPS from `windsurf-stable.codeiumdata.com`, which is the distribution infrastructure used by Codeium/Windsurf/Devin desktop artifacts. The path and filename match the official packaged application. While the domain is not `devin.ai`, this is consistent with upstream distribution hosting and not by itself evidence of malicious behavior. No obfuscation, suspicious network calls, or data exfiltration indicators are present.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata with pinned checksums; no malicious content.</summary>
</security_assessment>

[3/5] Reviewing devin-desktop-url-handler.desktop, devin-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned checksums; no malicious content.
LLM auditresponse for devin-desktop-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop `.desktop` entry that registers the application as a handler for the `devin://` and `windsurf://` URL schemes. The `Exec` line simply launches the package's own installed binary at `/opt/devin-desktop/devin-desktop` with the `--open-url` flag and passes the clicked URL via `%U`. There is no network activity, no obfuscation, no shell interpolation, no downloads, and no use of dangerous commands — the file is plain declarative configuration.

The only mild observation is the registration of `x-scheme-handler/windsurf`, which could cause `windsurf://` links intended for a different product to be routed to this application. However, this is the desktop file's declared purpose (a URL-handler registration) and could be an intentional compatibility choice; it does not by itself exfiltrate data, execute attacker-controlled code, or perform any other genuinely malicious action. No evidence of an injected supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>
Standard URL-handler desktop entry; launches own binary; no malicious behavior.
</summary>
</security_assessment>

[4/5] Reviewing devin-desktop.sh...
+ Reviewed devin-desktop-url-handler.desktop. Status: SAFE -- Standard URL-handler desktop entry; launches own binary; no malicious behavior.
LLM auditresponse for devin-desktop.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard Electron application launcher. It reads optional user-provided flag files from the user's XDG config directory and then uses `exec` to launch the system Electron runtime against the packaged application directory `/opt/devin-desktop/resources/app`.

No malicious behavior is present: there are no network requests, no downloads, no file writes, no encoded or obfuscated commands, and no use of `eval`, `curl`, `wget`, or similar constructs. The `_read_flags` function only appends non-comment lines from the user's own flags file into an array, which is normal launcher behavior. The script is consistent with standard AUR packaging and the common `code.sh` Electron launcher pattern.
</details>
<evidence></evidence>
<summary>Standard Electron launcher; only reads user config and runs packaged app.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed devin-desktop.sh. Status: SAFE -- Standard Electron launcher; only reads user config and runs packaged app.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,902
  Completion Tokens: 8,394
  Total Tokens: 28,296
  Total Cost: $0.003025
  Execution Time: 213.26 seconds

Final Status: SAFE


No issues found.
