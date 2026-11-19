---
package: microsoft-edge-stable-bin
pkgver: 154.0.4258.62
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17358
completion_tokens: 2476
total_tokens: 19834
cost: 0.0036275312
execution_time: 52.66
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T11:01:48Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Safe gitignore file with no malicious content.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version-checking config; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package from official Microsoft repository, no suspicious activity.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard browser wrapper script; no malicious content.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Standard install script with no malicious behavior.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable and array definitions (e.g., pkgname, pkgver, depends, source, sha256sums). There are no command substitutions, backtick expressions, or other executable statements that would run when the file is sourced. The package() function contains the only operational code, but it is not executed during `makepkg --printsrcinfo`. No malicious or dangerous top-level code is present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file that lists common build artifact extensions (logs, Arch package files, Debian packages, RPM packages). It contains no executable code, no network requests, no file operations, and no obfuscation. It poses no security risk and is consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Safe gitignore file with no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .gitignore. Status: SAFE -- Safe gitignore file with no malicious content.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `microsoft-edge-stable-bin`. It declares package metadata, dependencies, options, and sources. The primary source is a `.deb` package downloaded from `packages.microsoft.com`, the official Microsoft repository, with a valid pinned SHA-256 checksum. The other two sources (a shell script and a PDF license file) also have pinned checksums. There is no executable code, obfuscated content, suspicious network destinations, or deviation from normal packaging practices. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR .SRCINFO file, no security issues.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration for the `nvchecker` tool, which is used to monitor upstream releases. It defines a regex-based source to extract the version number of `microsoft-edge-stable` from the official Microsoft packages repository (`https://packages.microsoft.com/repos/edge/dists/stable/main/binary-amd64/Packages`). This is a standard and expected practice for AUR packages that rely on prebuilt binaries. There is no malicious code, no obfuscation, no data exfiltration, and no unexpected network destinations. The URL points to the legitimate upstream vendor.
</details>
<evidence></evidence>
<summary>Standard version-checking config; no security issues.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version-checking config; no security issues.
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package definition for Microsoft Edge Stable (binary). It downloads the official .deb from `packages.microsoft.com` with pinned checksums. The `package()` function extracts the archive, sets the SUID bit on the sandbox binary (normal for Chromium-based browsers), resizes icons with ImageMagick, installs the launcher script and license, then cleans up. No network requests to unexpected hosts, no obfuscation, no dangerous command execution beyond routine packaging operations. The launcher script `microsoft-edge-stable.sh` is a separate file not analyzed here, but the PKGBUILD itself contains no malicious content.
</details>
<evidence></evidence>
<summary>Standard binary package from official Microsoft repository, no suspicious activity.</summary>
</security_assessment>

[5/7] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package from official Microsoft repository, no suspicious activity.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This wrapper script is standard for AUR browser packages. It reads user-configured command-line flags from `~/.config/microsoft-edge-stable-flags.conf` and passes them to the Edge binary. There are no network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no file modifications outside the user's own configuration. The unquoted `$EDGE_USER_FLAGS` variable is a common pattern and not a supply-chain concern because the file is controlled by the user. No malicious behavior detected.
</details>
<evidence></evidence>
<summary>Standard browser wrapper script; no malicious content.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.install...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard browser wrapper script; no malicious content.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR package install script that defines helper functions for colored output and two hooks (post_install and post_upgrade). The hooks simply print informational notes to the user about where to place custom flags and the launcher command. There is no network access, no execution of untrusted code, no file operations beyond writing to stdout, and no obfuscation. The content is entirely benign and consistent with normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard install script with no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Standard install script with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,358
  Completion Tokens: 2,476
  Total Tokens: 19,834
  Total Cost: $0.003628
  Execution Time: 52.66 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
