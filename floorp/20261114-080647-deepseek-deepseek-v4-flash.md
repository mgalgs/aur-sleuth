---
package: floorp
pkgver: 12.21.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 27846
completion_tokens: 5236
total_tokens: 33082
cost: 0.00344862
execution_time: 60.41
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-14T08:06:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: "Safe: nvchecker config for official GitHub releases."
  - file: floorp.desktop
    status: safe
    summary: Standard .desktop file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Floorp browser.  No malicious code found.
---

Materializing floorp from local mirror...
Materialized floorp
Analyzing floorp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments, array definitions (source, depends, etc.), conditional blocks that set additional dependencies, and function definitions for `_deno()` and `_calc_parallel_jobs()` — none of which are invoked during the sourcing step for `makepkg --printsrcinfo`. No dangerous commands such as `curl`, `wget`, `eval`, or base64 decoding appear in the global scope. There is no top-level code that would download or execute untrusted content or exfiltrate data. All potentially risky operations (git apply, deno, mach commands) are confined to the `prepare()`, `build()`, and `package()` functions, which are not executed by `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No top-level executions; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executions; safe to source.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: floorp-runtime-0ac2557.tar.gz::https://github.com/Floorp-Projects/Floorp-Runtime/archive/0ac255739cdd64e100cd6913329247421b0ec2ea.tar.gz
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .nvchecker.toml...
[0/5] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard package metadata file for the floorp browser. All source URLs point to the official Floorp Projects GitHub organization (Floorp, Floorp-Runtime, Floorp-core). The SKIP checksums on two sources are normal for VCS/runtime archives and are not by themselves suspicious. No malicious commands, obfuscated code, network requests to unexpected hosts, or data exfiltration are present. This file contains only declarative packaging information with no executable logic.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, PKGBUILD...
[1/5] Reviewing .nvchecker.toml, .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR package repositories. It ignores all files except the PKGBUILD, .SRCINFO, and itself, which is normal practice for maintaining an AUR package. There is no code execution, network requests, obfuscation, or any other suspicious behavior. The file is entirely benign.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .nvchecker.toml, .gitignore, PKGBUILD, floorp.desktop...
[2/5] Reviewing .nvchecker.toml, PKGBUILD, floorp.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for `nvchecker`, a tool used to check for new upstream releases. It defines how to fetch version information for the Floorp browser: by checking the latest release on the official GitHub repository (`https://github.com/Floorp-Projects/Floorp.git`). There is no code execution, no suspicious network destinations, no obfuscation, and no file system manipulation. The content is purely declarative and follows normal packaging practices for tracking upstream versions.
</details>
<evidence>
</evidence>
<summary>Safe: nvchecker config for official GitHub releases.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, floorp.desktop...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe: nvchecker config for official GitHub releases.
LLM auditresponse for floorp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org `.desktop` entry for the Floorp web browser. It defines the application name, generic names, comments, MIME types, categories, and three desktop actions (new-window, new-private-window, profile-manager-window). All `Exec` lines reference the `floorp` binary with standard flags (`%u`, `--new-window`, `--private-window`, `--ProfileManager`). There are no network requests, no downloads, no obfuscated or encoded commands, no unexpected file operations, and no backdoor or exfiltration mechanisms. The only variable placeholder is `@WMCLASS@` in `StartupWMClass`, which is a normal packaging substitution. The file is entirely benign and follows standard packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no malicious content.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed floorp.desktop. Status: SAFE -- Standard .desktop file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a large Firefox-based application. It declares its upstream sources explicitly from the official Floorp-Projects GitHub repositories, including a pinned commit for the runtime, a release tarball for the components, and a VCS source for the core APIs and branding. The build process uses the standard Mozilla build system (`mach`) and the upstream Floorp build tooling (Deno/Feles). All code paths (prepare, build, package) are scoped entirely to the source and package directories.

The `SKIP` checksums for the runtime and core VCS sources are standard practices for sources fetched from Git, as noted in the instructions. The PGO profiling process uses `xvfb-run` (or `wlheadless-run`+`weston`), which is the standard, expected way to perform profile-guided optimization for Mozilla-based browsers in a headless environment. Copying API key files from the declared Floorp-core VCS source is also a standard step required to enable upstream features (safe browsing, location services) during the build and is transparently declared. The `deno` commands execute scripts that are part of the upstream project's build system, not injected code.

No evidence of obfuscated commands, data exfiltration, downloading of code from unexpected hosts, or tampering with system files outside the application's scope was found. The file is transparent and well-structured.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for Floorp browser.  No malicious code found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Floorp browser.  No malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,846
  Completion Tokens: 5,236
  Total Tokens: 33,082
  Total Cost: $0.003449
  Execution Time: 60.41 seconds

Final Status: SAFE


No issues found.
