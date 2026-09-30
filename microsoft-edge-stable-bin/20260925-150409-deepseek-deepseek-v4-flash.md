---
package: microsoft-edge-stable-bin
pkgver: 154.0.4258.37
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17522
completion_tokens: 4310
total_tokens: 21832
cost: 0.00127363824
execution_time: 65.82
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-25T15:04:08Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore patterns, no security concerns.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .nvchecker.toml
    status: safe
    summary: Configuration file for automated version checking, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Microsoft Edge stable.
  - file: .SRCINFO
    status: safe
    summary: Informational metadata file; no malicious content.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard browser launch wrapper, no malicious behavior.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Simple install script with only user-facing notes.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope, which is the only code executed during `makepkg --printsrcinfo`, consists solely of safe variable assignments (pkgname, pkgver, depends, etc.), array definitions (source, sha256sums), and the declaration of the `package()` function. There are no command substitutions (`$(` or backticks), no dangerous redirections, and no calls to external tools like `curl`, `wget`, or `eval` in the global scope. The `package()` function body is inert during this parsing step because `makepkg --printsrcinfo` does not invoke `package()`. The file content is a standard AUR PKGBUILD for a prebuilt binary package, and running `makepkg --printsrcinfo` on it is safe.
</details>
<evidence></evidence>
<summary>No unsafe code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No unsafe code executes during printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .gitignore file containing only file pattern exclusions for common artifacts (logs and package archives). It performs no operations, contains no executable code, and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore patterns, no security concerns.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore patterns, no security concerns.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.nvchecker.toml` file is a configuration for the `nvchecker` tool, which is commonly used by AUR maintainers to automate version checks for upstream packages. It defines a source named `microsoft-edge-stable-bin` that uses the `regex` source type to fetch version information from the official Microsoft repository URL (`https://packages.microsoft.com/repos/edge/dists/stable/main/binary-amd64/Packages`). The regex extracts the version number from the package listing. There is no code execution, no network requests beyond the expected upstream source, no obfuscation, and no dangerous commands. This is a standard and legitimate packaging tool configuration.
</details>
<evidence>
</evidence>
<summary>Configuration file for automated version checking, no malicious content.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Configuration file for automated version checking, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a precompiled binary package. It downloads the official Microsoft Edge .deb from packages.microsoft.com (the vendor's own repository) with pinned checksums, extracts it, sets the necessary SUID sandbox permission (normal for Chromium-based browsers), resizes icons using ImageMagick (declared makedepends), installs a launcher script, and places the license file. There is no obfuscation, no unexpected network requests, no execution of untrusted code at build time, and no data exfiltration. The file is consistent with legitimate packaging of Microsoft Edge.</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Microsoft Edge stable.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing .SRCINFO, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Microsoft Edge stable.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a metadata file (`.SRCINFO`) that describes the AUR package `microsoft-edge-stable-bin`. It contains only declarative fields: package name, version, description, dependencies, source URLs, and checksums. There are no executable scripts, no network requests, no obfuscated code, and no instructions that could lead to a supply-chain attack. The checksums are provided (not set to `SKIP`), and the sources point to the official Microsoft Edge Debian package repository. No suspicious or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Informational metadata file; no malicious content.</summary>
</security_assessment>

[5/7] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Informational metadata file; no malicious content.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launch wrapper for Microsoft Edge Stable. It reads optional user-specified flags from a configuration file located under `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf` and passes them to the Edge binary. All operations are local file reads and executing the installed browser. There are no network requests, no downloads, no obfuscated code, and no system modifications beyond launching the intended application. The `exec` call replaces the shell process with Edge, which is normal behavior for such wrappers. No security concerns.
</details>
<evidence></evidence>
<summary>Standard browser launch wrapper, no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.install...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard browser launch wrapper, no malicious behavior.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script that only prints informational messages to the user during post-install and post-upgrade actions. It defines colored output helper functions and provides user guidance about configuration file location and launcher name. No network requests, file modifications, code execution, or obfuscation are present. This is benign packaging behavior.
</details>
<evidence></evidence>
<summary>Simple install script with only user-facing notes.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Simple install script with only user-facing notes.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,522
  Completion Tokens: 4,310
  Total Tokens: 21,832
  Total Cost: $0.001274
  Execution Time: 65.82 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
