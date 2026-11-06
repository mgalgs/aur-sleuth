---
package: epic-games-launcher-bin
pkgver: 0.112.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9464
completion_tokens: 1996
total_tokens: 11460
cost: 0.001224496
execution_time: 25.84
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T00:03:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; official upstream source with pinned checksum; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD fetching official Epic launcher; no malicious behavior found.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable and array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and two function definitions (`prepare` and `package`). No command substitutions (`$(...)` or backticks), no `eval`, no `source` of external files, and no standalone command executions are present outside of function bodies. Since `makepkg --printsrcinfo` only sources the global scope and does not run `prepare` or `package`, there is no way for this PKGBUILD to execute dangerous code during the metadata-printing step. All content inside the functions will be reviewed separately in the full PKGBUILD audit.
</details>
<evidence></evidence>
<summary>No dangerous code executes during --printsrcinfo</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during --printsrcinfo
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for an Epic Games Store launcher binary package. It declares package metadata, dependencies, and a single source file downloaded from Epic Games' official content distribution domain (`content-download-egs.distro.on.epicgames.com`). The source is an upstream `.deb` package matching the stated application, and its `sha256sums` value is a pinned checksum rather than `SKIP`, which improves integrity verification.

There is no executable code in this file, no network requests beyond the declared upstream source download, no obfuscated content, and no file-system manipulation instructions. The `noextract` and `options` entries are normal packaging directives. Nothing in this file indicates injected malicious behavior, data exfiltration, backdoors, or unexpected remote code execution.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; official upstream source with pinned checksum; no malicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; official upstream source with pinned checksum; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary repackaging of the official Epic Games Launcher. It downloads a single `.deb` from Epic's own content CDN (`content-download-egs.distro.on.epicgames.com`), verifies it with a pinned SHA-256 checksum, extracts it with `bsdtar`, and installs the launcher binary, support libraries, desktop entry, icons, and license files into the package directory. There are no unexpected network fetches, no `curl`/`wget`/`eval`/`base64` usage, no obfuscated payloads, and no writes outside `$pkgdir`.

The generated wrapper script simply sets `EGL_DISABLE_SELF_UPDATE` to `1` by default (with an environment override) and then `exec`s the real launcher binary. This is a normal packaging choice to prevent the upstream launcher from self-updating outside the package manager. Nothing in the file exfiltrates data, executes attacker-controlled code, or modifies unrelated system files. The behavior is consistent with legitimate AUR packaging practice.
</details>
<evidence></evidence>
<summary>
Standard PKGBUILD fetching official Epic launcher; no malicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD fetching official Epic launcher; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,464
  Completion Tokens: 1,996
  Total Tokens: 11,460
  Total Cost: $0.001224
  Execution Time: 25.84 seconds

Final Status: SAFE


No issues found.
