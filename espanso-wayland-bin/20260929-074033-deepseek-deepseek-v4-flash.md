---
package: espanso-wayland-bin
pkgver: 2.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11849
completion_tokens: 16719
total_tokens: 28568
cost: 0.00634018
execution_time: 761.86
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T07:40:33Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: "Clean, standard PKGBUILD: pinned upstream binary, normal extraction, no malicious behavior."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR binary package metadata with pinned upstream source and checksum; no malicious behavior found.
  - file: espanso-wayland-bin.install
    status: safe
    summary: Benign install hook; setcap grants a capability but no malicious code.
---

Materializing espanso-wayland-bin from local mirror...
Materialized espanso-wayland-bin
Analyzing espanso-wayland-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions in its global scope. No command substitutions, backtick executions, or other code that would execute during `makepkg --printsrcinfo` are present. All potentially dangerous operations are confined to the `package()` function, which is not executed during this step. The source URL points to an official GitHub release and the checksum is provided (not SKIP). There is no evidence of malicious code in the top-level scope.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR git repository. It ignores all files by default (`*`) and then explicitly whitelists the files that belong in the AUR repository: `.gitignore`, `PKGBUILD`, `.SRCINFO`, and the package install script `espanso-wayland-bin.install`. This pattern is a common, conventional way to keep build artifacts and stray files out of an AUR git repo while tracking only the required packaging files.

There are no network operations, encoded/obfuscated content, dangerous commands, file system modifications outside normal git tracking, or references to external hosts. Nothing in this file executes code, downloads anything, or touches system state. The contents are purely declarative version-control ignore rules.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore whitelisting packaging files; no security issues found.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no security issues found.
[1/4] Reviewing .SRCINFO, PKGBUILD, espanso-wayland-bin.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging file for the espanso-wayland binary release. It downloads a `.deb` from the official upstream GitHub releases URL, pins it with a specific `sha256sums` entry, and extracts it with `bsdtar`. The download destination is the project&apos;s own official release host, which is expected behavior.

The `package()` function performs only routine packaging operations: extracting the Debian package contents, adding a sysusers configuration to allow an `input` group for `/dev/input` access (needed by espanso on Wayland), and removing Debian-specific documentation and lintian metadata. Creating `sysusers.d` configs and removing upstream packaging leftovers are normal packaging practices, not malicious behavior.

There are no suspicious network requests, no encoded or obfuscated commands, no `curl|bash` patterns, no writes outside `$pkgdir` beyond the intended sysusers file, and no execution of attacker-controlled code. The use of `/dev/stdin` with a here-document is a benign way to install a small config file. Overall, this is a clean, conventional PKGBUILD.
</details>
<evidence>
</evidence>
<summary>
Clean, standard PKGBUILD: pinned upstream binary, normal extraction, no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, espanso-wayland-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard PKGBUILD: pinned upstream binary, normal extraction, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `espanso-wayland-bin` package. It contains only package metadata: pkgname, pkgver, dependencies, source URL, and checksum. There is no executable code, obfuscation, suspicious network behavior, or file manipulation.

The source is downloaded from the official upstream project release page (`https://github.com/espanso/espanso/releases/download/v2.4.1/espanso-debian-wayland-amd64.deb`), which is the expected and legitimate distribution channel for this application. The `sha256sums` entry is pinned to a concrete hash (not `SKIP`), so the downloaded binary is cryptographically verified at build time. Dependencies (`wl-clipboard`, `libxkbcommon`, `dbus`, `wxwidgets-gtk3`, `openssl`) are all reasonable runtime requirements for a Wayland-based text expander.

The `install = espanso-wayland-bin.install` line references a standard AUR install script, which is normal packaging practice. No red flags — such as fetching code from unrelated hosts, executing downloaded scripts, exfiltrating data, or using encoded/obfuscated commands — are present in this file.
</details>
<evidence></evidence>
<summary>Standard AUR binary package metadata with pinned upstream source and checksum; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing espanso-wayland-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR binary package metadata with pinned upstream source and checksum; no malicious behavior found.
LLM auditresponse for espanso-wayland-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an Arch Linux .install scriptlet for the espanso-wayland-bin package. It defines two hooks: `post_install` runs `setcap "cap_dac_override+p" /usr/bin/espanso`, and `post_upgrade` simply calls `post_install`. There is no network activity, no downloading or execution of remote code, no obfuscation, no encoded payloads, no persistence manipulation, and no modification of files outside the package's own binary. Re-applying the capability in `post_upgrade` is a routine, idempotent packaging pattern, since pacman replaces the binary during an upgrade.

The only security-relevant operation is granting the espanso binary the file capability `CAP_DAC_OVERRIDE`, which bypasses filesystem permission checks. A malicious or compromised espanso process could therefore read or write nearly any file on the system, including `/etc/shadow`, SSH keys, or browser data. This is a real privilege-escalation consideration: the capability is only as safe as the binary it is attached to, so the integrity of the prebuilt espanso binary (as verified by the PKGBUILD checksums) matters. However, granting file-override/read capabilities to an application's own binary via `setcap` is an established Linux packaging pattern for software that needs broader file access, and this appears to be a deliberate, transparent choice for espanso rather than a hidden attack.

Because the file contains no indicators of injected malicious code — no exfiltration, no fetcher/executor, no backdoor, no obfuscation — this is a packaging/permission decision rather than a supply-chain attack. I note the `CAP_DAC_OVERRIDE` grant as a security consideration (users may wish to confirm the shipped binary matches upstream), but under the calibration rules the decision is SAFE.
</details>
<evidence>
</evidence>
<summary>
Benign install hook; setcap grants a capability but no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed espanso-wayland-bin.install. Status: SAFE -- Benign install hook; setcap grants a capability but no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,849
  Completion Tokens: 16,719
  Total Tokens: 28,568
  Total Cost: $0.006340
  Execution Time: 761.86 seconds

Final Status: SAFE


No issues found.
