---
package: linux-xanmod-edge-headers
pkgbase: linux-xanmod-edge
pkgver: 7.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21539
completion_tokens: 4312
total_tokens: 25851
cost: 0.002744833
execution_time: 62.89
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-07T04:12:01Z
file_verdicts:
  - file: choose-gcc-optimization.sh
    status: safe
    summary: Local kernel config selection script with no network or malicious behavior. Safe.
  - file: PKGBUILD
    status: safe
    summary: Standard kernel PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata; official sources only; no malicious behavior found.
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
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. The top-level code consists of standard variable assignments, option defaults, source array definitions, exports, and a loop that dynamically defines `package_*` functions using `eval` with content generated locally via `declare -f` from the `_package()` and `_package-headers()` functions defined in the same file. No external payload is downloaded or executed at this stage.

The only command substitutions executed are in `KBUILD_BUILD_TIMESTAMP` and invoke `date`, which is benign. No network access, encoded payloads, file exfiltration, or execution of untrusted content occurs during sourcing. Suspicious or user-configurable behavior inside `prepare()`/`build()`/`package()` is out of scope for this narrow gate and should be reviewed separately.
</details>
<evidence>
</evidence>
<summary>
Sourcing this PKGBUILD is safe; printsrcinfo executes only benign top-level setup.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe; printsrcinfo executes only benign top-level setup.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.tar.sign
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, choose-gcc-optimization.sh...
LLM auditresponse for choose-gcc-optimization.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build-time helper for selecting a CPU microarchitecture and patching the kernel `.config` accordingly. It performs only local operations: detecting the native CPU with `gcc`, printing a menu, mapping a user-supplied numeric choice to a `CONFIG_*` symbol via a `case` statement, and editing `.config` with `sed -i`. There are no network requests, no downloads, no obfuscated commands, and no execution of fetched content.

The script's behavior is consistent with normal AUR/kernel packaging practice. The `$answer` variable is used only in a `case` pattern, so it cannot inject shell commands, and the `sed` expressions operate on fixed strings derived from the case constants. Modifying `.config` in the current working directory is expected for this kind of package helper. No evidence of malicious or supply-chain behavior was found.
</details>
<evidence>
</evidence>
<summary>
Local kernel config selection script with no network or malicious behavior. Safe.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed choose-gcc-optimization.sh. Status: SAFE -- Local kernel config selection script with no network or malicious behavior. Safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for linux-xanmod-edge-headers follows standard packaging practices for a custom kernel. It downloads the upstream kernel source from kernel.org, the Xanmod patch from SourceForge, and includes a local helper script (choose-gcc-optimization.sh). All network sources are well-known and pinned with checksums. The file uses `bash -x` to source a user-provided configuration file (`myconfig`) from a local path; while this allows user customization, it does not introduce supply-chain risk because the file must be placed by the user and is not fetched from an external source. No obfuscation, suspicious network requests, data exfiltration, or backdoors are present. The `eval` construct used to define package functions is a packaging idiom, not malicious.
</details>
<evidence></evidence>
<summary>Standard kernel PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard kernel PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is declarative package metadata for the linux-xanmod-edge AUR kernel package. All sources point to the project's official upstream locations: the kernel tarball and signature from kernel.org (cdn.kernel.org), and the Xanmod patch from the official Xanmod SourceForge project. The `choose-gcc-optimization.sh` source is a local file bundled in the AUR repository and has a pinned checksum. The `validpgpkeys` entries enable makepkg's standard PGP verification of the kernel signature.

The only `SKIP` checksum is on the `.tar.sign` file, which is normal — a detached PGP signature is verified via the `validpgpkeys` mechanism rather than a hash. The `provides`/`replaces` entries are standard kernel-module metadata. The file contains no executable code, no network callbacks, no obfuscation, and no unexpected file operations. A SourceForge `/download` redirect URL and the plain-`http` homepage field are minor hygiene notes at most. Nothing in this metadata indicates malicious behavior; the actual build logic lives in the PKGBUILD, which is not present here.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata; official sources only; no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata; official sources only; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,539
  Completion Tokens: 4,312
  Total Tokens: 25,851
  Total Cost: $0.002745
  Execution Time: 62.89 seconds

Final Status: SAFE


No issues found.
