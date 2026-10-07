---
package: niri-autoselect-portal-git
pkgver: r3.f181322
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22797
completion_tokens: 3412
total_tokens: 26209
cost: 0.00505127
execution_time: 113.43
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-07T15:13:31Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license text, no security concerns.
  - file: .pre-commit-config.yaml
    status: safe
    summary: Standard pre-commit config, no malicious content.
  - file: REUSE.toml
    status: safe
    summary: Metadata file for license annotations; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: niri-autoselect.portal
    status: safe
    summary: Simple portal configuration file, no malicious content.
  - file: org.freedesktop.impl.portal.desktop.niri-autoselect.service
    status: safe
    summary: Standard D-Bus service file, no security issues.
  - file: niri-autoselect-portal.service
    status: safe
    summary: Clean systemd service unit for portal backend.
  - file: PKGBUILD
    status: safe
    summary: Standard Go build PKGBUILD; no malicious indicators.
---

Materializing niri-autoselect-portal-git from local mirror...
Materialized niri-autoselect-portal-git
Analyzing niri-autoselect-portal-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope, and this PKGBUILD's global scope contains only standard variable assignments: metadata strings, dependency arrays, the `source` array with the upstream Codeberg git repository and local packaging files, and checksum entries including a `SKIP` for the VCS source. There are no top-level command substitutions, no network calls, no base64/eval/curl/wget usage, and no file-modifying operations that would execute during sourcing.

The `pkgver()`, `prepare()`, `build()`, and `package()` functions contain normal packaging operations, but none of them execute during `makepkg --printsrcinfo`; they are outside the scope of this narrow gate and will be audited in the full PKGBUILD review. The `SKIP` checksum is not grounds for an unsafe decision at this step, since no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; only standard metadata and source definitions execute during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; only standard metadata and source definitions execute during printsrcinfo.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .pre-commit-config.yaml...
[0/9] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard ISC-style license file attributed to "Arch Linux Contributors". It contains no executable code, network requests, obfuscated content, or any other indicators of malicious behavior. It is a plain text legal document with no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE, LICENSE...
[1/9] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard permissive software license (ISC-style). It contains no executable code, no network requests, no file operations, and no instructions of any kind. It is purely a legal text file. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard license text, no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE, PKGBUILD...
[2/9] Reviewing .SRCINFO, .pre-commit-config.yaml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license text, no security concerns.
LLM auditresponse for .pre-commit-config.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pre-commit configuration file used to enforce code quality and security checks (e.g., detecting private keys, large files, trailing whitespace, and PKGBUILD validation). It references only well-known hook repositories (`pre-commit/pre-commit-hooks`, `gitleaks/gitleaks`, `edlanglois/pkgbuild-hooks`) at pinned versions. No embedded code execution, network requests outside of normal hook operations, or obfuscation is present. This is a typical AUR package development tool, not a supply-chain attack vector.
</details>
<evidence></evidence>
<summary>Standard pre-commit config, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, .pre-commit-config.yaml, PKGBUILD, REUSE.toml...
[3/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed .pre-commit-config.yaml. Status: SAFE -- Standard pre-commit config, no malicious content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file that specifies copyright and license annotations for common packaging files in an Arch User Repository (AUR) package. It lists file paths such as PKGBUILD, README.md, .SRCINFO, systemd unit templates, and configuration files, assigning them the SPDX identifier "0BSD" (Zero-Clause BSD license). There is no executable code, no network operations, no file modifications, and no obfuscation. The content is purely metadata for license compliance and does not introduce any security risk.
</details>
<evidence></evidence>
<summary>Metadata file for license annotations; no security issues.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, niri-autoselect-portal.service...
[4/9] Reviewing .SRCINFO, PKGBUILD, niri-autoselect-portal.service...
+ Reviewed REUSE.toml. Status: SAFE -- Metadata file for license annotations; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It defines package metadata, sources, dependencies, and checksums. All sources point to the project's own upstream repository on codeberg.org (debugloop/niri-autoselect-portal). The first source uses a `git+https` URL with `SKIP` checksum, which is normal for VCS packages. The remaining three sources have explicit SHA-256 checksums, providing integrity verification. There is no executable code, no network requests beyond referencing the package's own upstream, and no obfuscation or injection. No indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, PKGBUILD, niri-autoselect-portal.service, niri-autoselect.portal...
[5/9] Reviewing PKGBUILD, niri-autoselect-portal.service, niri-autoselect.portal...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for niri-autoselect.portal:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple portal configuration file for the niri-autoselect portal on a Linux desktop. It contains only declarative text in an INI-style format, defining the D-Bus name and the interface implemented (ScreenCast). There is no executable code, no network requests, no file operations, no obfuscated data, and no instructions of any kind. It is a standard, benign configuration file used to register a portal with the desktop environment. No security issues are present.
</details>
<evidence></evidence>
<summary>Simple portal configuration file, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, niri-autoselect-portal.service, niri-autoselect.portal, org.freedesktop.impl.portal.desktop.niri-autoselect.service...
[6/9] Reviewing PKGBUILD, niri-autoselect-portal.service, org.freedesktop.impl.portal.desktop.niri-autoselect.service...
+ Reviewed niri-autoselect.portal. Status: SAFE -- Simple portal configuration file, no malicious content.
LLM auditresponse for org.freedesktop.impl.portal.desktop.niri-autoselect.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard D-Bus service configuration file for a portal implementation. It specifies the D-Bus service name, the executable path (`/usr/bin/niri-autoselect-portal`), and an associated systemd service. There is no executable code, no network requests, no obfuscation, and no deviation from standard packaging practices. The file is purely declarative and contains no potential for malicious behavior.
</details>
<evidence></evidence>
<summary>Standard D-Bus service file, no security issues.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, niri-autoselect-portal.service...
+ Reviewed org.freedesktop.impl.portal.desktop.niri-autoselect.service. Status: SAFE -- Standard D-Bus service file, no security issues.
LLM auditresponse for niri-autoselect-portal.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the niri-autoselect-portal backend. It declares a D-Bus activated service that runs `/usr/bin/niri-autoselect-portal` with typical session service dependencies (`PartOf=graphical-session.target`, `Before=xdg-desktop-portal.service`). There are no network requests, obfuscated commands, file modifications, or any other indicators of malicious behavior. The file follows normal packaging practices for a portal backend and does not contain any injected or suspicious code.
</details>
<evidence></evidence>
<summary>Clean systemd service unit for portal backend.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed niri-autoselect-portal.service. Status: SAFE -- Clean systemd service unit for portal backend.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS package for a Go application. It clones the upstream repository from codeberg.org, downloads Go module dependencies via `go mod download`, builds the binary with `go build`, and installs the resulting binary along with three configuration/portal files (with pinned checksums). No obfuscated code, unexpected network destinations, system tampering, or data exfiltration is present. The SKIP checksum on the git source is normal for a `-git` package. All operations are consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard Go build PKGBUILD; no malicious indicators.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go build PKGBUILD; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,797
  Completion Tokens: 3,412
  Total Tokens: 26,209
  Total Cost: $0.005051
  Execution Time: 113.43 seconds

Final Status: SAFE


No issues found.
