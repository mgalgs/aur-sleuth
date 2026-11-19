---
package: linux-xanmod-edge-headers
pkgbase: linux-xanmod-edge
pkgver: 7.3.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 21379
completion_tokens: 2636
total_tokens: 24015
cost: 0.00239859
execution_time: 42.34
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-11T12:15:17Z
file_verdicts:
  - file: choose-gcc-optimization.sh
    status: safe
    summary: Legitimate kernel config selection script.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD; no malicious behavior found.
---

linux-xanmod-edge-headers is built from linux-xanmod-edge
Materializing linux-xanmod-edge-headers from local mirror...
Materialized linux-xanmod-edge-headers
Analyzing linux-xanmod-edge-headers AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable assignments, conditional checks, array definitions, and a loop that dynamically creates package functions using `eval` and `declare -f`. The `eval` loop constructs functions (`package_linux-xanmod-edge`, `package_linux-xanmod-edge-headers`) from helper functions defined within the same file; this is a normal AUR pattern and does not execute any untrusted or external code. The only command substitution (`date`) is benign. No code in the global scope downloads, executes, or exfiltrates data. All potentially dangerous operations (patches, configuration, build) are confined to `prepare()`, `build()`, and `package()` functions, which are **not** executed by `makepkg --printsrcinfo`. There is no evidence of malicious intent in the globally-executed code.
</details>
<evidence>
</evidence>
<summary>Top-level code is safe; no dangerous operations</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe; no dangerous operations
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.tar.sign
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, choose-gcc-optimization.sh...
[0/3] Reviewing .SRCINFO, choose-gcc-optimization.sh, PKGBUILD...
LLM auditresponse for choose-gcc-optimization.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard helper for selecting CPU microarchitecture optimization flags during kernel compilation. It detects the CPU with `gcc -c -Q -march=native --help=target`, presents a menu of microarchitectures, then modifies the `.config` file using `sed` instructions. There are no network requests, obfuscated code, file exfiltration, or execution of downloaded content. All operations are confined to kernel configuration manipulation, which is expected for a kernel header package build helper. The script is safe and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Legitimate kernel config selection script.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed choose-gcc-optimization.sh. Status: SAFE -- Legitimate kernel config selection script.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `linux-xanmod-edge` package. It declares sources from official kernel.org and the Xanmod project's SourceForge page, lists PGP keys for verification, and includes checksums (with a SKIP for the signature file, which is normal). No executable code, obfuscation, or suspicious network destinations are present. The file serves only as a structured description of the package build configuration.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR kernel packaging practices. All sources are fetched from official upstream locations (kernel.org, SourceForge for the Xanmod patch) with pinned checksums and PGP verification keys. The build process is transparent and does not contain obfuscated code, suspicious network requests, or backdoors. The user customization features (myconfig, modprobed-db integration) are normal for kernel packages and rely on user-controlled local files. No evidence of injected malicious code or supply-chain attack indicators was found.
</details>
<evidence></evidence>
<summary>Standard kernel PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,379
  Completion Tokens: 2,636
  Total Tokens: 24,015
  Total Cost: $0.002399
  Execution Time: 42.34 seconds

Final Status: SAFE


No issues found.
