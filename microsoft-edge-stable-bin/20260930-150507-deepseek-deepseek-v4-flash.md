---
package: microsoft-edge-stable-bin
pkgver: 154.0.4258.48
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17522
completion_tokens: 2662
total_tokens: 20184
cost: 0.00179432484
execution_time: 33.94
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-30T15:05:06Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security issues.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned checksums.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard Microsoft Edge binary packaging with official source and pinned checksums."
  - file: microsoft-edge-stable.install
    status: safe
    summary: Simple post-install message script, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for official Microsoft repo.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard launcher wrapper reading local Edge flags; no malicious behavior found.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists entirely of standard variable definitions such as `pkgname`, `pkgver`, `source`, `sha256sums`, etc. No command substitutions, `eval`, `curl`, `wget`, or other potentially dangerous constructs are present at the top level. The `package()` function is not executed during `makepkg --printsrcinfo`, so its contents are out of scope for this gate. The source URL points to the official Microsoft repository, which is expected for this package. There is no obfuscation, no indication of malicious payload execution during sourcing.
</details>
<evidence></evidence>
<summary>Global scope contains only safe variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains only safe variable definitions.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file that lists common build artifacts (*.log, *.zst, *.deb, *.rpm) to be ignored by version control. No executable code, network requests, obfuscation, or any other security-relevant behavior is present. The file is benign and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security issues.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It declares the package source as an official Microsoft Edge .deb package from `packages.microsoft.com`, along with two local files (a shell script and a license PDF). All three sources have pinned SHA256 checksums. There are no suspicious URLs, obfuscated commands, network requests, or executable logic in this metadata file. The dependencies and options are typical for a binary browser package. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with pinned checksums.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the Microsoft Edge stable package directly from Microsoft's official package repository (`packages.microsoft.com`), with pinned SHA256 checksums for the `.deb`, launcher script, and license PDF. The build process extracts the standard Debian package, applies the conventional setuid bit to the `msedge-sandbox` helper (required for Chromium-based browser sandboxing), generates icon sizes with ImageMagick, and installs expected launcher and license files. No suspicious network destinations, obfuscated commands, or unexpected file operations are present.

The use of `chmod 4755` on the sandbox binary is standard packaging practice for Chromium-family browsers and is not a security concern. All actions are consistent with packaging a vendor-provided binary browser; no evidence of injected malicious code, credential harvesting, or supply-chain tampering was found.
</details>
<evidence>
</evidence>
<summary>
Safe: standard Microsoft Edge binary packaging with official source and pinned checksums.</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing .nvchecker.toml, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard Microsoft Edge binary packaging with official source and pinned checksums.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-installation script for the `microsoft-edge-stable-bin` AUR package. It defines colored output helper functions using `tput` and `printf`, and contains two short functions (`post_install` and `post_upgrade`) that print informational notes to the user about configuration file location and launcher name. No network requests, file system modifications, code execution, obfuscation, or any other security-relevant operations occur. The script performs only routine display of user guidance, consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Simple post-install message script, no security issues.</summary>
</security_assessment>

[5/7] Reviewing .nvchecker.toml, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Simple post-install message script, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration for nvchecker, a version-checking tool. It defines a regex-based source to extract the version of `microsoft-edge-stable-bin` from the official Microsoft repository's `Packages` file. The URL (`https://packages.microsoft.com/repos/edge/dists/stable/main/binary-amd64/Packages`) is the legitimate upstream source. No suspicious or malicious content is present.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for official Microsoft repo.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for official Microsoft repo.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launcher wrapper for Microsoft Edge. It reads an optional user configuration file from `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf`, assigns the contents to `EDGE_USER_FLAGS`, and passes them to the Edge binary along with the invoking arguments.

The script does not download or execute remote content, does not use encoded or obfuscated commands, and does not touch data outside the Edge application scope. The only minor concern is that `$EDGE_USER_FLAGS` is intentionally unquoted to allow word-splitting of multiple flags; this lets the user pass arbitrary command-line options to Edge, but the config file is user-controlled local input and no privilege boundary is crossed. This is consistent with common AUR wrapper-script practice and is not malicious.
</details>
<evidence>
</evidence>
<summary>
Standard launcher wrapper reading local Edge flags; no malicious behavior found.
</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard launcher wrapper reading local Edge flags; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,522
  Completion Tokens: 2,662
  Total Tokens: 20,184
  Total Cost: $0.001794
  Execution Time: 33.94 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
