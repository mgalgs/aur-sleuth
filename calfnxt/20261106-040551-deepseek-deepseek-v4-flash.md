---
package: calfnxt
pkgver: 2.16.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9837
completion_tokens: 5311
total_tokens: 15148
cost: 0.001861769
execution_time: 31.33
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T04:05:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources and no malicious code.
---

Materializing calfnxt from local mirror...
Materialized calfnxt
Analyzing calfnxt AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level code. In this PKGBUILD, the top-level scope consists solely of variable and array assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `source`, and `sha256sums`. There are no top-level command substitutions, no external network calls, no encoded payloads, and no code that downloads or executes anything during sourcing.

The `prepare()`, `build()`, and `package()` functions contain file operations, git submodule handling, and build steps, but these functions are not invoked by `makepkg --printsrcinfo`. Their behavior is outside the scope of this narrow gate and will be reviewed in the full PKGBUILD audit. The `SKIP` checksum for the VCS source is also not relevant at this step, since no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is only safe variable assignments; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is only safe variable assignments; no malicious code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The analyzed file is `.SRCINFO`, a metadata file used by Arch Linux AUR helpers to provide package information. It does not contain any executable code, scripts, or commands. All declared sources are pinned to specific tags (`v2.16.0` for the package sources, `v3.8.0_build_66` for the VST3 SDK) from their respective official upstream repositories (`github.com/boomshop/calfnxt` and `steinbergmedia`). The SHA256 checksums for the two tarball sources are pinned, while the checksum for the VCS (git) source is correctly set to `SKIP`, which is standard and expected for VCS sources in AUR packages. There are no obfuscated strings, suspicious URLs, data exfiltration attempts, or backdoors present. The file represents a standard, well-formed packaging practice for an AUR package.
</details>
<evidence>
</evidence>
<summary>Standard AUR .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `calfnxt` follows standard AUR packaging conventions without any signs of genuine malicious activity.

**Source Integrity**: Two prebuilt tarballs (the plugin source and the web UI) are downloaded from the project's official GitHub repository (`github.com/boomshop/calfnxt`) with pinned SHA256 checksums. The VST3 SDK dependency is fetched via VCS from the official Steinberg repository (`github.com/steinbergmedia/vst3sdk.git`) with a specific tag, and its checksum is correctly set to `SKIP` as required by AUR guidelines for VCS sources.

**Build Process**: The `prepare()` function corrects the VST3 SDK's submodule URLs to point to the official Steinberg repositories and initializes them. It then extracts the prebuilt UI tarball. The `build()` function runs a standard CMake out-of-source build. The `package()` function installs the built plugins and licenses into the package directory.

**No Malicious Indicators**: The file contains no obfuscated code, no unexpected network requests (all downloads are to the declared upstream sources), no use of dangerous constructs like `eval`, `curl`, or `wget`, and no attempts to access or exfiltrate system files. The operations are strictly confined to compiling the package and staging the install targets.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with pinned sources and no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources and no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,837
  Completion Tokens: 5,311
  Total Tokens: 15,148
  Total Cost: $0.001862
  Execution Time: 31.33 seconds

Final Status: SAFE


No issues found.
