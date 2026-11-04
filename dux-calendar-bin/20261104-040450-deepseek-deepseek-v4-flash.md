---
package: dux-calendar-bin
pkgver: 2.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10672
completion_tokens: 6954
total_tokens: 17626
cost: 0.002236780
execution_time: 42.25
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T04:04:50Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary AUR package with pinned checksums.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata with pinned checksums. No executable code.
---

Materializing dux-calendar-bin from local mirror...
Materialized dux-calendar-bin
Analyzing dux-calendar-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD exclusively contains standard packaging metadata assignments (pkgname, pkgver, arch, depends, provides, etc.), source array definitions with checksums, and the definitions of `prepare()` and `package()` functions.

No dangerous commands such as `eval`, `curl`, `wget`, `base64` decoding, or backtick/`$()` command substitutions are present in the global scope. All variable assignments are static strings or array elements. The `source`, `sha256sums`, and similar arrays are standard Makepkg constructs and do not execute any network operations or system commands when sourced.

The `prepare()` and `package()` functions are defined but their internal logic (which involves decompressing a binary and installing files) is not invoked or executed by `makepkg --printsrcinfo`. The checksums are properly pinned to specific hashes.

Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is completely safe from a supply-chain attack perspective.
</details>
<evidence>
</evidence>
<summary>Top-level scope is standard metadata; no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is standard metadata; no malicious code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard practices for distributing a prebuilt binary AUR package. All source files — including the architecture-specific gzipped ELF, completions tarball, icons, desktop entry, systemd service, LICENSE, and README — are fetched from the project&#39;s own GitHub repository (`duxlabs-dev/dux-calendar`) at a pinned version tag (`v2.1.0`). Every source file has a hardcoded SHA‑256 checksum, so integrity is verifiable at build time. The `prepare()` function only decompresses the gzipped binary with `gzip -dcf`, and `package()` installs files into `$pkgdir` using `install` — both are ordinary packaging operations. No network requests, code execution, or file modifications occur outside the standard `makepkg` build flow. There is no obfuscation, no `eval`/`curl`/`wget`/`base64` usage, and no deviation from the expected purpose of distributing the Dux Calendar application.
</details>
<evidence>
</evidence>
<summary>Standard prebuilt binary AUR package with pinned checksums.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary AUR package with pinned checksums.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file written by the AUR maintainer to describe the package sources and build requirements. It is not a script or executable, and it contains no code logic, obfuscation, or dangerous command invocations (such as `eval`, `curl`, `wget`, or `base64` designed to run at build time).

All `source` entries point exclusively to the official `duxlabs-dev/dux-calendar` GitHub repository and its release assets (`raw.githubusercontent.com`, `github.com/…/releases/download/`). This is the standard and expected origin for the package's own upstream. Every source file, including the prebuilt binary archives for `x86_64` and `aarch64`, has an explicitly pinned SHA-256 checksum, allowing complete verification of the downloaded content. No checksums are set to `SKIP`.

The use of `conflicts`, `replaces`, and `provides` in the metadata is a standard package manager mechanism to handle package renames, migrations, or replacement (`dankcalendar` appears to be a prior name or fork of this tool). This is solely a package management concern and not a security threat. There is no evidence of injected malicious code, data exfiltration, backdoors, or unauthorized network destinations.
</details>
<evidence></evidence>
<summary>Declarative metadata with pinned checksums. No executable code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata with pinned checksums. No executable code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,672
  Completion Tokens: 6,954
  Total Tokens: 17,626
  Total Cost: $0.002237
  Execution Time: 42.25 seconds

Final Status: SAFE


No issues found.
