---
package: appattic-qt
pkgver: 3.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9402
completion_tokens: 1270
total_tokens: 10672
cost: 0.001086722
execution_time: 20.28
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T11:06:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Pinned checksummed sources from official upstreams; no malicious indicators found.
  - file: PKGBUILD
    status: safe
    summary: Pinned, verified sources and standard build/package steps; no malicious behavior found.
---

Materializing appattic-qt from local mirror...
Materialized appattic-qt
Analyzing appattic-qt AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only executes top-level/global scope statements. The top-level content consists entirely of standard variable definitions: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `conflicts`, `options`, `source`, and `sha256sums`. There are no top-level command substitutions, no calls to external programs, no `eval`, no encoded/obfuscated payloads, and no network requests executed at source time.

The `build()` and `package()` functions contain more interesting activity (downloading Zig and Wasmtime artifacts is via the `source` array and checksums are provided; the functions modify PATH, run build scripts, install files into `$pkgdir`), but those functions are **not** executed by `makepkg --printsrcinfo`. They are out of scope for this narrow gate and will be reviewed in the full PKGBUILD audit. There is no evidence that running `makepkg --printsrcinfo` itself would execute malicious code.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is only variable definitions; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is only variable definitions; no malicious code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes an AUR package for appattic-qt, a Qt desktop application for finding leftover/stale applications and disk usage. The sources are the project's own GitHub release tarball plus official toolchain artifacts from ziglang.org and the bytecodealliance/wasmtime GitHub releases. All three sources are pinned to specific versions (v3.4.0, 0.17.0, v28.0.0) and all have concrete sha256sums rather than SKIP, which is standard and transparent packaging practice.

There are no suspicious network endpoints, no encoded or obfuscated commands, no eval/base64/curl-piped-to-shell constructs, and no unexpected file or system modifications. The package metadata only declares dependencies, sources, checksums, and basic package attributes. The inclusion of Zig and Wasmtime binaries is consistent with the upstream build toolchain for this application and poses no immediate supply-chain concern given the pinned, checksummed sources.
</details>
<evidence>
</evidence>
<summary>
Pinned checksummed sources from official upstreams; no malicious indicators found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Pinned checksummed sources from official upstreams; no malicious indicators found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices. It downloads the upstream appattic source tarball from the project's official GitHub releases, plus pinned toolchain binaries (Zig and Wasmtime C API) from their official project sites. All three sources have pinned sha256 checksums, so the downloaded content is verified before use. No source uses `SKIP`, and no unpinned VCS or mutable refs are involved.

The build phase invokes the upstream project's own `scripts/linux-qt-link.sh` release script, which is ordinary use of the upstream build system. The script logs its output, and the conditional failure handling is a workaround for a known debug-gate check in the upstream build. The package phase installs built binaries and libraries into `$pkgdir`, applies `patchelf` to set a runtime path for the bundled Wasmtime library, and installs license files. These operations are consistent with packaging a self-contained Qt application.

There is no evidence of obfuscation, unexpected network fetches, exfiltration, backdoors, or execution of attacker-controlled code from unrelated hosts. The use of upstream-provided toolchain binaries with pinned checksums and a locally built application is a valid packaging approach, not a supply-chain indicator.
</details>
<evidence>
</evidence>
<summary>
Pinned, verified sources and standard build/package steps; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned, verified sources and standard build/package steps; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,402
  Completion Tokens: 1,270
  Total Tokens: 10,672
  Total Cost: $0.001087
  Execution Time: 20.28 seconds

Final Status: SAFE


No issues found.
