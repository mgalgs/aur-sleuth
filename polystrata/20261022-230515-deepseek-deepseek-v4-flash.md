---
package: polystrata
pkgver: 0.1.45.poly.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17045
completion_tokens: 2666
total_tokens: 19711
cost: 0.002036307
execution_time: 37.55
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T23:05:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore pattern, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard MIT license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with no suspicious content.
  - file: polystrata.install
    status: safe
    summary: Install script prints usage info only; no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code.
  - file: polystrata.sh
    status: safe
    summary: Routine launcher script with no malicious indicators.
---

Materializing polystrata from local mirror...
Materialized polystrata
Analyzing polystrata AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function definitions in its global scope. No command substitutions, backtick executions, or other code that would execute during sourcing. The `prepare()` and `package()` functions are only defined, not invoked, so their content (sed, install, cp) does not run during `makepkg --printsrcinfo`. No network requests, file exfiltration, or obfuscated code is present at the top level. Therefore, running `makepkg --printsrcinfo` on this file is safe.</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .gitignore...
[0/6] Reviewing .gitignore, .SRCINFO...
[0/6] Reviewing .gitignore, .SRCINFO, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains a single gitignore pattern to ignore tarball archives (`*.tar.*`). This is a standard, benign configuration file used in countless projects. No suspicious or malicious behavior is present.</details>
<evidence></evidence>
<summary>Standard gitignore pattern, no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .gitignore, .SRCINFO, LICENSE, PKGBUILD...
[1/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore pattern, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no system modifications. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard MIT license file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, polystrata.install...
[2/6] Reviewing .SRCINFO, PKGBUILD, polystrata.install...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` file used in Arch Linux AUR packages. It declares package metadata, dependencies, and sources. The source URL points to the official GitHub repository (`github.com/VecSzn/PolyStrata`), which is expected. Both sources have specified SHA256 checksums, indicating that the tarball is pinned. The file contains no obfuscated code, no network requests beyond normal packaging metadata, and no system modifications. It does not exhibit any signs of supply-chain compromise or malicious behavior. The content is purely descriptive and follows AUR conventions.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO with no suspicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, polystrata.install, polystrata.sh...
[3/6] Reviewing PKGBUILD, polystrata.install, polystrata.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with no suspicious content.
LLM auditresponse for polystrata.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `polystrata.install` is a standard Arch Linux package install script. It contains only a `post_install()` function that prints a message to stdout using `cat` and a heredoc. The message provides instructions and notes for the user about running the software, compiling the engine, and downloading models. No commands are executed that modify the system, make network connections, or perform any file operations beyond echoing text. The `post_upgrade()` function simply calls `post_install()` to display the same message on upgrades. There is no obfuscation, no dangerous commands (`eval`, `curl`, `wget`, `base64`, etc.), and no deviation from standard packaging practices. The file is benign.
</details>
<evidence></evidence>
<summary>Install script prints usage info only; no malicious code.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, polystrata.sh...
+ Reviewed polystrata.install. Status: SAFE -- Install script prints usage info only; no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux packaging file. It downloads a tarball from the official GitHub repository with a pinned sha256 checksum (not SKIP), creates a launcher script via simple `sed` substitutions, copies the upstream source tree into `/opt/polystrata`, and installs the launcher into `/usr/bin`. There is no obfuscated code, no `eval`, `curl|bash`, base64 decoding, or any other patterns associated with supply-chain attacks. The package’s build and install commands are typical for this type of AI model runtime package. No red flags are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code.</summary>
</security_assessment>

[5/6] Reviewing polystrata.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code.
LLM auditresponse for polystrata.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `polystrata.sh` is a standard launcher for an AUR package that needs to copy its read-only files from `/opt/polystrata` into a writable user directory (default `$HOME/PolyStrata`). It checks a version stamp to avoid repeated copying and then executes the upstream `setup.sh`. No network requests, encoded commands, dangerous operations, or unusual system modifications are present. The behavior is consistent with ordinary AUR packaging practices.
</details>
<evidence>

</evidence>
<summary>Routine launcher script with no malicious indicators.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed polystrata.sh. Status: SAFE -- Routine launcher script with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,045
  Completion Tokens: 2,666
  Total Tokens: 19,711
  Total Cost: $0.002036
  Execution Time: 37.55 seconds

Final Status: SAFE


No issues found.
