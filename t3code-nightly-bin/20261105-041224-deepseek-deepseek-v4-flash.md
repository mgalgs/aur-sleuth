---
package: t3code-nightly-bin
pkgver: 0.1.8_nightly.20261105.4205
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9943
completion_tokens: 6439
total_tokens: 16382
cost: 0.002076711
execution_time: 47.21
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T04:12:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with no executable code; sources pinned with checksums; SAFE.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD; no signs of injected malicious code.
---

Materializing t3code-nightly-bin from local mirror...
Materialized t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global/top-level scope. This PKGBUILD contains only standard variable and array assignments: `pkgname`, `pkgver`, `pkgrel`, `depends`, `source`, `sha256sums`, and similar metadata. There are no top-level command substitutions, no network calls, no `eval`, `curl`, `wget`, or base64/obfuscated payloads, and no file-modifying operations that would execute while the file is sourced.

The `prepare()` and `package()` functions contain AppImage extraction, file installation, and desktop/icon setup logic, but those functions are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate. The checksums are pinned and non-SKIP, though this would not be a blocking factor either way at this step. No genuinely malicious behavior is present in the sourced scope.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is standard metadata; no malicious code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is standard metadata; no malicious code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file, which is purely declarative and contains no executable code, shell commands, or obfuscated content. It serves solely to describe the package structure, dependencies, and source locations for the AUR. 

The specified sources are the project's own AppImage binary and LICENSE file, both hosted on the official GitHub repository (`github.com/pingdotgg/t3code`). Crucially, both sources are pinned with specific SHA256 checksums, providing integrity verification for the downloaded artifacts. The dependency list is extensive but characteristic of a desktop GUI application that integrates with system-level libraries (GTK, ALSA, DBus, systemd-libs, Mesa, etc.). The optional dependency on `openai-codex` directly aligns with the package's stated purpose as a "desktop control surface for local coding agents."

No evidence of injected malicious code, unexpected network destinations, data exfiltration, or other supply-chain attack indicators was found within this metadata file. The packaging practices demonstrated here (pinned checksums, standard GitHub release sources) represent standard and reasonable hygiene for a prebuilt binary package.
</details>
<evidence></evidence>
<summary>Declarative metadata file with no executable code; sources pinned with checksums; SAFE.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with no executable code; sources pinned with checksums; SAFE.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary: it downloads the AppImage and license from the project's official GitHub releases, verifies them with pinned SHA-256 checksums, extracts the AppImage payload, and installs the contents into the package directory. There is no obfuscation, no unexpected network destinations, no execution of downloaded code beyond AppImage&#39;s built-in `--appimage-extract` feature, and no exfiltration of local data. The `chrome-sandbox` file is given setuid 4755 permissions, which is standard for Chromium-based applications and not indicative of a backdoor. The version string contains a future date (20261105), which may be unusual but is not evidence of malice and does not change the integrity guarantees provided by the pinned checksums. The code is straightforward and consistent with the project&#39;s stated purpose.
</details>
<evidence>
</evidence>
<summary>Clean PKGBUILD; no signs of injected malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD; no signs of injected malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,943
  Completion Tokens: 6,439
  Total Tokens: 16,382
  Total Cost: $0.002077
  Execution Time: 47.21 seconds

Final Status: SAFE


No issues found.
