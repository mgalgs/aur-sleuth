---
package: soteria-bin
pkgver: 0.3.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17527
completion_tokens: 7859
total_tokens: 25386
cost: 0.002945706470
execution_time: 123.37
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-10T07:12:38Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Binary source mismatches upstream but file is metadata only.
  - file: soteria-bin.install
    status: safe
    summary: Standard install script with informational message.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for build artifacts.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; binary source provenance should be verified.
  - file: soteria.service
    status: safe
    summary: Standard systemd service unit file, safe.
---

Materializing soteria-bin from local mirror...
Materialized soteria-bin
Analyzing soteria-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only top-level variable assignments and function definitions. There are no top-level command substitutions, external downloads, encrypted payloads, or system-modifying commands. The `source` array references upstream GitHub release tarballs and local files, but `makepkg --printsrcinfo` does not download or execute those sources.

The `package()` function performs normal installation steps, but it is not executed during `--printsrcinfo`, so it is out of scope for this narrow gate. The `SKIP` checksums are also not relevant at this stage and are not grounds for an UNSAFE decision.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is safe; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is safe; no code executes during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The binary tarball is sourced from a GitHub user (`ocean-sudo`) that differs from the project's official upstream (`ImVaskel`). This is a red flag for a supply-chain attack: an attacker could host a malicious binary under a similarly named account. Although the tarball's SHA-256 is pinned, the origin itself is untrusted relative to the package's stated URL. The `.SRCINFO` metadata directs `makepkg` to download and later execute this binary, making the file a vector for delivering potentially malicious code.
</details>
<evidence>
source = soteria-0.3.2-linux-x86_64.tar.gz::https://github.com/ocean-sudo/soteria/releases/download/v0.3.2/soteria-0.3.2-linux-x86_64.tar.gz
</evidence>
<summary>Binary source from unexpected GitHub user, supply-chain risk</summary>
</security_assessment>

Second look for .SRCINFO (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The initial verdict incorrectly flagged the file as UNSAFE based solely on the binary source URL pointing to a different GitHub user (`ocean-sudo`) than the official upstream (`ImVaskel`). While this is a notable hygiene concern and weakens trust in the binary’s provenance, the `.SRCINFO` file itself contains no malicious code – it is declarative metadata. It does not exfiltrate data, download and execute arbitrary code at runtime, use obfuscation, or perform any other action listed under “genuinely malicious behavior” in the calibration rules. The binary tarball is pinned with a SHA-256 checksum, and the differing origin is an imperfect packaging choice, not evidence of injected code in this file.
</details>
<evidence></evidence>
<summary>Binary source mismatches upstream but file is metadata only.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Binary source mismatches upstream but file is metadata only.
[1/5] Reviewing .gitignore, PKGBUILD, soteria-bin.install...
LLM auditresponse for soteria-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .install script for an AUR package. It defines `post_install()` and `post_upgrade()` functions that only output an informational message using `cat` with a heredoc. There are no suspicious operations, no network requests, no file modifications, no execution of third-party code, and no obfuscation. The message simply informs the user about enabling a systemd service and potential conflicts with other polkit agents. This is normal packaging behavior.
</details>
<evidence>
</evidence>
<summary>Standard install script with informational message.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, PKGBUILD, soteria-bin.install, soteria.service...
[2/5] Reviewing .gitignore, PKGBUILD, soteria.service...
+ Reviewed soteria-bin.install. Status: SAFE -- Standard install script with informational message.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard ignore patterns for build artifacts (`pkg/`, `src/`, `*.pkg.tar.*`, `*.tar.gz`). No executable code, network requests, obfuscation, or suspicious operations are present. This is a typical file for any AUR package and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for build artifacts.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, soteria.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for build artifacts.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward prebuilt-binary package. It downloads a release tarball over HTTPS from GitHub, checks it against a pinned SHA-256, and installs the binary, license, and a systemd user service into `$pkgdir`. There are no eval/base64/curl-pipe-shell patterns, no post-install network calls, no writes outside `$pkgdir`, and no obfuscated commands. The `SKIP` checksums on the local `.service` and `.install` files are normal for local files shipped with an AUR package and are not malicious by themselves.

One provenance note: the upstream URL points to `github.com/ImVaskel/soteria`, while the binary tarball is fetched from `github.com/ocean-sudo/soteria`, which resembles the maintainer's account rather than the advertised upstream. This could be a maintainer-hosted binary release and is not necessarily malicious, but users should verify the binary provenance matches the upstream project. That concern does not rise to the level of UNSAFE based on this file alone.
</details>
<evidence></evidence>
<summary>
No malicious behavior found; binary source provenance should be verified.
</summary>
</security_assessment>

[4/5] Reviewing soteria.service...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; binary source provenance should be verified.
LLM auditresponse for soteria.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Soteria Polkit Authentication Agent. It defines a simple service that runs `/usr/lib/soteria-polkit/soteria` after the graphical session starts, with `GDK_BACKEND=wayland` environment variable. There is no evidence of malicious behavior such as network requests, obfuscated code, file system tampering, or execution of untrusted content. The file follows normal packaging practices for a service unit.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file, safe.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed soteria.service. Status: SAFE -- Standard systemd service unit file, safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,527
  Completion Tokens: 7,859
  Total Tokens: 25,386
  Total Cost: $0.002946
  Execution Time: 123.37 seconds

Final Status: SAFE


No issues found.
