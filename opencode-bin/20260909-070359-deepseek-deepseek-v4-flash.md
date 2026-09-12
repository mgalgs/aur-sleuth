---
package: opencode-bin
pkgver: 1.18.30
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11592
completion_tokens: 8029
total_tokens: 19621
cost: 0.002449955900
execution_time: 199.16
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T07:03:59Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums from official source.
  - file: .SRCINFO
    status: safe
    summary: "SAFE: .SRCINFO shows no malicious content, only metadata."
---

Materializing opencode-bin from local mirror...
Materialized opencode-bin
Analyzing opencode-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable and array assignments (pkgname, pkgver, options, source arrays, sha256sums, etc.). There are no command substitutions, backticks, eval statements, or any other code that would execute during sourcing. The source URLs are standard GitHub release downloads. No malicious top-level code is present. Running `makepkg --printsrcinfo` will only evaluate these definitions safely.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for a prebuilt binary. It downloads the official release tarball from the project's own GitHub repository, with pinned SHA-256 checksums for both architectures. The `package()` function simply installs the binary to `/usr/bin/`. There are no obfuscated commands, no unexpected network requests, no file system manipulations outside the package's scope, and no execution of unchecked code. All operations are consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums from official source.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums from official source.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This `.SRCINFO` describes a prebuilt binary package for `opencode`, but the download source and declared upstream are `https://github.com/anomalyco/opencode`, not the canonical OpenCode project upstream. The package would download release tarballs from this unrelated/impersonating GitHub account and install them as the system `opencode` command via the associated `PKGBUILD`. The pinned SHA-256 hashes do not mitigate this: they only pin the artifacts chosen by the external `anomalyco` repository, so a malicious binary could be served without breaking the checksums. Combined with `provides = opencode` and `conflicts = opencode`, this package is positioned to replace the official `opencode` while pulling a binary from an unexpected and non-official source. This is a supply-chain red flag, not merely a hygiene issue.
</details>
<evidence>
	url = https://github.com/anomalyco/opencode
	source_aarch64 = opencode-bin_1.18.30_aarch64.tar.gz::https://github.com/anomalyco/opencode/releases/download/v1.18.30/opencode-linux-arm64.tar.gz
	source_x86_64 = opencode-bin_1.18.30_x86_64.tar.gz::https://github.com/anomalyco/opencode/releases/download/v1.18.30/opencode-linux-x64.tar.gz
</evidence>
<summary>
UNSAFE: prebuilt binary sourced from non-official anomalyco/opencode repo.
</summary>
</security_assessment>

Second look for .SRCINFO (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file itself contains no injected malicious code, no obfuscated commands, and no operations beyond declaring a package's metadata and download sources. The source URL points to the same GitHub repository (`anomalyco/opencode`) that is declared as the package's `url`, and the tarball checksums are pinned with SHA-256 values. While the repository name differs from the well-known OpenCode project, that alone is not evidence of malice — it is a packaging/hygiene choice (the AUR maintainer may be the same person or a forker). There are no indicators of data exfiltration, backdoors, or execution of untrusted code within this metadata file. The original verdict overreached by labeling the source as definitively "untrusted" without additional evidence from the PKGBUILD or binary contents.
</details>
<evidence>
</evidence>
<summary>
SAFE: .SRCINFO shows no malicious content, only metadata.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- SAFE: .SRCINFO shows no malicious content, only metadata.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,592
  Completion Tokens: 8,029
  Total Tokens: 19,621
  Total Cost: $0.002450
  Execution Time: 199.16 seconds

Final Status: SAFE


No issues found.
