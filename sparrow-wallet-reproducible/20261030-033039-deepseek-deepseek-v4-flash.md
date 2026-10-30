---
package: sparrow-wallet-reproducible
pkgver: 2.5.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18848
completion_tokens: 4386
total_tokens: 23234
cost: 0.002513420
execution_time: 33.98
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T03:30:39Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker release-tracking config; no malicious behavior present.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: LICENSE
    status: safe
    summary: Plain ISC license text; no executable or suspicious content.
  - file: .woodpecker.yaml
    status: safe
    summary: Standard CI automation for AUR package updates and testing.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for reproducible Sparrow Wallet build, no malicious code.
---

Materializing sparrow-wallet-reproducible from local mirror...
Materialized sparrow-wallet-reproducible
Analyzing sparrow-wallet-reproducible AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD at global scope. The global scope here contains only standard variable definitions, dependency arrays, the `source` array, and `sha256sums`. The `_jdkmajor` assignment uses normal shell parameter expansion, not command substitution or code execution. No top-level operation downloads, executes, or exfiltrates data.

The `prepare()`, `build()`, `check()`, and `package()` functions are defined but not invoked during `makepkg --printsrcinfo`. Content inside those functions is out of scope for this narrow gate and will require separate auditing in the full PKGBUILD review. There are SKIP checksums and unpinned git sources in the source array, but these do not execute during metadata parsing and are not grounds to fail this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD parsing is safe; no malicious global-scope code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD parsing is safe; no malicious global-scope code executes.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .nvchecker.toml...
[0/5] Reviewing .nvchecker.toml, .SRCINFO...
[0/5] Reviewing .nvchecker.toml, .SRCINFO, .woodpecker.yaml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.nvchecker.toml` configuration file used by the `nvchecker` tool to check for new upstream releases. It simply defines a project entry named `sparrow-wallet-reproducible`, specifies that the source is GitHub, points to the legitimate upstream repository `sparrowwallet/sparrow`, and instructs nvchecker to use the latest release. There is no executable code, no network behavior beyond what nvchecker itself performs to query GitHub, no obfuscation, and no file operations. This file is consistent with routine AUR packaging workflow for tracking upstream version bumps.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker release-tracking config; no malicious behavior present.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .woodpecker.yaml...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker release-tracking config; no malicious behavior present.
[1/5] Reviewing .SRCINFO, .woodpecker.yaml, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file declares standard package metadata for a reproducible build of Sparrow Wallet. It lists sources from the official upstream repositories (Sparrow, Drongo, Lark from GitHub, JDK from Adoptium). Checksums for the VCS sources (drongo, lark) are correctly set to `SKIP`, which is normal and required. All other sources have pinned SHA-256 hashes. There are no commands, network requests, or obfuscated content in this file—it is purely static metadata. No evidence of supply-chain manipulation or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/5] Reviewing .woodpecker.yaml, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
[2/5] Reviewing .woodpecker.yaml, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard ISC license text (attributed to "Arch Linux Contributors") used for the sparrow-wallet-reproducible packaging files. It contains only license grant language and warranty disclaimers. There are no network operations, no encoded or obfuscated content, no file system modifications, and no executable code of any kind. The file matches ordinary packaging practice and contains nothing resembling a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Plain ISC license text; no executable or suspicious content.</summary>
</security_assessment>

[3/5] Reviewing .woodpecker.yaml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain ISC license text; no executable or suspicious content.
LLM auditresponse for .woodpecker.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
This Woodpecker CI configuration file defines a standard automated workflow for updating, building, and testing the sparrow-wallet-reproducible AUR package. It uses the official Arch Linux container, installs necessary tools (git, devtools, nvchecker, etc.), configures a build user, runs `pkgctl version upgrade` to check for upstream version changes, builds the package with `makepkg`, runs a version test, and conditionally pushes PKGBUILD/.SRCINFO updates back to the Codeberg repository using a secret token.  

No obfuscated code, unexpected network destinations, or system modifications outside the package build workflow are present. Secrets are injected via `from_secret` and used only for authentication to the package&apos;s own repository and to the GitHub API (for nvchecker rate limiting). The commented-out GPG key reception is inert. The script contains no `curl|bash`, encoded payloads, data exfiltration, or backdoor mechanisms. The behavior is consistent with legitimate CI automation for maintaining an AUR package.
</details>
<evidence>
</evidence>
<summary>Standard CI automation for AUR package updates and testing.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .woodpecker.yaml. Status: SAFE -- Standard CI automation for AUR package updates and testing.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the Sparrow Bitcoin Wallet from source and verifies the built binary against a precompiled official release, as described in the package name (reproducible). All network sources point to the project's own GitHub repositories (sparrowwallet) and the official Adoptium JDK downloads – these are the expected upstream origins. The checksums for the VCS sources (drongo, lark) are SKIP, which is normal and not malicious. The main sparrow source has a SHA256 checksum despite being a git source; while unusual (git sources typically use SKIP), this is a configuration quirk rather than a sign of attack and would likely just cause a build warning or failure, not a security breach. The prepare() function uses local submodule paths and `git -c protocol.file.allow=always` to point to the extracted local repositories – this avoids fetching any remote content during submodule update. The build() and check() routines execute `./gradlew` (the project's build system) and compare directories with `diff`, which are standard packaging steps. There are no obfuscated commands, no unexpected network fetches, no exfiltration of data, and no execution of untrusted external code. The file is consistent with legitimate AUR packaging practices for a reproducible build.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for reproducible Sparrow Wallet build, no malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for reproducible Sparrow Wallet build, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,848
  Completion Tokens: 4,386
  Total Tokens: 23,234
  Total Cost: $0.002513
  Execution Time: 33.98 seconds

Final Status: SAFE


No issues found.
