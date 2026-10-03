---
package: boosteroid
pkgver: 1.10.24
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13670
completion_tokens: 2207
total_tokens: 15877
cost: 0.000506352
execution_time: 31.53
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T23:18:09Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version check.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with legitimate sources and checksums.
  - file: boosteroid.sh
    status: safe
    summary: No security issues; standard launcher wrapper script.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, verified from official source.
---

Materializing boosteroid from local mirror...
Materialized boosteroid
Analyzing boosteroid AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions, arrays, and function declarations at the global scope. No command substitutions (`$()` or backticks), `eval`, `curl`, `wget`, or any other code execution exists outside of function bodies (`prepare()` and `package()` are only defined, not invoked). The `DLAGENTS` array sets a custom user-agent string for future download commands but does not itself execute any commands. All other content (source URLs, checksums, dependencies) is plain data. Therefore, running `makepkg --printsrcinfo`, which only sources the top-level code, presents no risk of accidental code execution.
</details>
<evidence>
</evidence>
<summary>Top-level code is passive; no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is passive; no execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool that automates version checks for Arch Linux packages. It defines a command-based source that fetches an `Updates.xml` file from the official domain `https://boosteroid.com/linux/client/` using `curl`, and then parses the version string with `xmllint`. Both the domain and the data being fetched are directly related to the package’s upstream – this is the intended way to obtain version information. There is no obfuscation, no download of executable code, no exfiltration of local data, and no deviation from standard packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version check.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, boosteroid.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, boosteroid.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version check.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file that defines package sources, dependencies, and checksums. All sources are fetched from the official Boosteroid domain (`boosteroid.com`), and all `md5sums` are provided (no `SKIP`). The dependencies are appropriate for a Linux gaming streaming client (e.g., graphics, audio, network diagnostics). The file contains no executable code, no obfuscation, and no references to unexpected or suspicious network destinations. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with legitimate sources and checksums.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, boosteroid.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with legitimate sources and checksums.
LLM auditresponse for boosteroid.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward launcher wrapper for the boosteroid binary. It sets the Qt platform, builds an optional flags string from a commented-out associative array, then executes the binary with any user-provided arguments. There are no network requests, obfuscated code, file modifications, or any other malicious behaviors. The script follows standard packaging practices for launching a graphical application.
</details>
<evidence></evidence>
<summary>No security issues; standard launcher wrapper script.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed boosteroid.sh. Status: SAFE -- No security issues; standard launcher wrapper script.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a Debian package from the official Boosteroid domain (`boosteroid.com/linux/installer/`), verifies its integrity via an MD5 checksum, extracts it using standard tools, and installs the binary along with a wrapper script and desktop file. There is no obfuscated code, no unexpected network requests, no exfiltration of local data, and no execution of attacker-controlled content. The use of `curl` with a Mozilla user agent is a workaround for a 403 error, not a malicious action. The MD5 verification and version check are standard packaging steps. No evidence of supply-chain injection or backdoor was found.
</details>
<evidence></evidence>
<summary>Standard AUR package, verified from official source.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, verified from official source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,670
  Completion Tokens: 2,207
  Total Tokens: 15,877
  Total Cost: $0.000506
  Execution Time: 31.53 seconds

Final Status: SAFE


No issues found.
