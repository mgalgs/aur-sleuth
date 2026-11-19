---
package: firefox-extension-proton-vpn
pkgbase: proton-vpn-browser-extension
pkgver: 1.3.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12191
completion_tokens: 1650
total_tokens: 13841
cost: 0.001409681
execution_time: 17.43
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T16:08:10Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream source; no suspicious content found.
  - file: firefox-extension-proton-vpn.install
    status: safe
    summary: Benign post-install message script; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Pinned upstream source with standard npm build steps; no malicious behavior found.
  - file: proton-vpn-browser-extension.install
    status: safe
    summary: Install script only prints a manual loading instruction; no malicious behavior found.
---

firefox-extension-proton-vpn is built from proton-vpn-browser-extension
Materializing firefox-extension-proton-vpn from local mirror...
Materialized firefox-extension-proton-vpn
Analyzing firefox-extension-proton-vpn AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD at global scope. This PKGBUILD only defines standard variables (`pkgbase`, `pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and declares functions (`prepare`, `build`, `package_*`). None of those functions execute during `--printsrcinfo`.

There is no top-level command substitution, no `eval`, no network fetch, no file modification, no obfuscated code, and no data exfiltration. The source points to the project's own upstream GitHub repository, and the checksum concern is not relevant to this narrow gate because no sources are downloaded during `--printsrcinfo`. The build/package functions contain only routine build/install operations and will be covered by the full audit.
</details>
<evidence>
</evidence>
<summary>
Sourcing this PKGBUILD executes only safe variable definitions; no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD executes only safe variable definitions; no malicious top-level code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, firefox-extension-proton-vpn.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata file. It declares a Firefox browser extension package and a Chromium unpacked extension package, both built from the upstream ProtonVPN GitHub repository. The source is pinned to a specific commit and a sha256sum is provided for the source archive. No malicious behavior is present: there are no suspicious network endpoints, no obfuscated commands, no dangerous file operations, and no unexpected downloads or execution. The referenced `.install` files are normal packaging components and are not evaluated from this file alone.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream source; no suspicious content found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, firefox-extension-proton-vpn.install, proton-vpn-browser-extension.install...
[1/4] Reviewing PKGBUILD, firefox-extension-proton-vpn.install, proton-vpn-browser-extension.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream source; no suspicious content found.
LLM auditresponse for firefox-extension-proton-vpn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script. Its `post_install()` function only prints informational text telling the user which permissions the Proton VPN browser extension needs and where to configure them. There are no network operations, file modifications, command execution, obfuscated code, or references to external/untrusted hosts. This is entirely benign packaging behavior.
</details>
<evidence>
</evidence>
<summary>
Benign post-install message script; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, proton-vpn-browser-extension.install...
+ Reviewed firefox-extension-proton-vpn.install. Status: SAFE -- Benign post-install message script; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Git-pinned upstream source. The source is fetched from the official ProtonVPN GitHub repository at a specific commit (`_commit=33bd...`), and the build process uses standard `npm ci` and `npm run` commands from that source tree. File installation is limited to `$pkgdir` and copies the built extension artifacts into the expected browser/extension directories.

No obfuscated code, suspicious network destinations, unexpected executables, or data-exfiltration behavior is present. The npm commands download dependencies from the normal npm registry during the build, which is expected for an npm-based project. The use of a pinned commit is a positive supply-chain practice. Overall, the file shows no evidence of injected malicious behavior and is consistent with legitimate AUR packaging.
</details>
<evidence>
</evidence>
<summary>
Pinned upstream source with standard npm build steps; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing proton-vpn-browser-extension.install...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned upstream source with standard npm build steps; no malicious behavior found.
LLM auditresponse for proton-vpn-browser-extension.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script contains a single `post_install()` function that only prints a user-facing message instructing the user to manually load the extension at `chrome://extensions` using "Load unpacked". There are no file operations, network requests, command executions, or system modifications. The behavior is entirely consistent with a normal Arch package install script for a manually-loaded browser extension.
</details>
<evidence>
</evidence>
<summary>
Install script only prints a manual loading instruction; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed proton-vpn-browser-extension.install. Status: SAFE -- Install script only prints a manual loading instruction; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,191
  Completion Tokens: 1,650
  Total Tokens: 13,841
  Total Cost: $0.001410
  Execution Time: 17.43 seconds

Final Status: SAFE


No issues found.
