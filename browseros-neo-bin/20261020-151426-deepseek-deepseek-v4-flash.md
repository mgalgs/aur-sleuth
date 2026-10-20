---
package: browseros-neo-bin
pkgver: 0.51.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15529
completion_tokens: 7193
total_tokens: 22722
cost: 0.002722265
execution_time: 67.57
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T15:14:26Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata; no malicious content found.
  - file: browseros-neo.install
    status: safe
    summary: Standard browser package install script; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Package fetches its own upstream binaries; no malicious or obfuscated behavior found.
---

Materializing browseros-neo-bin from local mirror...
Materialized browseros-neo-bin
Analyzing browseros-neo-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only static variable assignments and function definitions. No command substitutions, eval, or other executable code runs when the file is sourced by `makepkg --printsrcinfo`. The `pkgver()`, `prepare()`, and `package()` functions are defined but not called during this step, so their contents (including the `curl` commands and other logic) are out of scope for this gate. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, browseros-neo.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the `browseros-neo-bin` package from the Arch User Repository. It contains only key-value pairs describing the package: name, version, description, dependencies, conflicts, provides, and source. No executable code or inline scripts are present. The `source` field points to the package's own AUR git repository (`git+https://aur.archlinux.org/browseros-neo-bin.git`), which is normal for VCS-based AUR packages; the `sha256sums = SKIP` is expected for such sources and is not a security issue. Dependencies are typical for a Chromium-based browser (gtk3, alsa, cups, etc.). There is no obfuscated content, network requests, file operations, or any other suspicious behavior. The file is purely declarative and contains no malicious instructions or hidden payloads.
</details>
<evidence>
</evidence>
<summary>Declarative metadata; no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, browseros-neo.install...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata; no malicious content found.
LLM auditresponse for browseros-neo.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard package install script for a Chromium-based browser bundle. The `chmod 4755` on `/usr/lib/browserclaw/chrome_sandbox` is the normal setuid-root sandbox helper pattern used by Chromium-derived browsers and is not malicious. The `update-desktop-database` and `gtk-update-icon-cache` calls are routine desktop integration hooks.

The `curl`/`jq` reference appears only inside an `echo` informational message telling the user how to check releases; it is not executed during install. The script only queries the local pacman database for a version string and prints status messages. There is no evidence of obfuscation, data exfiltration, unexpected downloads, or modification of files outside the package's own scope.
</details>
<evidence>
</evidence>
<summary>
Standard browser package install script; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed browseros-neo.install. Status: SAFE -- Standard browser package install script; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is an auto-rolling binary package that resolves the newest browserclaw release tag from the project's own GitHub releases/API in `pkgver()`, then downloads the matching `.deb` from `github.com/browseros-ai/BrowserOS` in `prepare()`, validates it with `bsdtar`, and extracts `data.tar.zst` into `$pkgdir`. All network operations target the upstream project's GitHub URLs; there is no exfiltration, no shellcode/obfuscation, and no execution of fetched scripts. The inline doctor/wrapper scripts only operate under `~/.browserclaw`, `~/.config/browser-claw`, and `/usr/lib/browserclaw`, which is within the application's own scope.

The main caveat is supply-chain hygiene rather than malice: the `.deb` is fetched at build time from a mutable latest release and the checksum is `SKIP`, so builds are not reproducible and the binary is trusted purely on GitHub/upstream integrity. This is consistent with common AUR `-bin`/`-git` packaging and is not evidence of an injected attack.
</details>
<evidence>
</evidence>
<summary>
Package fetches its own upstream binaries; no malicious or obfuscated behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Package fetches its own upstream binaries; no malicious or obfuscated behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,529
  Completion Tokens: 7,193
  Total Tokens: 22,722
  Total Cost: $0.002722
  Execution Time: 67.57 seconds

Final Status: SAFE


No issues found.
