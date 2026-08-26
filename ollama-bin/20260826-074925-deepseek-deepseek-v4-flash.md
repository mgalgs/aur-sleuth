---
package: ollama-bin
pkgver: 0.33.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 22639
completion_tokens: 3321
total_tokens: 25960
cost: 0.002594472286
execution_time: 338.99
files_reviewed: 7
files_skipped: 6
maintainer_files: 13
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T07:49:24Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Config file for tracking releases, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content found.
  - file: ollama-cuda.conf
    status: skipped
    summary: "Skipping binary file: ollama-cuda.conf"
  - file: ollama-cuda.service
    status: skipped
    summary: "Skipping binary file: ollama-cuda.service"
  - file: ollama-vulkan.conf
    status: skipped
    summary: "Skipping binary file: ollama-vulkan.conf"
  - file: ollama-vulkan.service
    status: skipped
    summary: "Skipping binary file: ollama-vulkan.service"
  - file: ollama.conf
    status: skipped
    summary: "Skipping binary file: ollama.conf"
  - file: ollama.install
    status: skipped
    summary: "Skipping binary file: ollama.install"
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config for ollama service user.
  - file: ollama.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d configuration, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
---

Cloning https://aur.archlinux.org/ollama-bin.git...
Cloned ollama-bin
Analyzing ollama-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, source definitions, and package-split function stubs (`package_*()`). There are no top-level command substitutions, no `eval` or `curl|bash` patterns, and no code that executes outside of the `package_*()` functions. The `source` array fetches files from the project's official GitHub releases and raw content URLs, which is expected. No `pkgver()` function exists, so nothing executes there. During `makepkg --nobuild --nodeps --noprepare`, only the global scope is sourced and sources are downloaded/extracted; none of the package functions run. Therefore, there is no risk of executing genuinely malicious code at this stage.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious code in sourced scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR PKGBUILD; no malicious code in sourced scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bin/ollama); they are upstream content and were not reviewed.
Reviewing the 13 file(s) in the AUR repository. The 63 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/13] Reviewing .SRCINFO...
[0/13] Reviewing .SRCINFO, .gitignore...
[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It specifies which files should be ignored by Git and which should be tracked. There is no executable code, network requests, file operations, or any other potentially dangerous behavior. It poses no security threat.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/13] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a standard configuration for the nvchecker tool, which automatically checks for new upstream releases. It specifies the package name `ollama-bin`, the source type as `github`, the repository `ollama/ollama`, and instructs the tool to use the latest release with a `v` prefix. There is no network request, executable code, obfuscation, or any deviation from normal packaging practices. The configuration only declares where to check for version updates from the official upstream project. No security issues are present.
</details>
<evidence></evidence>
<summary>Config file for tracking releases, no malicious content.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, ollama-cuda.conf...
[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf...
+ Reviewed .nvchecker.toml. Status: SAFE -- Config file for tracking releases, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file containing package definitions, dependencies, source URLs, and checksums for multiple binary subpackages (`ollama-bin`, `ollama-cuda12-bin`, `ollama-cuda13-bin`, `ollama-vulkan-bin`). All source URLs point to the official ollama GitHub repository (`https://github.com/ollama/ollama`) and use stable release tags (`v0.33.0`). Checksums are provided for each source. There are no executable commands, obfuscated content, network requests outside the upstream, or any indicators of supply-chain compromise. The file conforms to standard AUR packaging practices and contains no malicious code.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content found.</summary>
</security_assessment>

[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content found.
[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf...
[4/13] Reviewing PKGBUILD, ollama-cuda.service, ollama-vulkan.conf...
! Reviewed ollama-cuda.conf. Status: SKIPPED -- Skipping binary file: ollama-cuda.conf
[5/13] Reviewing PKGBUILD, ollama-vulkan.conf...
! Reviewed ollama-cuda.service. Status: SKIPPED -- Skipping binary file: ollama-cuda.service
[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.conf...
! Reviewed ollama-vulkan.conf. Status: SKIPPED -- Skipping binary file: ollama-vulkan.conf
[6/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.conf, ollama.install...
[7/13] Reviewing PKGBUILD, ollama.conf, ollama.install...
! Reviewed ollama-vulkan.service. Status: SKIPPED -- Skipping binary file: ollama-vulkan.service
[8/13] Reviewing PKGBUILD, ollama.install...
! Reviewed ollama.conf. Status: SKIPPED -- Skipping binary file: ollama.conf
[8/13] Reviewing PKGBUILD, ollama.install, ollama.service...
[8/13] Reviewing PKGBUILD, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing PKGBUILD, ollama.service, sysusers.conf...
! Reviewed ollama.install. Status: SKIPPED -- Skipping binary file: ollama.install
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers configuration file, used to create a dedicated system user and group for the ollama service. It defines a group `ollama` and a user `ollama` with home directory `/var/lib/ollama`. The `&quot;` is an HTML entity encoding of a double quote, likely a minor formatting error but not malicious. This is a normal packaging practice for services that need a dedicated user. No suspicious commands, network requests, or obfuscated code are present.
</details>
<evidence></evidence>
<summary>Standard sysusers config for ollama service user.</summary>
</security_assessment>

[9/13] Reviewing PKGBUILD, ollama.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing PKGBUILD, ollama.service, tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config for ollama service user.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the ollama application. It defines the service to run `/usr/bin/ollama serve` with appropriate environment variables and security hardening options such as `PrivateTmp`, `ProtectHome`, and `ProtectSystem`. The `AmbientCapabilities=CAP_PERFMON` is a capability required for performance monitoring functionality, which is expected for an application that may interact with hardware or monitoring features. There is no obfuscated code, no network requests, no downloads, no execution of arbitrary commands, or any other signs of malicious behavior. The file follows standard packaging practices for Arch Linux.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[11/13] Reviewing PKGBUILD, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd-tmpfiles configuration snippet. It creates the directory `/var/lib/ollama` with permissions `0755` and owner/group `ollama`. This is a common and expected practice for packages that require a state or runtime directory. There is no obfuscation, no network requests, no code execution, and no deviation from normal packaging workflow. The entry is entirely benign.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d configuration, no malicious code.</summary>
</security_assessment>

[12/13] Reviewing PKGBUILD...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles.d configuration, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging script for the ollama-bin AUR package, which fetches prebuilt binaries from the official ollama GitHub releases. All sources are downloaded from the project's own upstream repository (github.com/ollama/ollama) and have pinned checksums (no SKIP). The package functions (`package_ollama-bin`, etc.) only copy binaries, libraries, configuration files, systemd service files, and documentation into the expected `$pkgdir` directories. There are no suspicious network requests, no obfuscated or encoded commands, no execution of downloaded scripts, and no manipulation of system files outside of the package's scope. The file follows standard AUR packaging conventions and does not contain any evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 6 files: ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf, ollama.install)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,639
  Completion Tokens: 3,321
  Total Tokens: 25,960
  Total Cost: $0.002594
  Execution Time: 338.99 seconds

Final Status: SAFE


No issues found.


Audit Skips:

ollama-cuda.conf: [SKIPPED] Skipping binary file: ollama-cuda.conf

ollama-cuda.service: [SKIPPED] Skipping binary file: ollama-cuda.service

ollama-vulkan.conf: [SKIPPED] Skipping binary file: ollama-vulkan.conf

ollama-vulkan.service: [SKIPPED] Skipping binary file: ollama-vulkan.service

ollama.conf: [SKIPPED] Skipping binary file: ollama.conf

ollama.install: [SKIPPED] Skipping binary file: ollama.install
