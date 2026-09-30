---
package: bedrock-on-linux-bin
pkgver: 2.2.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8994
completion_tokens: 4093
total_tokens: 13087
cost: 0.001522251080
execution_time: 128.25
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T03:05:29Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata with pinned source and checksum.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD with pinned checksum; no malicious behavior found.
---

Materializing bedrock-on-linux-bin from local mirror...
Materialized bedrock-on-linux-bin
Analyzing bedrock-on-linux-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD and executes its global/top-level statements. In the visible content, all top-level code consists of ordinary metadata assignments: package name, version, dependencies, source URL strings, checksum values, and simple variable expansion such as `_appimage="BedrockOnLinux-${pkgver}-x86_64.AppImage"`. No network fetch, command substitution, eval, base64 decoding, or other executable payload is present at global scope. The `prepare()` and `package()` functions contain file operations, but `makepkg --printsrcinfo` does not run them, so they are out of scope for this metadata-only gate. The truncated region also shows no matching suspicious patterns. Therefore, sourcing this PKGBUILD to print metadata is safe.
</details>
<evidence></evidence>
<summary>No top-level malicious code; metadata parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; metadata parsing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only standard package metadata for the `bedrock-on-linux-bin` package. It points to a pinned release (`v2.2.6`) of an AppImage hosted on the project's official GitHub repository, with a specific SHA256 checksum provided. There are no signs of malicious or unusual code, commands, or network destinations. The file describes the package and its dependencies in a typical AUR format.
</details>
<evidence></evidence>
<summary>Standard metadata with pinned source and checksum.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata with pinned source and checksum.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a conventional AppImage PKGBUILD for the bedrock-on-linux-bin package. The source is fetched from the package's own declared upstream GitHub releases and, importantly, has a pinned sha256 checksum (not SKIP), so the downloaded AppImage is integrity-verified. The prepare() function extracts the AppImage with `--appimage-extract`, which is standard practice for AppImage packages that need to pull out desktop files, icons, and licenses.

The package() function only writes inside `${pkgdir}` and `${srcdir}`. The icon-renaming loop (renaming png/svg files under `usr/share/icons` to `bedrock-on-linux.*`) operates strictly within the package's own install tree — it is a bit sloppy and would clobber original icon filenames inside the package, but it does not touch user data, system files, or anything outside the package namespace. The `sed -i` calls modify the installed .desktop file within `${pkgdir}`, which is routine. There are no network requests at build time beyond makepkg's own source fetch, no obfuscated/encoded payloads, no use of eval/base64/curl-pipe-to-shell, and no post-install hooks that run attacker-controlled content. The AppImage is executed during prepare() to extract it, but that is inherent to the AppImage format and the binary is checksum-pinned to the declared upstream.

Minor hygiene notes (not threats): the upstream is a personal/fork-style GitHub org, and the icon-rename logic is somewhat careless, but neither rises to the level of a supply-chain concern. The packaging matches ordinary AUR practice.
</details>
<evidence>
</evidence>
<summary>
Standard AppImage PKGBUILD with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD with pinned checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,994
  Completion Tokens: 4,093
  Total Tokens: 13,087
  Total Cost: $0.001522
  Execution Time: 128.25 seconds

Final Status: SAFE


No issues found.
