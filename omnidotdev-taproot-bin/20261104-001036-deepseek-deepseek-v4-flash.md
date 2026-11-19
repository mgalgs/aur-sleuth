---
package: omnidotdev-taproot-bin
pkgver: 0.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7437
completion_tokens: 2084
total_tokens: 9521
cost: 0.001056055
execution_time: 38.92
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T00:10:35Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only SRCINFO; sources from upstream with pinned checksums
  - file: PKGBUILD
    status: safe
    summary: Standard -bin PKGBUILD; pinned upstream HTTPS sources, checksums match, installs only to $pkgdir.
---

Materializing omnidotdev-taproot-bin from local mirror...
Materialized omnidotdev-taproot-bin
Analyzing omnidotdev-taproot-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD contains only standard variable assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `provides`, `conflicts`, `source`, and `sha256sums`. There are no command substitutions, `eval`, `base64`, `curl`, `wget`, or any other executable statements at global scope, so sourcing the file for `makepkg --printsrcinfo` executes no network requests, file modifications, or code downloads.

The `source` array points to the package's own upstream GitHub releases and LICENSE file, which is expected and normal. The `package()` function contains only `install` commands into `$pkgdir`, and it is not executed during `makepkg --printsrcinfo` — it will be covered in the full audit. The `sha256sums` are pinned (not SKIP), and no obfuscation or suspicious encoding is present. Nothing in the global scope poses a risk for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables; no executable code runs during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables; no executable code runs during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` describes a pre-built binary package (`omnidotdev-taproot-bin`). Both sources are fetched from the project's own upstream GitHub repository/release — the release tarball at `github.com/omnidotdev/taproot/releases/download/v0.2.0/...` and the license file from `raw.githubusercontent.com/omnidotdev/taproot/v0.2.0/LICENSE.md`. These are expected destinations for this package and consistent with its stated purpose (a pre-built GraphQL/PostgreSQL tool).

Both sources are pinned to concrete `sha256sums` (not `SKIP`), so the downloaded artifacts are integrity-checked against fixed hashes. There are no obfuscated strings, encoded blobs, network calls to unrelated hosts, file operations, or shell logic of any kind — `.SRCINFO` is metadata only. No evidence of supply-chain injection.
</details>
<evidence>
</evidence>
<summary>Metadata-only SRCINFO; sources from upstream with pinned checksums</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only SRCINFO; sources from upstream with pinned checksums
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward prebuilt-binary PKGBUILD. It declares two sources, both fetched over HTTPS from the project's own upstream: the release tarball at `github.com/omnidotdev/taproot/releases/download/v$pkgver/taproot-x86_64-unknown-linux-gnu.tar.gz` and the project's `LICENSE.md` from `raw.githubusercontent.com/omnidotdev/taproot`. Both sources have pinned, non-SKIP SHA-256 checksums, so the downloaded artifacts are integrity-verified.

The `package()` function does only the expected work for a `-bin` package: `install -Dm755 "taproot" "$pkgdir/usr/bin/taproot"` and installs the license file into `$pkgdir/usr/share/licenses/...`. There are no `prepare()`/`build()` hooks, no `eval`/`base64`, no pipe-to-shell, no unexpected downloads, and no operations outside `$pkgdir`. Nothing deviates from ordinary AUR packaging practice; the only inherent trust consideration is that this package ships a prebuilt upstream binary rather than building from source, which is normal and expected for a `-bin` package.
</details>
<evidence>
</evidence>
<summary>Standard -bin PKGBUILD; pinned upstream HTTPS sources, checksums match, installs only to $pkgdir.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -bin PKGBUILD; pinned upstream HTTPS sources, checksums match, installs only to $pkgdir.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,437
  Completion Tokens: 2,084
  Total Tokens: 9,521
  Total Cost: $0.001056
  Execution Time: 38.92 seconds

Final Status: SAFE


No issues found.
