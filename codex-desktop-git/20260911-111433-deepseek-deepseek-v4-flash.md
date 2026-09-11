---
package: codex-desktop-git
pkgver: 26.908.31748.r2112.g4ca4b17b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16370
completion_tokens: 2269
total_tokens: 18639
cost: 0.001852574248
execution_time: 246.1
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T11:14:32Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD with no security issues.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file, no security concerns.
  - file: codex-desktop-git.install
    status: safe
    summary: Standard package install hooks with guarded local helper scripts; no malicious behavior found.
  - file: LicenseRef-OpenAI-Terms
    status: safe
    summary: Informational license file, no security issues.
---

Materializing codex-desktop-git from local mirror...
Materialized codex-desktop-git
Analyzing codex-desktop-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists only of standard variable definitions (pkgname, pkgver, pkgrel, arch, license, depends, source, etc.) and comments. No command substitutions, function calls, or direct execution of external programs occur at this level. The source array uses `"$pkgname::git+..."` which expands a previously defined variable (normal). The `install` variable is set to a filename, but does not trigger any execution. `makepkg --printsrcinfo` only sources this top-level code; it does not invoke `prepare()`, `pkgver()`, `build()`, or `package()`. Therefore, running this command does not execute any malicious code.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LicenseRef-OpenAI-Terms...
[0/4] Reviewing .SRCINFO, LicenseRef-OpenAI-Terms, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR `-git` package that builds the ChatGPT desktop application from the upstream repository at `https://github.com/ilysenko/codex-desktop-linux`. The `prepare()` function runs `install.sh` from the cloned repository, which downloads OpenAI&#x2019;s official Linux DEB package from their signed APT repository (`https://persistent.oaistatic.com/...`) to stage the application payload. This is expected upstream behavior, not a supply-chain attack. All network fetches target the package&#x2019;s own upstream or OpenAI&#x2019;s official infrastructure. The `sha256sums` entry for the VCS source is set to `SKIP`, which is standard for `-git` packages and not a security issue. There is no obfuscated code, no dangerous commands like `eval`, no data exfiltration, and no execution of untrusted content beyond normal packaging operations. The `package()` function uses helper scripts from the upstream repo and installs only expected files into the package directory. No red flags are present.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD with no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LicenseRef-OpenAI-Terms, PKGBUILD, codex-desktop-git.install...
[1/4] Reviewing .SRCINFO, LicenseRef-OpenAI-Terms, codex-desktop-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the AUR package `codex-desktop-git`. It declares the package base, dependencies, source (from the project's own GitHub repository), and a checksum for a license file. One checksum is `SKIP` for the VCS source, which is standard and expected for `-git` packages. There is no executable code, no network requests, no obfuscation, and no commands beyond standard packaging declarations. No evidence of malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>AUR metadata file, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing LicenseRef-OpenAI-Terms, codex-desktop-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file, no security concerns.
LLM auditresponse for codex-desktop-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an Arch Linux package install script (`.install`) for `codex-desktop-git`. It defines standard ALPM hook functions (`post_install`, `post_upgrade`, `pre_remove`) that run conditional helpers staged by the package itself under `/opt/codex-desktop/.codex-linux/`. The script only sources those helpers if the files exist, and the calls are guarded with `|| true`, which is a normal pattern for optional post-install maintenance steps.

There is no evidence of obfuscation, encoded data, suspicious network access, credential theft, backdoors, or unexpected file manipulation. The script does not download or execute remote content, and the paths it references are owned by the package's own installation. The behavior is consistent with routine packaging: cleaning up a previous updater service and repairing desktop entry shadowing. No genuinely malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard package install hooks with guarded local helper scripts; no malicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing LicenseRef-OpenAI-Terms...
+ Reviewed codex-desktop-git.install. Status: SAFE -- Standard package install hooks with guarded local helper scripts; no malicious behavior found.
LLM auditresponse for LicenseRef-OpenAI-Terms:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license notice. It explains that the Linux port is MIT-licensed while the upstream ChatGPT application is proprietary and governed by OpenAI&#39;s terms. It also notes that the build process downloads the application from OpenAI&#39;s CDN. There are no commands, scripts, or any executable content present. The file is purely informational and contains no security risk.
</details>
<evidence></evidence>
<summary>Informational license file, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed LicenseRef-OpenAI-Terms. Status: SAFE -- Informational license file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,370
  Completion Tokens: 2,269
  Total Tokens: 18,639
  Total Cost: $0.001853
  Execution Time: 246.10 seconds

Final Status: SAFE


No issues found.
