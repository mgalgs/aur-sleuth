---
package: quosparr-git
pkgver: 1.12.2.r0.g9edda7b
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13416
completion_tokens: 4343
total_tokens: 17759
cost: 0.00198918
execution_time: 37.73
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T04:05:42Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard software license file, no security issues.
  - file: quosparr-launcher
    status: safe
    summary: Standard launcher with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
---

Materializing quosparr-git from local mirror...
Materialized quosparr-git
Analyzing quosparr-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable definitions and no command substitutions, function calls, or other executable statements. There is no code that would run during `makepkg --printsrcinfo` (which sources the file but only executes global scope, not the `pkgver()`, `prepare()`, `build()`, or `package()` functions). All potentially dangerous operations are contained within functions that are not invoked at this stage. No malicious or suspicious global-level code is present.
</details>
<evidence>
</evidence>
<summary>No dangerous code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during sourcing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text. It contains no executable code, no network operations, no system modifications, and no obfuscation. It is a purely informational file with no security implications.
</details>
<evidence>
</evidence>
<summary>Standard software license file, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard software license file, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, quosparr-launcher...
LLM auditresponse for quosparr-launcher:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the Quosparr application. It performs routine startup operations: checking for help flags, setting an initial preference to disable automatic updates (common for AUR packages where updates are managed by the package manager), and then executing the main binary. All file operations are limited to the user&#39;s `~/.quosparr` directory, use safe practices like atomic linking (`ln -T`), file locking (`flock`), and a restricted umask. No network requests, obfuscated code, dangerous command execution, or exfiltration of data is present. The script does exactly what a launcher should do without introducing supply-chain risks.
</details>
<evidence></evidence>
<summary>Standard launcher with no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed quosparr-launcher. Status: SAFE -- Standard launcher with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard VCS package that clones the upstream Git repository from https://github.com/Licoy/Quosparr and builds the Go application using the upstream build script. There are no instances of suspicious network requests, obfuscated code, or dangerous operations like eval, curl, or wget. The only non-VCS source is 'quosparr-launcher', which has a pinned SHA-256 checksum, ensuring its integrity. The build and prepare steps only execute `go mod download` and the upstream `Scripts/package-v1-platform.sh` script, both of which are standard for Go-based packages and originate from the project's own repository. No evidence of a supply-chain attack or injected malicious code is present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package. It contains only package metadata (name, version, dependencies, sources, checksums) and no executable code. The VCS source uses the package's own upstream GitHub repository with `branch=main` and `sha256sums = SKIP`, which is normal for a -git package. The second source (`quosparr-launcher`) has a pinned sha256 checksum, following best practices. There are no suspicious network requests, obfuscated commands, or unexpected file operations. The file is purely declarative and presents no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,416
  Completion Tokens: 4,343
  Total Tokens: 17,759
  Total Cost: $0.001989
  Execution Time: 37.73 seconds

Final Status: SAFE


No issues found.
