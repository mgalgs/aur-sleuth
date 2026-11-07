---
package: exdesktop-git
pkgver: 7.3.3.9.r7.g4631a77
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14662
completion_tokens: 1613
total_tokens: 16275
cost: 0.001627808
execution_time: 21.77
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T00:11:41Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR git package metadata; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
---

Materializing exdesktop-git from local mirror...
Materialized exdesktop-git
Analyzing exdesktop-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope; it does not execute `prepare()`, `build()`, `package()`, or `pkgver()`. The top-level content here consists of ordinary variable assignments, exported compiler flags, dependency/source array definitions, and checksum declarations. There are no top-level command substitutions, no `curl`/`wget`, no `eval`, no encoded/obfuscated payloads, and no network operations executed at source time.

The `source` array references the project's own GitHub repositories and a patch from the upstream `desktop-app/patches` repository. The first source entry uses parameter expansion to select a branch or commit, but that is a normal VCS packaging pattern and does not execute anything during `--printsrcinfo`. The SKIP checksum for the VCS source is expected and not a safety issue for this narrow gate. No evidence of malicious behavior was found in the top-level scope.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; no code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; no code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .gitignore for an AUR package repository. It ignores all files except for the essential packaging files: `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is common practice to keep the repository clean and only track the necessary files. There is no embedded code, no network requests, no file operations, and no obfuscated or suspicious content. The file is purely a configuration file for Git and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a git-based Telegram Desktop fork. It only declares package metadata: dependencies, options, sources, and checksums. There is no executable code, no `prepare()`/`build()`/`install()` script logic, and no unexpected network operations. All non-VCS sources use pinned commits or have SHA-256 checksums; the `sha256sums = SKIP` entry applies to the VCS `exDesktop` source, which is normal and required for `git+` sources. The external sources (tdlib, wallet-engine, and a patch from desktop-app/patches) are related to upstream build components and are pinned, with checksums for non-VCS sources. No evidence of obfuscation, data exfiltration, downloaded-and-executed code, or tampering with unrelated system files.
</details>
<evidence>
</evidence>
<summary>
Standard AUR git package metadata; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR git package metadata; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a git-based package. All sources point to the expected upstream repositories (`metawka/exDesktop`, `tdlib/td`, `i582/wallet-engine`, and `desktop-app/patches`). The wallet-engine patch is pinned to a specific commit and has its SHA256 checksum verified. The main source uses an unpinned branch (`main`), which is normal for a `-git` package. There are no suspicious network requests, obfuscated code, file exfiltration, or unexpected system modifications. The API keys used are explicitly documented as the same ones used in the official Telegram Desktop snap and the `telegram-desktop` package in the Arch Linux repositories. All build steps (patching, dependency fetching, cmake, installation) are routine for compiling and packaging this kind of project. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,662
  Completion Tokens: 1,613
  Total Tokens: 16,275
  Total Cost: $0.001628
  Execution Time: 21.77 seconds

Final Status: SAFE


No issues found.
