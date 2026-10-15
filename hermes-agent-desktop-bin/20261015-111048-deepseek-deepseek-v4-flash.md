---
package: hermes-agent-desktop-bin
pkgver: 0.22.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14352
completion_tokens: 9589
total_tokens: 23941
cost: 0.003051230
execution_time: 129.44
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T11:10:48Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -bin package, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Third‑party binary source but no malicious indicators.
---

Materializing hermes-agent-desktop-bin from local mirror...
Materialized hermes-agent-desktop-bin
Analyzing hermes-agent-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments and array definitions (e.g., `pkgname`, `pkgver`, `source`, `sha256sums`). There are no command substitutions, `eval`, backticks, `$()`, or other constructs that would execute arbitrary code at source time. The sole function `package()` is defined but not invoked by `makepkg --printsrcinfo`. No malicious code exists in the global scope.
</details>
<evidence></evidence>
<summary>No dangerous code executes when sourcing this PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes when sourcing this PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR package git repositories. It instructs Git to ignore all files except the three explicitly un-ignored ones: `.gitignore`, `PKGBUILD`, and `.SRCINFO`. This is a common pattern to prevent accidental inclusion of build artifacts or stray files. There is no executable code, no network operations, no obfuscation, and no system modifications. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a typical AUR <em>-bin</em> wrapper. It downloads a prebuilt Arch package from the maintainer&#39;s own GitHub release repository, verifies it against a pinned SHA256 hash, and extracts only <code>./usr</code> into the package directory. There are no eval, base64, curl|bash, obfuscated commands, backdoors, data exfiltration, or unexpected system modifications. The source URL uses HTTPS and is pinned by checksum, which standard AUR packaging practice. The <code>package()</code> function performs a simple archive extraction with <code>bsdtar</code>. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR -bin package, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -bin package, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The `source` URL points to a GitHub repository owned by `jabla` (`github.com/jabla/hermes-agent-desktop-bin`) while the official upstream project is `github.com/NousResearch/hermes-agent`. This mismatch means the prebuilt binary is fetched from an unexpected third‑party account rather than from the official project releases. Downloading and executing binaries from an unofficial origin is a classic supply‑chain attack vector; a compromised or imposter repository could serve a malicious binary. The pinned checksum only verifies integrity of the file the maintainer intended, not the trustworthiness of the origin.
</details>
<evidence>
source = hermes-agent-desktop-bin-0.22.2-1-prebuilt.tar.zst::https://github.com/jabla/hermes-agent-desktop-bin/releases/download/v0.22.2-1/hermes-agent-desktop-bin-0.22.2-1-x86_64.pkg.tar.zst
</evidence>
<summary>Prebuilt binary from a non‑official GitHub user.</summary>
</security_assessment>

Second look for .SRCINFO (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>The .SRCINFO only describes the package metadata and source location. Although the source URL points to a GitHub account (`jabla`) different from the official upstream (`NousResearch`), this is a common pattern in AUR binary packages where the maintainer hosts the pre‑built release on their own repository. The checksum is pinned, ensuring that the archive delivered matches what the maintainer intended. There is no obfuscated code, no unexpected commands, and no evidence of injected malicious code in this file itself. The concern is one of trust/hygiene, not a supply‑chain attack, and does not meet the criteria for “genuinely malicious behavior” as defined in the rules.</details>
<evidence></evidence>
<summary>Third‑party binary source but no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Third‑party binary source but no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,352
  Completion Tokens: 9,589
  Total Tokens: 23,941
  Total Cost: $0.003051
  Execution Time: 129.44 seconds

Final Status: SAFE


No issues found.
