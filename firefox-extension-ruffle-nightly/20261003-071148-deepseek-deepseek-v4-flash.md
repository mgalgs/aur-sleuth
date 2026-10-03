---
package: firefox-extension-ruffle-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261003
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14750
completion_tokens: 5421
total_tokens: 20171
cost: 0.000716576
execution_time: 103.42
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T07:11:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD for building Ruffle nightly.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
---

firefox-extension-ruffle-nightly is built from ruffle-nightly
Materializing firefox-extension-ruffle-nightly from local mirror...
Materialized firefox-extension-ruffle-nightly
Analyzing firefox-extension-ruffle-nightly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global/top-level scope contains only standard variable definitions (pkgname, pkgver, source, makedepends, etc.) and a simple conditional that appends to makedepends based on a variable. No command substitutions, backtick executions, or other code that would run external commands are present at the top level. The `pkgver` assignment uses shell variable expansion, not command substitution. There is no malicious payload that executes during sourcing. Functions (prepare, build, etc.) are defined but not invoked by `makepkg --printsrcinfo`, so their content is out of scope for this gate.
</details>
<evidence>

</evidence>
<summary>No dangerous top-level code executed during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executed during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR packaging. It contains only patterns to exclude build artifacts (`src`, `pkg`, `*.pkg.tar.*`, `*.log`, `/ruffle/`). There is no executable code, network requests, obfuscation, or any indication of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD defines the build and packaging steps for the `ruffle-nightly` package family (desktop, web demo, self-hosted, Firefox extension, Chromium extension). The source is fetched from the project's own GitHub repository at a specific nightly tag. All build steps run the upstream build system (Cargo, npm) and install artifacts into standard system paths. There is no obfuscated code, no use of `eval`, `curl`, `wget`, or any direct network fetch to unexpected hosts. The only external URLs referenced are the project's GitHub repo, crates.io, npm, and the Google Chrome extension update service (used literally in a config file). No data is exfiltrated, no backdoors installed, no system files outside the application's own scope are modified. The SHA256 checksum array is present but unused due to the VCS source type; this is a packaging style choice, not evidence of malice. The PKGBUILD follows legitimate AUR and upstream build practices.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD for building Ruffle nightly.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD for building Ruffle nightly.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It defines the package name, version, dependencies, and source with a pinned Git tag (`nightly-2026-10-03`) and a SHA-256 checksum. There are no executable commands, network requests, obfuscated data, or file operations present. The source originates from the project's official GitHub repository, which is expected and standard. No red flags or indicators of supply-chain compromise are found.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,750
  Completion Tokens: 5,421
  Total Tokens: 20,171
  Total Cost: $0.000717
  Execution Time: 103.42 seconds

Final Status: SAFE


No issues found.
