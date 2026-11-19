---
package: herdr-app-bin
pkgver: 0.1.7
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8347
completion_tokens: 1296
total_tokens: 9643
cost: 0.000995449
execution_time: 17.71
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-30T03:26:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned binary checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Benign AUR binary package with pinned checksums and standard install steps.
---

Materializing herdr-app-bin from local mirror...
Materialized herdr-app-bin
Analyzing herdr-app-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions and function definitions at the global scope. No command substitutions, function calls, downloads, or other executable code are present outside of the `package()` function, which is not invoked by `makepkg --printsrcinfo`. The source URLs are simple strings and are not fetched during this step. Therefore, sourcing the PKGBUILD to print its metadata is safe.
</details>
<evidence></evidence>
<summary>No executable code at top-level scope</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE::https://raw.githubusercontent.com/herdrdev/herdr-app/master/LICENSE
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `herdr-app-bin`. It declares the package description, version, architecture, dependencies, conflicts, and source URLs. The x86_64 and aarch64 binary tarballs are fetched from the project&#39;s official release host (`releases.herdr.dev`) and both have pinned SHA-256 checksums, which is good supply-chain hygiene. The LICENSE file is fetched from the project&#39;s own GitHub repository and uses `SKIP` for its checksum; this is a trust/hygiene choice and not malicious.

The only minor notes are that the LICENSE checksum is `SKIP` and the `herdr-core&gt;=0.1.11` dependency is a minimum-version constraint rather than a pinned build. Neither of these constitutes genuinely malicious behavior. There are no suspicious commands, encoded payloads, unexpected hosts, or file operations beyond normal package metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned binary checksums; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned binary checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR binary-package practices. It downloads a license file from the project's official GitHub repository and architecture-specific binary tarballs from the project's own release host (`releases.herdr.dev`). The binary tarballs have pinned SHA-256 checksums, so the downloaded artifacts are integrity-checked before use. The `sha256sums=(&apos;SKIP&apos;)` entry is overridden by the architecture-specific checksum arrays, which is a standard pattern.

The `package()` function only installs the application binary, an icon, a `.desktop` file, and the license into `$pkgdir`. The `install -Dm644 /dev/stdin` heredoc is a common way to generate a desktop entry and is not suspicious. There is no obfuscated code, no `eval`, no `curl`/`wget` piping to a shell, no unexpected network endpoints, and no modification of files outside the package installation scope.
</details>
<evidence>
</evidence>
<summary>
Benign AUR binary package with pinned checksums and standard install steps.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Benign AUR binary package with pinned checksums and standard install steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,347
  Completion Tokens: 1,296
  Total Tokens: 9,643
  Total Cost: $0.000995
  Execution Time: 17.71 seconds

Final Status: SAFE


No issues found.
