---
package: paradox-launcher
pkgver: 2026.12
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13532
completion_tokens: 3282
total_tokens: 16814
cost: 0.0045149024
execution_time: 50.5
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T11:10:05Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration for version tracking.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: paradox-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: paradox-launcher
    status: safe
    summary: Standard launcher script, no malicious activity.
---

Materializing paradox-launcher from local mirror...
Materialized paradox-launcher
Analyzing paradox-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments (e.g., `pkgname`, `pkgver`, `_source`, `source`, `sha256sums`) and a single function definition (`package()`). No command substitution (backticks or `$()`) or dangerous builtins (e.g., `eval`, `source`, `curl`, `wget`) appear at the top level. The `source` array refers to a URL via string interpolation, but that string is never executed—it is purely declarative. Since `makepkg --printsrcinfo` only sources the global scope and does **not** run `package()`, there is no code path that could execute a malicious payload or exfiltrate data during this step.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .nvchecker.toml...
[0/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a metadata file for an Arch User Repository (AUR) package. It contains only package description, dependencies, and a source URL pointing to the official Paradox Interactive launcher domain (`launcher.paradoxinteractive.com`). The source is a `.deb` file with a pinned SHA-256 checksum. No executable code, obfuscation, suspicious network requests, or dangerous operations are present. The file is purely declarative and follows standard AUR packaging conventions. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, paradox-launcher...
[1/5] Reviewing .nvchecker.toml, PKGBUILD, paradox-launcher...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for `nvchecker`, a tool that checks for new upstream releases. It instructs nvchecker to send a HEAD request to the official Paradox Interactive launcher download URL, parse the redirect location header, and extract the version number using a regex pattern. There is no code execution, no data exfiltration, and no mention of executing downloaded binaries. The configuration uses only built-in nvchecker source types (`httpheader`) and makes requests to the official website of the package vendor. No malicious or suspicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker configuration for version tracking.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, paradox-launcher...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration for version tracking.
[2/5] Reviewing PKGBUILD, paradox-launcher, paradox-launcher.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a prebuilt binary package. The source is downloaded from the official Paradox Interactive launcher domain (`launcher.paradoxinteractive.com`) using HTTPS. The checksum (`sha256sums`) is provided and pinned, so the downloaded file is verified against a known hash. The `package()` function extracts the `.deb` archive using `tar` on its `data.tar.gz` component (standard for `.deb` files) and copies the contents into `$pkgdir`, then performs routine fixes to icon references and creates a symlink to the application binary. No obfuscation, network requests beyond the declared source, dangerous commands, or file operations outside the package scope are present. All operations serve the stated purpose of installing the Paradox Launcher.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/5] Reviewing paradox-launcher, paradox-launcher.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
LLM auditresponse for paradox-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop`). It defines the application name, comment, executable path, icon, and categories. No malicious content is present—no embedded commands, network requests, obfuscation, or file operations. The file conforms to the freedesktop.org specification and is used solely for launching the application via a desktop environment menu or launcher. There are no security concerns.</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[4/5] Reviewing paradox-launcher...
+ Reviewed paradox-launcher.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for paradox-launcher:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for a game or application installed via the paradox-launcher AUR package. It creates a user-local directory (`~/.paradox-launcher`), copies the application files from the system-installed location (`/opt/paradox-launcher`) to that directory, makes a bootstrapper script executable, and runs it. There are no network requests, no obfuscated code, no use of dangerous commands like `eval`, `curl`, `wget`, or `base64`. The operations are confined to the application&#39;s own directories and are consistent with typical self-updating launchers (e.g., Steam, Lutris). No evidence of supply-chain injection, data exfiltration, or backdoor behavior is present in this file.
</details>
<evidence></evidence>
<summary>Standard launcher script, no malicious activity.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed paradox-launcher. Status: SAFE -- Standard launcher script, no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,532
  Completion Tokens: 3,282
  Total Tokens: 16,814
  Total Cost: $0.004515
  Execution Time: 50.50 seconds

Final Status: SAFE


No issues found.
