---
package: hermes-agent-desktop-bin
pkgver: 0.22.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10095
completion_tokens: 1905
total_tokens: 12000
cost: 0.001265355
execution_time: 31.97
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T12:12:36Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore restricting tracked files; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Metadata only; pinned checksum from GitHub release; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: "Checksum-pinned wrapper around maintainer's prebuilt Arch package; no malicious behavior."
---

Materializing hermes-agent-desktop-bin from local mirror...
Materialized hermes-agent-desktop-bin
Analyzing hermes-agent-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global scope. This PKGBUILD contains only standard variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and a `package()` function that is not executed during `--printsrcinfo`. There are no top-level command substitutions, network calls, downloads, or encoded/obfuscated commands that would execute when the file is sourced.

The `source` URL points to the maintainer's own GitHub releases for a prebuilt package artifact, which is consistent with the stated packaging approach. The checksum is pinned rather than skipped. The `package()` function uses `bsdtar` to extract the package payload, but that is out of scope for this specific gate and will be reviewed in the full audit. No genuinely malicious behavior is visible in the global scope.
</details>
<evidence>
</evidence>
<summary>
No dangerous top-level execution; only standard variables. Safe for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution; only standard variables. Safe for printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a three-line `.gitignore` that ignores all files (`*`) and then re-includes only `/.gitignore`, `/PKGBUILD`, and `/.SRCINFO`. This is a common AUR packaging convention used to keep the published git repository limited to the package metadata files.

There is no executable code, no network activity, no obfuscation, and no file or system manipulation. It does not deviate from standard packaging practice in any dangerous way.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore restricting tracked files; no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore restricting tracked files; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is only Arch package metadata. It declares a prebuilt binary tarball downloaded from a GitHub release and pins it with a sha256 checksum, which is standard practice for `-bin` packages. There are no commands, hooks, encoded payloads, or file operations in this file.

The source is hosted under the maintainer-related `jabla/hermes-agent-desktop-bin` GitHub release rather than the upstream NousResearch repository. That is a trust and provenance consideration for a prebuilt-binary package, but it is not evidence of malicious behavior here. The checksum is present and pinned, not `SKIP`.
</details>
<evidence>
</evidence>
<summary>
Metadata only; pinned checksum from GitHub release; no malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; pinned checksum from GitHub release; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt Arch package from the maintainer's declared GitHub release and verifies it with a pinned SHA-256 checksum. It then extracts only the payload directory ./usr into the package staging directory using bsdtar. There is no eval, base64 decoding, credential access, system modification, or unexpected network activity.

The package relies on the trustworthiness of the prebuilt artifact, which is normal for a -bin package. The checksum is pinned rather than SKIP, and the extraction scope is limited to the expected payload. No malicious or dangerous behavior is present in this PKGBUILD.
</details>
<evidence>
</evidence>
<summary>
Checksum-pinned wrapper around maintainer's prebuilt Arch package; no malicious behavior.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Checksum-pinned wrapper around maintainer's prebuilt Arch package; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,095
  Completion Tokens: 1,905
  Total Tokens: 12,000
  Total Cost: $0.001265
  Execution Time: 31.97 seconds

Final Status: SAFE


No issues found.
