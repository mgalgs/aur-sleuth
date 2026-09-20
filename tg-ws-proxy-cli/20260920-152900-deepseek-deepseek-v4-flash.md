---
package: tg-ws-proxy-cli
pkgver: 1.10.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13731
completion_tokens: 3400
total_tokens: 17131
cost: 0.00073008236
execution_time: 52.41
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T15:28:59Z
file_verdicts:
  - file: tg-ws-proxy-wrapper
    status: safe
    summary: Standard wrapper script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source, no malicious behavior.
  - file: tg-ws-proxy.install
    status: safe
    summary: Simple post-install message, no malicious content.
  - file: "tg-ws-proxy@.service"
    status: safe
    summary: Standard systemd unit; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative .SRCINFO with pinned sources and checksums, no malicious indicators.
---

Materializing tg-ws-proxy-cli from local mirror...
Materialized tg-ws-proxy-cli
Analyzing tg-ws-proxy-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments and function definitions in its global scope. No command substitutions, external downloads, or code execution occurs when sourcing this file. All strings are simple literals or safe variable expansions. The `build()` and `package()` functions are defined but will not execute during `makepkg --printsrcinfo`. No red flags are present.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe for metadata parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe for metadata parsing.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, tg-ws-proxy-wrapper...
LLM auditresponse for tg-ws-proxy-wrapper:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that parses a single argument in `PORT:SECRET` format, validates the presence of a colon, and then executes the `/usr/bin/tg-ws-proxy` binary with the extracted port and secret. It uses proper quoting and has no network requests, obfuscated code, dangerous commands, or file operations outside its intended purpose. The behavior is consistent with standard packaging practices for a command-line proxy wrapper.
</details>
<evidence>
</evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, tg-ws-proxy-wrapper, tg-ws-proxy.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, tg-ws-proxy.install...
+ Reviewed tg-ws-proxy-wrapper. Status: SAFE -- Standard wrapper script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the upstream source from a pinned release tarball on GitHub with a valid SHA256 checksum. The build step uses `python -m build --wheel --no-isolation`, and the package step installs the wheel, license, wrapper script, and systemd service file into the expected directories. There are no suspicious commands (no curl, wget, eval, base64, obfuscation, or unexpected network requests). The file does not deviate from legitimate packaging behavior. The install script (`tg-ws-proxy.install`) is referenced but not included in this file; its contents are unknown, but the PKGBUILD itself shows no signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned source, no malicious behavior.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, tg-ws-proxy.install, tg-ws-proxy@.service...
[2/5] Reviewing .SRCINFO, tg-ws-proxy.install, tg-ws-proxy@.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source, no malicious behavior.
LLM auditresponse for tg-ws-proxy.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script for the `tg-ws-proxy` package. It contains only a `post_install()` function that echoes an informational message to the user after installation. There are no network requests, file operations, system modifications, obfuscated code, or any other suspicious behavior. The message provides an example of how to start the MTProto proxy service, which is consistent with the package's stated purpose. No evidence of a supply-chain attack or malware exists.
</details>
<evidence></evidence>
<summary>Simple post-install message, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, tg-ws-proxy@.service...
+ Reviewed tg-ws-proxy.install. Status: SAFE -- Simple post-install message, no malicious content.
LLM auditresponse for tg-ws-proxy@.service:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd unit file for a local SOCKS5 proxy service. It defines a simple service that runs `/usr/bin/tg-ws-proxy-wrapper %i` after network is up, restarts on failure, and is enabled for multi-user mode.

No malicious behavior is present. There are no network exfiltration attempts, no downloads or execution of remote code, no obfuscation, and no suspicious file operations. The `%i` instance token is a normal systemd feature used to pass the instance name to the wrapper, which is consistent with the package's stated purpose of providing a per-instance proxy service. The unit only references an absolute path to a wrapper that is presumably installed by the package itself. This file is ordinary, benign packaging.
</details>
<evidence>
</evidence>
<summary>
Standard systemd unit; no malicious or suspicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed tg-ws-proxy@.service. Status: SAFE -- Standard systemd unit; no malicious or suspicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It contains only declarative packaging information: package name, version, description, URL, dependencies, source list, and SHA-256 checksums. There is no executable code, no network-fetching logic, no obfuscation, and no suspicious system-modifying operations in this file.

The sources point to the project's official GitHub repository pinned to a specific tag (`v1.10.4`), with SHA-256 checksums provided for all three source entries (including the install script, wrapper, and systemd unit). The dependencies (`python`, `python-cryptography`) and build dependencies (`python-build`, `python-installer`, `python-wheel`, `python-hatchling`) are consistent with packaging a standard Python-based application. The package description indicates an MTProto proxy tool; while its purpose involves proxying Telegram traffic, this is the upstream project's intended functionality and is not a supply-chain concern.

Notably, there is no `SKIP` checksum, no mutable VCS branch in the source list, no `prepare()`/`build()` hooks shown here, and no indication of injected malicious code. The actual contents of the referenced install/wrapper/service files are not visible in this metadata, but the `.SRCINFO` itself contains no red flags whatsoever.
</details>
<evidence>
</evidence>
<summary>Standard declarative .SRCINFO with pinned sources and checksums, no malicious indicators.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative .SRCINFO with pinned sources and checksums, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,731
  Completion Tokens: 3,400
  Total Tokens: 17,131
  Total Cost: $0.000730
  Execution Time: 52.41 seconds

Final Status: SAFE


No issues found.
