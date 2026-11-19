---
package: gpu-select
pkgver: 0.1.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9318
completion_tokens: 1261
total_tokens: 10579
cost: 0.00056026880
execution_time: 31.43
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-27T23:35:37Z
file_verdicts:
  - file: gpu-select.install
    status: safe
    summary: Install script only prints service-enable instructions; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; upstream GitHub source and SKIP checksum are not malicious.
  - file: PKGBUILD
    status: safe
    summary: Standard Python AUR package; no malicious code, only SKIP checksum hygiene note.
---

Materializing gpu-select from local mirror...
Materialized gpu-select
Analyzing gpu-select AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions and function definitions. Running `makepkg --printsrcinfo` sources the PKGBUILD, which executes the global scope, but there are no command substitutions, external downloads, encoded payloads, or file-modifying operations at the top level. The `source` array simply references the upstream GitHub tarball URL, and the `sha256sums` entry is `SKIP`; this is not executable at metadata-print time and is a hygiene concern for the full audit, not a safety issue for this gate.

The `build()` and `package()` functions contain normal Python packaging and installation commands, but these functions are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow check. No genuinely malicious behavior is present in the code that would run during this step.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; no malicious code executes during printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: gpu-select-0.1.7.tar.gz::https://github.com/ParticleG/gpu-select/archive/v0.1.7.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, gpu-select.install...
LLM auditresponse for gpu-select.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`gpu-select.install`). It only prints instructions telling the user how to enable the `switcheroo-control.service` systemd service, which is relevant to GPU switching functionality. There are no network requests, downloads, encoded commands, file modifications, or execution of untrusted content. The `post_upgrade` function simply re-invokes `post_install`, which is a routine packaging pattern.
</details>
<evidence>
</evidence>
<summary>
Install script only prints service-enable instructions; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed gpu-select.install. Status: SAFE -- Install script only prints service-enable instructions; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata description for the `gpu-select` package. It declares a source tarball from the project's own upstream GitHub repository (`https://github.com/ParticleG/gpu-select/archive/v0.1.7.tar.gz`), sets `sha256sums = SKIP`, and lists normal build/runtime dependencies. There is no code to execute, no network request beyond fetching the declared upstream source, and no embedded scripts. The `SKIP` checksum is a trust/hygiene concern rather than evidence of malice; per policy, it is not treated as an unsafe indicator on its own. No obfuscation, suspicious file operations, credential access, or unexpected remote destinations are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; upstream GitHub source and SKIP checksum are not malicious.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; upstream GitHub source and SKIP checksum are not malicious.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Python application. It downloads the upstream source tarball from the project&apos;s own GitHub repository, builds it with `python -m build`, and installs the wheel with `python -m installer` into the package directory. The `install` of the LICENSE file into `$pkgdir/usr/share/licenses` is also routine.

No malicious behavior is present: there are no unexpected network requests, no execution of downloaded scripts, no obfuscated or encoded commands, no file operations outside the build/install directories, and no tampering with system files. The `sha256sums` entry is set to `SKIP`, which is a reproducibility/hygiene concern rather than evidence of malice; it does not by itself make the package unsafe. The `.install` script is referenced but not provided in this file, so no conclusion is drawn about it from the PKGBUILD alone.
</details>
<evidence>
</evidence>
<summary>
Standard Python AUR package; no malicious code, only SKIP checksum hygiene note.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Python AUR package; no malicious code, only SKIP checksum hygiene note.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,318
  Completion Tokens: 1,261
  Total Tokens: 10,579
  Total Cost: $0.000560
  Execution Time: 31.43 seconds

Final Status: SAFE


No issues found.
