---
package: paradox-launcher
pkgver: 2026.11.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13782
completion_tokens: 12490
total_tokens: 26272
cost: 0.00214896528
execution_time: 233.62
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T15:38:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official source and pinned checksum; no security issue.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker version-check config for upstream Paradox Launcher; no malicious behavior.
  - file: paradox-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: paradox-launcher
    status: safe
    summary: "Safe wrapper: copies app into user home and runs its bootstrapper."
  - file: PKGBUILD
    status: safe
    summary: Standard .deb repackaging with official pinned source; no malicious behavior.
---

Materializing paradox-launcher from local mirror...
Materialized paradox-launcher
Analyzing paradox-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, etc.) and a package() function. No code in the global scope executes commands, evaluates strings, or performs any network operations. The source array and checksum are defined statically. There is no malicious top-level code that would be triggered by sourcing the file for `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file. It lists package metadata, dependencies, and a single source file downloaded from Paradox Interactive's official launcher domain. The source has a pinned SHA-256 checksum, so the downloaded .deb can be verified against a known value.

There is no obfuscated code, no encoded commands, no suspicious network endpoint, no unexpected file operations, and no attempt to execute fetched content. The listed dependencies are conventional runtime libraries for a desktop application. Nothing in this file indicates injected malicious behavior or a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with official source and pinned checksum; no security issue.
</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml, paradox-launcher...
[1/5] Reviewing PKGBUILD, .nvchecker.toml, paradox-launcher...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official source and pinned checksum; no security issue.
LLM auditresponse for .nvchecker.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used to detect new upstream releases of the Paradox Launcher. It performs an HTTP HEAD request to the official Paradox Interactive endpoint (`launcher.paradoxinteractive.com/v2/paradox-launcher-installer-linux`) and reads the `location` response header to determine the latest version number via a regex. The `release_url` is only used as a human-readable reference to the product page.

There is no execution of downloaded content, no obfuscation, no data exfiltration, and no file system modification. The only network interaction is a metadata-only HEAD request to the application's own upstream vendor. The `from_pattern`/`to_pattern` entries merely transform underscores to dots in a version string (e.g. `1_2_3` → `1.2.3`). This is ordinary, expected packaging tooling and presents no supply-chain risk.

The domain involved is the project's official upstream host, so even though the URL is technically redirect-based, this is the vendor's own release channel. There are no hygiene concerns significant enough to even note beyond the file being tied to a vendor-hosted redirect for version detection, which is normal for this style of tool.
</details>
<evidence></evidence>
<summary>Standard nvchecker version-check config for upstream Paradox Launcher; no malicious behavior.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, .nvchecker.toml, paradox-launcher, paradox-launcher.desktop...
[2/5] Reviewing PKGBUILD, paradox-launcher, paradox-launcher.desktop...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker version-check config for upstream Paradox Launcher; no malicious behavior.
LLM auditresponse for paradox-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Paradox Launcher application. It contains only metadata fields (Name, Comment, Exec, Icon, Terminal, Type, Categories) and does not include any executable code, network requests, obfuscated content, or suspicious operations. The `Exec` line points to `/usr/bin/paradox-launcher %U`, which is the expected binary path for the application. No supply-chain attack indicators or deviations from standard packaging practices are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, paradox-launcher...
+ Reviewed paradox-launcher.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for paradox-launcher:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard per-user launcher wrapper. It creates `~/.paradox-launcher` on first use, copies the installed application files from `/opt/paradox-launcher/` into it, makes the upstream bootstrapper executable, and runs it. There are no network downloads, no encoded commands, no `eval`, no `curl`/`wget` piping, and no writes outside the application's own per-user directory. Running the application's bootstrapper from the user-writable copy is expected behavior for launchers that need write access or self-update capabilities; it is not injected malicious code.

The only mild consideration is that the script executes `~/.paradox-launcher/data/bootstrapper/bootstrapper.sh` from the user's home directory. On a single-user system this is no different from running the installed launcher. It could only become a local code-execution hazard if an attacker can pre-create or modify `~/.paradox-launcher`, which requires either same-user access (already equivalent to code execution) or a misconfigured/world-writable home directory. This is a packaging/hygiene nuance, not evidence of a supply-chain attack, so the file is marked SAFE.
</details>
<evidence>
</evidence>
<summary>Safe wrapper: copies app into user home and runs its bootstrapper.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed paradox-launcher. Status: SAFE -- Safe wrapper: copies app into user home and runs its bootstrapper.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a routine repackaging of the official Paradox Interactive launcher .deb for Arch. The source URL points to the vendor&apos;s own domain (launcher.paradoxinteractive.com) over HTTPS, and the sha256sum is pinned (not SKIP), so the downloaded content is verified against a fixed hash. All operations in package() are standard .deb-restructuring steps: extracting the data archive with tar, copying the payload under &quot;$pkgdir&quot;/opt and &quot;$pkgdir&quot;/usr, renaming an icon and its .desktop reference so the launcher entry resolves correctly, and creating a symlink in /usr/bin to the installed binary.

No evidence of injected malicious code was found: there is no eval, base64, curl|bash, obfuscated string construction, external host communication beyond the declared upstream source, or file writes outside $srcdir/$pkgdir. Minor hygiene notes only: epoch=1 combined with the date-based pkgver 2026.11.1 is unusual and could cause this package to always win version comparison, and the trailing -R on the cp commands is redundant; also, extracting data.tar.gz directly assumes the .deb embeds a gzip data archive. These are packaging-quality concerns (or potential build failures), not indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard .deb repackaging with official pinned source; no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard .deb repackaging with official pinned source; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,782
  Completion Tokens: 12,490
  Total Tokens: 26,272
  Total Cost: $0.002149
  Execution Time: 233.62 seconds

Final Status: SAFE


No issues found.
