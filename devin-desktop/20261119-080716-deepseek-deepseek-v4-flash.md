---
package: devin-desktop
pkgver: 3.14.30825
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 26870
completion_tokens: 10150
total_tokens: 37020
cost: 0.00424530
execution_time: 77.44
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T08:07:16Z
file_verdicts:
  - file: devin-desktop-url-handler.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security issues.
  - file: devin-desktop.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: devin-desktop.sh
    status: safe
    summary: Standard launcher script; no security issues found.
  - file: PKGBUILD
    status: unsafe
    summary: Downloads binary from domain unrelated to the claimed project.
    evidence: "_apt_base=\"https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/apt\"\n_apt_pool=\"pool/main/d/devin-desktop\"\n_debfile=\"Devin-linux-x64-${_upstream_ver}.deb\"\n\nsource=(\n    \"${pkgname}-${pkgver}.deb::${_apt_base}/${_apt_pool}/${_debfile}\""
    evidence_line: 18
---

Materializing devin-desktop from local mirror...
Materialized devin-desktop
Analyzing devin-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable definitions (pkgname, pkgver, arch, source, depends, sha256sums, etc.) using static strings and shell parameter expansions (e.g., `${pkgver}`, `${_apt_base}/${_apt_pool}/${_debfile}`). There are no command substitutions (`$(...)` or backticks), no `eval`, no `curl`, `wget`, or other external commands, and no function calls that execute during sourcing. The `prepare()`, `build()`, and `package()` functions are defined but are **not** executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, devin-desktop-url-handler.desktop...
LLM auditresponse for devin-desktop-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard freedesktop.org .desktop entry for registering URL scheme handlers (devin: and windsurf:). It simply executes the main application binary at `/opt/devin-desktop/devin-desktop` with the `--open-url` flag and the URL argument `%U`. There is no obfuscation, no unexpected commands, no network requests, and no deviation from normal packaging practices. The file does exactly what a URL handler .desktop file is supposed to do.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, devin-desktop-url-handler.desktop, devin-desktop.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, devin-desktop.desktop...
+ Reviewed devin-desktop-url-handler.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an Arch User Repository (AUR) package. It declares the package name, version, dependencies, source URLs, and SHA-256 checksums. The source URLs point to an official Windsurf/Devin Desktop distribution server (codeiumdata.com) over HTTPS. All sources are pinned with checksums. No executable code, obfuscation, or suspicious directives are present. The content is limited to package metadata and does not introduce any supply-chain attack vectors.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, devin-desktop.desktop, devin-desktop.sh...
[2/5] Reviewing PKGBUILD, devin-desktop.desktop, devin-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security issues.
LLM auditresponse for devin-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (`.desktop`). It defines the application name, launch executable path, icon, categories, and a desktop action. The `Exec` lines invoke `/opt/devin-desktop/devin-desktop` with standard arguments (`%F` and `--new-window %F`), which is normal for a desktop application. There is no obfuscated code, network requests, file operations beyond launching the application itself, or any other suspicious or malicious content. This file purely describes how the application is launched and categorized in a desktop environment.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, devin-desktop.sh...
+ Reviewed devin-desktop.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
LLM auditresponse for devin-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for a desktop application using a system Electron runtime. It reads optional configuration flags from user-controlled files under `$XDG_CONFIG_HOME` and passes them as arguments to Electron. There is no network activity, no download or execution of remote code, no obfuscation, and no system modification beyond launching the application. The use of `exec` with array expansion ensures that flag file contents are treated as separate arguments, not shell-interpreted commands. This is a routine, transparent packaging pattern with no signs of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard launcher script; no security issues found.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed devin-desktop.sh. Status: SAFE -- Standard launcher script; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The PKGBUILD declares the project URL as `https://devin.ai/desktop` but downloads the actual application binary from a completely different domain: `windsurf-stable.codeiumdata.com`. The path includes a random-looking token (`wVxQEIWkwPUEAGf3`) and the directory structure references "windsurf" (a Codeium product), while the package claims to be "Devin Desktop" (a Cognition product). This mismatch between the stated upstream and the actual download source is a strong indicator of impersonation or a supply-chain attack: users who intend to install Devin are instead served software from an untrusted, unrelated host. Additionally, the maintainer email is a random‑letter address, which further reduces trust. Although the deb file hash is pinned, the pin only verifies integrity against whatever the maintainer placed on that server; it does not establish authenticity of the source. Downloading executable code from an unexpected host that does not match the project’s own distribution channel constitutes genuinely malicious behavior.
</details>
<evidence>
_apt_base=&quot;https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/apt&quot;
_apt_pool=&quot;pool/main/d/devin-desktop&quot;
_debfile=&quot;Devin-linux-x64-${_upstream_ver}.deb&quot;

source=(
    &quot;${pkgname}-${pkgver}.deb::${_apt_base}/${_apt_pool}/${_debfile}&quot;
</evidence>
<summary>Downloads binary from domain unrelated to the claimed project.</summary>
</security_assessment>

Second look for PKGBUILD (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. The PKGBUILD downloads the binary from `windsurf-stable.codeiumdata.com`, a domain belonging to Codeium (maker of Windsurf), while the package claims to be Devin Desktop (a Cognition product). The project URL `https://devin.ai/desktop` does not match the download host. This is not a mere hygiene issue or unconventional hosting—it is a deliberate misrepresentation of the package’s origin. The maintainer email is also obfuscated (`github.igizp@dabg.uk`), and the install directory candidates include `windsurf`, further indicating the package is actually for Windsurf. Such domain substitution is a classic supply-chain attack vector: users intending to install Devin instead receive software from an unrelated, unexpected host, which qualifies as "Downloading code or binaries from an untrusted/unexpected host and executing them" under rule 4. The checksum pin does not mitigate this, as it only ensures integrity of whatever the maintainer placed on that server, not authenticity.
</details>
<evidence>
_apt_base=&quot;https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/apt&quot;
_apt_pool=&quot;pool/main/d/devin-desktop&quot;
_debfile=&quot;Devin-linux-x64-${_upstream_ver}.deb&quot;

source=(
    &quot;${pkgname}-${pkgver}.deb::${_apt_base}/${_apt_pool}/${_debfile}&quot;
</evidence>
<summary>Downloads binary from domain unrelated to the claimed project.</summary>
</security_assessment>

[5/5] Reviewing ...
x Reviewed PKGBUILD. Status: UNSAFE -- Downloads binary from domain unrelated to the claimed project.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## PKGBUILD

Status: UNSAFE

Summary: Downloads binary from domain unrelated to the claimed project.

Evidence (line 18):

```
_apt_base="https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/apt"
_apt_pool="pool/main/d/devin-desktop"
_debfile="Devin-linux-x64-${_upstream_ver}.deb"

source=(
    "${pkgname}-${pkgver}.deb::${_apt_base}/${_apt_pool}/${_debfile}"
```

Details:

The PKGBUILD declares the project URL as `https://devin.ai/desktop` but downloads the actual application binary from a completely different domain: `windsurf-stable.codeiumdata.com`. The path includes a random-looking token (`wVxQEIWkwPUEAGf3`) and the directory structure references "windsurf" (a Codeium product), while the package claims to be "Devin Desktop" (a Cognition product). This mismatch between the stated upstream and the actual download source is a strong indicator of impersonation or a supply-chain attack: users who intend to install Devin are instead served software from an untrusted, unrelated host. Additionally, the maintainer email is a random‑letter address, which further reduces trust. Although the deb file hash is pinned, the pin only verifies integrity against whatever the maintainer placed on that server; it does not establish authenticity of the source. Downloading executable code from an unexpected host that does not match the project’s own distribution channel constitutes genuinely malicious behavior.

---

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 26,870
  Completion Tokens: 10,150
  Total Tokens: 37,020
  Total Cost: $0.004245
  Execution Time: 77.44 seconds

Final Status: UNSAFE


Issues Found:

PKGBUILD: [UNSAFE] Downloads binary from domain unrelated to the claimed project. / The PKGBUILD declares the project URL as `https://devin.ai/desktop` but downloads the actual application binary from a completely different domain: `windsurf-stable.codeiumdata.com`. The path includes a random-looking token (`wVxQEIWkwPUEAGf3`) and the directory structure references "windsurf" (a Codeium product), while the package claims to be "Devin Desktop" (a Cognition product). This mismatch between the stated upstream and the actual download source is a strong indicator of impersonation or a supply-chain attack: users who intend to install Devin are instead served software from an untrusted, unrelated host. Additionally, the maintainer email is a random‑letter address, which further reduces trust. Although the deb file hash is pinned, the pin only verifies integrity against whatever the maintainer placed on that server; it does not establish authenticity of the source. Downloading executable code from an unexpected host that does not match the project’s own distribution channel constitutes genuinely malicious behavior.
