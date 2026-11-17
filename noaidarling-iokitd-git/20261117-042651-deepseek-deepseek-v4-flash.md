---
package: noaidarling-iokitd-git
pkgbase: noaidarling-git
pkgver: r4405.ff77380e7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 49866
completion_tokens: 3076
total_tokens: 52942
cost: 0.00504162
execution_time: 125.56
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T04:26:51Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, all sources from own upstream, no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious content detected.
---

noaidarling-iokitd-git is built from noaidarling-git
Materializing noaidarling-iokitd-git from local mirror...
Cloning https://aur.archlinux.org/noaidarling-git.git...
Cloned noaidarling-iokitd-git
Analyzing noaidarling-iokitd-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, array definitions, and function definitions in its global/top-level scope. There is no command substitution, no invocation of `curl`, `wget`, `eval`, `base64`, or any other potentially dangerous command that would execute during sourcing. The conditional block setting build tool variables based on an environment variable is benign. All potentially harmful code resides inside function bodies (`pkgver()`, `prepare()`, `build()`, `package_*()`) which are not executed by `makepkg --printsrcinfo`. Therefore, running this command is safe.</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR Git repository. It ignores all files (`*`) and then un-ignores specific packaging files: `.gitignore`, `.SRCINFO`, `PKGBUILD`, `noaidarling-git.install`, and `dkms.conf`. There is no executable code, no network requests, no obfuscation, and no system modifications. It is a purely declarative Git configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file for the `noaidarling-iokitd-git` package (and its many subpackages). It declares sources exclusively from the `github.com/NoAiDarling` organization, which is the package's own upstream. All checksums are set to `SKIP`, which is normal for VCS/git sources. There is no obfuscated code, no unexpected network destinations, no commands that download and execute arbitrary payloads, and no exfiltration of system data. The file is purely declarative metadata; the actual build logic lives in the PKGBUILD, which is not included here. Nothing in this `.SRCINFO` indicates malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, all sources from own upstream, no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, all sources from own upstream, no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is part of the **noaidarling-iokitd-git** package, a fork of the Darling project for running macOS software on Linux. All source repositories are fetched from the official NoAiDarling GitHub organization over HTTPS. The `prepare()` function overrides submodule URLs to local paths (already cloned by makepkg) and runs `git submodule update` with local file protocol, which avoids fetching from the network. The only network operation beyond initial cloning is `git lfs pull` in the swift submodule, which is an expected part of the upstream workflow for repositories using Git LFS. There is no obfuscated code, no use of `eval`, `curl`, `wget`, or base64, and no file writes outside `$pkgdir` or the build tree. The packaging follows standard AUR practices for a large VCS-based project with many submodules. No evidence of injected malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious content detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,866
  Completion Tokens: 3,076
  Total Tokens: 52,942
  Total Cost: $0.005042
  Execution Time: 125.56 seconds

Final Status: SAFE


No issues found.
