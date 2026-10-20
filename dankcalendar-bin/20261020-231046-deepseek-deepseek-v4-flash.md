---
package: dankcalendar-bin
pkgver: 2.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12366
completion_tokens: 1419
total_tokens: 13785
cost: 0.001383564
execution_time: 18.43
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T23:10:45Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign gitignore file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Purely declarative metadata; no malicious content.
---

Materializing dankcalendar-bin from local mirror...
Materialized dankcalendar-bin
Analyzing dankcalendar-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. In this file, the top-level scope consists entirely of variable assignments and array definitions: `pkgname`, `pkgver`, `source`, `sha256sums`, `noextract`, and similar metadata. There are no top-level command substitutions, downloads, `eval` calls, or other executable statements that would run while the file is sourced.

The `prepare()` and `package()` functions contain file operations such as `gzip`, `install`, and `cd`, but those functions are not invoked by `makepkg --printsrcinfo`. Any concerns about those functions belong to the full PKGBUILD audit, not this narrow gate. The source URLs point to the package's own GitHub releases/raw content, and checksum status does not affect whether sourcing the PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is metadata-only; no code executes dangerously during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is metadata-only; no code executes dangerously during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used by AUR maintainers to prevent build artifacts, downloaded sources, and automatically generated files from being tracked in version control. It contains only comment lines and glob patterns. There is no executable code, no network requests, no obfuscation, and no potential for supply-chain compromise. It is a routine, benign configuration file.
</details>
<evidence></evidence>
<summary>Benign gitignore file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign gitignore file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary. All source URLs point to the upstream GitHub repository under the author's namespace, using pinned versioned tags. Checksums are provided for every source file, and there are no skipped checksums. The `prepare()` function simply decompresses a gzipped ELF binary with `gzip -dcf`, and `package()` installs the binary, completions, icon, desktop file, systemd service, license, and README into standard directories. There are no suspicious network requests, no execution of fetched scripts, no obfuscated or encoded commands, and no operations outside the application's intended scope. The file exhibits no evidence of malicious supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources, no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for the AUR package `dankcalendar-bin`. It contains only package metadata: name, version, license, dependencies, source URLs, and checksums. All source URLs point to the project's own GitHub repository (`duxlabs-dev/dux-calendar`) under a specific tagged release (`v2.0.0`). Every source (LICENSE, README, desktop file, systemd service, SVG icon, completions tarball, and per-architecture binary gz files) is fetched from the official upstream. SHA256 checksums are provided for all sources (except the per-architecture binaries which have their own arch-specific checksums). There is no executable code, no network requests beyond fetching sources, no file manipulation, no obfuscation, and no deviation from standard packaging practices. The file is purely declarative and safe.
</details>
<evidence></evidence>
<summary>Purely declarative metadata; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Purely declarative metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,366
  Completion Tokens: 1,419
  Total Tokens: 13,785
  Total Cost: $0.001384
  Execution Time: 18.43 seconds

Final Status: SAFE


No issues found.
