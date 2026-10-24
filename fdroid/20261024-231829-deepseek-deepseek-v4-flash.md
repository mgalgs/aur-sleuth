---
package: fdroid
pkgver: 0.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11941
completion_tokens: 18742
total_tokens: 30683
cost: 0.004497675
execution_time: 63.33
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T23:18:28Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Rust build with pinned checksum, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Metadata only, no malicious code present.
---

Materializing fdroid from local mirror...
Materialized fdroid
Analyzing fdroid AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD consists entirely of standard variable assignments (`pkgname`, `pkgver`, `url`, `source`, etc.), array definitions (`depends`, `makedepends`, `optdepends`), and function definitions (`prepare()`, `build()`, `package()`). No command substitutions (`$(...)`), arithmetic evaluations (`$((...))`), or external commands (like `curl`, `wget`, `eval`) exist outside of function bodies. The only command substitution present, `$(rustc -vV | sed ...)`, is safely nested inside the `prepare()` function. According to the documented behavior of `makepkg --printsrcinfo`, function bodies are not executed during this parsing step. Therefore, sourcing this PKGBUILD for metadata extraction poses no risk.
</details>
<evidence></evidence>
<summary>Global scope has no malicious executable code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no malicious executable code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Rust project build. It fetches source from the maintainer's GitHub releases with a pinned sha256sum, ensuring integrity. Build uses `cargo fetch --locked` and `cargo build --frozen`, which enforce the lock file and do not introduce untrusted content. There are no obfuscated commands, suspicious network destinations, or unexpected file operations. The `install` and `ln` commands are normal packaging steps. The optional dependencies mentioning "andron", "wayland", and "pipewire" are unconventional but not executed; they do not introduce malicious behavior. The description's claim of being "official" is a trust matter, not a supply-chain injection in the PKGBUILD itself.
</details>
<evidence>
</evidence>
<summary>Standard Rust build with pinned checksum, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust build with pinned checksum, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This `.SRCINFO` file defines a malicious AUR package that typosquats the official F-Droid project. The `pkgdesc` string falsely claims to be the "Official F-Droid Android GUI Client and compatibility runner for Linux", while the `url` and `source` fields point to an unrelated attacker-controlled repository (`gerliczkowalczuk/fdroid-linux`). This is a classic social-engineering and supply-chain attack vector: the whole purpose of this metadata file is to instruct the Arch Build System to download code from an untrusted, impersonating source.
</details>
<evidence>
pkgbase = fdroid
	pkgdesc = Official F-Droid Android GUI Client and compatibility runner for Linux
	pkgver = 0.2.0
	pkgrel = 1
	url = https://github.com/gerliczkowalczuk/fdroid-linux
	arch = x86_64
	license = GPL-3.0-or-later
	makedepends = cargo
	depends = gcc-libs
	depends = glibc
	optdepends = andron: ultra-lightweight Android translation runtime
</evidence>
<summary>Typosquatting AUR package impersonating F-Droid.</summary>
</security_assessment>

Second look for .SRCINFO (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The first verdict marked the file UNSAFE based on typosquatting and impersonation, but the `.SRCINFO` file is metadata only. It contains no executable code, no obfuscated commands, no network call commands, and no direct file manipulation. While the package description falsely claims to be the official F-Droid client and the source URL points to a non‑official repository, this is a social‑engineering/deception issue rather than evidence of genuinely malicious behavior as defined in the rules (exfiltration, code download+execution, backdoors, etc.). The file simply declares package metadata; it does not itself perform any dangerous action. The rules require UNSAFE only when the file shows injected malicious code or commands, which is not the case here.
</details>
<evidence></evidence>
<summary>Metadata only, no malicious code present.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, no malicious code present.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,941
  Completion Tokens: 18,742
  Total Tokens: 30,683
  Total Cost: $0.004498
  Execution Time: 63.33 seconds

Final Status: SAFE


No issues found.
