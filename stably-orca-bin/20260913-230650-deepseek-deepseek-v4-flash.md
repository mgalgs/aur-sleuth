---
package: stably-orca-bin
pkgver: 1.4.201
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13694
completion_tokens: 2095
total_tokens: 15789
cost: 0.0008262408
execution_time: 32.26
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T23:06:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: No malicious behavior found; standard metadata with pinned upstream checksums.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no malicious code found.
  - file: stably-orca.sh
    status: safe
    summary: Simple AppRun wrapper; no malicious behavior or suspicious operations found.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions (prepare, package). No command substitutions (`$(...)`), backtick expansions, `eval` calls, `source` of external files, or other code that would execute during the sourcing step of `makepkg --printsrcinfo`. The source array uses normal variable interpolation within string literals, which is safe. No global-scope code performs network requests, file operations, or data exfiltration.</details>
<evidence></evidence>
<summary>No top-level code executes; only variable assignments and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes; only variable assignments and function definitions.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, stably-orca.desktop...
[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD...
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard package metadata for the `stably-orca-bin` AUR package. The source downloads a prebuilt AppImage from the project's official GitHub releases URL (`https://github.com/stablyai/orca/releases/...`), along with a wrapper shell script and a desktop entry. All three artifacts have pinned, non-SKIP SHA256 checksums.

There is no evidence of malicious behavior: no network requests outside the declared upstream release URL, no obfuscated commands, no dangerous file operations, and no post-install hooks. The `noextract` option and `!strip`/`!debug` settings are normal packaging choices for a prebuilt binary AppImage. The file is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; standard metadata with pinned upstream checksums.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD, stably-orca.sh...
[1/4] Reviewing stably-orca.desktop, PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious behavior found; standard metadata with pinned upstream checksums.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file. It declares an application launcher entry named "Orca" for an Electron-based IDE, with the `Exec` line pointing to the `stably-orca` binary (passing `%U` for URL/file arguments, which is routine for desktop launchers). No malicious behavior is present: there are no network operations, no encoded or obfuscated commands, no file manipulation outside normal packaging, and no attempt to exfiltrate data. The file is consistent with ordinary packaging practice and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious content found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt Electron-based IDE distributed as an AppImage. The source is pinned to a specific release on the project&#8217;s official GitHub repository with hardcoded SHA256 checksums for all three source files, ensuring integrity of the downloaded artifacts.

The `prepare()` function extracts the AppImage using its own `--appimage-extract` flag, which is the normal way to repackage an AppImage into a traditional directory tree. The `package()` function installs the extracted contents into `/opt/stably-orca`, creates a wrapper script and a desktop entry, and includes a careful icon discovery loop that fails loudly if no icon is found &#8211; this is a robustness measure, not a malicious pattern.

There is no evidence of obfuscated code, unexpected network requests, exfiltration of system data, or any operation that goes beyond the legitimate packaging of the upstream application. The code is transparent and performs only expected packaging operations.
</details>
<evidence></evidence>
<summary>Standard AUR packaging, no malicious code found.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no malicious code found.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple wrapper script for the Stably AI Orca AppImage tree installed under /opt/stably-orca. It sets `APPDIR` explicitly and then executes `${APPDIR}/AppRun` with a Chromium feature flag (`--disable-features=Vulkan`) and passes through the user&apos;s arguments.

There is no network access, no encoded or obfuscated content, no file modification, and no execution of untrusted downloaded content. The only command run is `exec "${APPDIR}/AppRun" ...`, which is the package&apos;s own application entry point. The comments explain a legitimate display/rendering workaround. Nothing in this script deviates from standard packaging practice or indicates injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Simple AppRun wrapper; no malicious behavior or suspicious operations found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Simple AppRun wrapper; no malicious behavior or suspicious operations found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,694
  Completion Tokens: 2,095
  Total Tokens: 15,789
  Total Cost: $0.000826
  Execution Time: 32.26 seconds

Final Status: SAFE


No issues found.
