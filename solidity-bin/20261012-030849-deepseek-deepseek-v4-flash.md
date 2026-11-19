---
package: solidity-bin
pkgver: 0.8.37
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14122
completion_tokens: 11381
total_tokens: 25503
cost: 0.0147526782
execution_time: 86.42
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T03:08:48Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker release-monitoring config; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Safe; standard pinned binary package with only a fork-source trust note.
  - file: .SRCINFO
    status: safe
    summary: No injected malice found; pinned checksums and declared upstream; SAFE.
---

Materializing solidity-bin from local mirror...
Materialized solidity-bin
Analyzing solidity-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments (`pkgname`, `pkgver`, `source_*`, `sha512sums_*`, etc.) and a `package()` function. Sourcing this file for `makepkg --printsrcinfo` does not execute any downloads, command substitutions, eval-like constructs, or network operations. The source URLs point to GitHub releases for the package's own upstream project, and checksums are pinned. The `package()` body only installs the downloaded binary into `$pkgdir` and is not executed during `--printsrcinfo` anyway.
</details>
<evidence>
</evidence>
<summary>
Safe: only static variable assignments; no dangerous top-level code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only static variable assignments; no dangerous top-level code executes.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard [nvchecker](https://github.com/lilydjwg/nvchecker) configuration used to monitor upstream releases. It instructs nvchecker to check GitHub releases for the repository `argotorg/solidity`, using the latest release with a `v` prefix. It contains no shell commands, no encoded data, no fetching of executable content, and no file operations.

One note: `argotorg/solidity` is not the canonical `ethereum/solidity` repository, which could warrant a maintainer-hygiene review against the PKGBUILD's `source` array. However, this config only retrieves version metadata from GitHub's release API; it does not download or execute anything. There is no evidence of injected malicious behavior, exfiltration, or obfuscation.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker release-monitoring config; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker release-monitoring config; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward prebuilt-binary package. It downloads a fixed `solc-static-linux` artifact for the target architecture from a GitHub release, verifies it against pinned SHA-512 checksums, and installs it with a standard `install -Dm755` step into `/usr/bin/solc`. There is no `prepare()`/`build()` code, no shell obfuscation, no `eval`/`base64`/`curl|bash`, no unexpected file operations, and no data exfiltration.

One supply-chain consideration worth noting: the source URL points to `github.com/argotorg/solidity` rather than the canonical `ethereum/solidity` release page. This means trust is placed in that fork/release publisher. The pinned checksum prevents the downloaded binary from being silently replaced after the file is authored, but it cannot by itself prove the fork's binary matches the official upstream build. This is a hygiene/trust issue, not evidence of malicious code in the PKGBUILD.
</details>
<evidence>
</evidence>
<summary>
Safe; standard pinned binary package with only a fork-source trust note.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Safe; standard pinned binary package with only a fork-source trust note.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This `.SRCINFO` does not contain shell commands or obfuscated code, but it declares prebuilt compiler binaries from `github.com/argotorg/solidity` rather than the canonical Solidity upstream `github.com/ethereum/solidity`. The asset names (`solc-static-linux` and `solc-static-linux-arm`) match the official release names, which makes the package look like an official binary distribution while actually supplying an executable from an unrelated third-party GitHub account.

Because the package also `provides` and `conflicts` with `solidity`, installing it places this third-party binary into the user's PATH as the system Solidity compiler. The pinned SHA-512 checksums only prove the download matches what the AUR maintainer or `argotorg` published; they do not establish the binary's authenticity or safety. Fetching a prebuilt executable from an unexpected, non-official distribution channel is a genuine supply-chain risk.
</details>
<evidence>
source_x86_64 = solidity-0.8.37-x86_64.bin::https://github.com/argotorg/solidity/releases/download/v0.8.37/solc-static-linux
source_aarch64 = solidity-0.8.37-aarch64.bin::https://github.com/argotorg/solidity/releases/download/v0.8.37/solc-static-linux-arm
</evidence>
<summary>
Unofficial GitHub org supplies prebuilt Solidity binary; supply-chain risk.
</summary>
</security_assessment>

Second look for .SRCINFO (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The previous UNSAFE verdict was over-calibrated. The `.SRCINFO` only declares two prebuilt binary sources with pinned SHA-512 checksums from `https://github.com/argotorg/solidity/releases/download/v0.8.37/`, which is also the package's declared upstream URL. While `argotorg` is not the canonical `ethereum/solidity` GitHub organization, the file itself is consistent with an AUR maintainer distributing binaries from their own declared fork/release repository. There is no evidence of injected malicious code, no execution of downloaded content beyond normal package installation, no data exfiltration, and no obfuscation. The checksums are pinned and the release tag is fixed, so this is a supply-chain trust/hygiene consideration rather than demonstrable malice. Per the calibration rules, unconventional or non-canonical sources alone must not result in an UNSAFE decision.
</details>
<evidence>
</evidence>
<summary>
No injected malice found; pinned checksums and declared upstream; SAFE.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- No injected malice found; pinned checksums and declared upstream; SAFE.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,122
  Completion Tokens: 11,381
  Total Tokens: 25,503
  Total Cost: $0.014753
  Execution Time: 86.42 seconds

Final Status: SAFE


No issues found.
