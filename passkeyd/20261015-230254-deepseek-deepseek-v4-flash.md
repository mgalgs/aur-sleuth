---
package: passkeyd
pkgver: 1.9.3
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12919
completion_tokens: 3393
total_tokens: 16312
cost: 0.001793155
execution_time: 30.44
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T23:02:54Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; pinned checksum and upstream source; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: "Benign PKGBUILD: pinned-checksum upstream release, standard installs only; no malicious behavior."
  - file: passkeyd.install
    status: safe
    summary: Install script configures app and sends only consent-based, non-sensitive telemetry. No malicious behavior found.
---

Materializing passkeyd from local mirror...
Materialized passkeyd
Analyzing passkeyd AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable definitions and a function declaration for `package()`. No command substitutions, backticks, `eval`, or other code execution mechanisms are present at the top level. The `source` array uses a simple variable substitution for `$pkgver`, which is defined earlier; that is normal and does not execute arbitrary code. Since `makepkg --printsrcinfo` only sources the global scope and does not call `package()`, no dangerous operations occur during this step. There are no signs of obfuscation, network requests, or data exfiltration in the top-level code.</details>
<evidence></evidence>
<summary>Global scope is safe; no top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is safe; no top-level execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, passkeyd.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file describes a WebAuthn authenticator package called passkeyd. It declares its upstream source as the project's own GitHub release tarball with a concrete version and a pinned sha256sum, which is normal and reproducible packaging practice. The dependencies are system libraries and services that align with the stated purpose of a system-level WebAuthn authenticator using TPM functionality. No network requests outside the declared source, no encoded content, no suspicious file operations, and no maintainer helper scripts are present. The conflicts with openrc and runit are consistent with packaging a systemd-integrated service. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; pinned checksum and upstream source; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, passkeyd.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; pinned checksum and upstream source; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt release tarball from the project's own GitHub releases URL, with a pinned sha256 checksum, and installs binaries and configuration files into standard package locations using `install`. There are no suspicious network requests beyond the declared source fetch, no dynamic code execution, no obfuscation, and no file operations outside the package scope.

Installing a PAM configuration and a systemd service is consistent with a WebAuthn authenticator and is not evidence of malice. The referenced `passkeyd.install` file was not provided for review, but nothing in this PKGBUILD indicates a supply-chain attack or injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign PKGBUILD: pinned-checksum upstream release, standard installs only; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing passkeyd.install...
+ Reviewed PKGBUILD. Status: SAFE -- Benign PKGBUILD: pinned-checksum upstream release, standard installs only; no malicious behavior.
LLM auditresponse for passkeyd.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script. It interactively configures the application, updates its own configuration file `/etc/passkeyd.conf`, and defines helper functions for detecting the distribution, generating an anonymous ID, and sending optional telemetry.

The telemetry path is consent-based: the user is shown exactly what data would be sent and must answer yes. No telemetry is sent when the user declines. The data sent is limited to non-sensitive information: an anonymous random ID, system language, selected UI, selected auth mode, distro ID, and package version. Sending these to a known analytics endpoint (PostHog) after explicit consent is an upstream privacy decision, not a supply-chain attack. The ID file stored under `/tmp` is only a random anonymous identifier.

No obfuscated code, hidden downloads, credential access, or unexpected file modifications are present. The `sed` and file writes only target the application's own configuration. This file is consistent with legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>
Install script configures app and sends only consent-based, non-sensitive telemetry. No malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed passkeyd.install. Status: SAFE -- Install script configures app and sends only consent-based, non-sensitive telemetry. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,919
  Completion Tokens: 3,393
  Total Tokens: 16,312
  Total Cost: $0.001793
  Execution Time: 30.44 seconds

Final Status: SAFE


No issues found.
