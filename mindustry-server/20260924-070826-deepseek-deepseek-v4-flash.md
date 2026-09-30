---
package: mindustry-server
pkgbase: mindustry
pkgver: 160.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13291
completion_tokens: 2511
total_tokens: 15802
cost: 0.001622641678
execution_time: 34.33
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T07:08:25Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for Mindustry package; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
---

mindustry-server is built from mindustry
Materializing mindustry-server from local mirror...
Materialized mindustry-server
Analyzing mindustry-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code in this PKGBUILD consists entirely of variable definitions (strings, arrays) and function definitions. The `for` loop at the end uses `eval` to dynamically define `package_*` functions, but the argument to `eval` is the output of `declare -f` on functions that were already defined earlier in the file. This means the `eval` only creates new function definitions from known, trusted shell code — it does not execute the function bodies, download anything, or exfiltrate data. No command substitutions, backticks, or arithmetic expansions that would run arbitrary commands appear in the top-level scope. All URLs point to the project’s official GitHub repositories (`github.com/Anuken/Mindustry` and `github.com/Anuken/Arc`). There is no code that would initiate network connections, file modifications, or data transmission during the sourcing phase.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a standard configuration file for the `nvchecker` tool, which is used to check for new upstream versions of software. It simply specifies that the source type is `git`, points to the official Mindustry GitHub repository (`https://github.com/Anuken/Mindustry.git`), and sets a version prefix of `v`. There are no executable instructions, network requests beyond the declared upstream URL, obfuscation, or any behavior that deviates from normal packaging practices. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
LLM auditresponse for .SRCINFO:
 <?xml version="1.0" encoding="UTF-8"?>
<security_assessment>
  <decision>SAFE</decision>
  <details>
The .SRCINFO file contains only standard package metadata for the mindustry and mindustry-server packages. It declares two official upstream tarballs from the project's own GitHub repositories (Anuken/Mindustry and Anuken/Arc) with pinned version tags and fixed SHA-256 checksums. There is no evidence of malicious code, no suspicious network behavior, no obfuscation, and no unexpected file operations. The Java and icon runtime dependencies are normal for this type of application. The only minor observation is that `makedepends = java-environment=17` uses an unusual syntax, but it does not constitute a security concern.
  </details>
  <evidence></evidence>
  <summary>Standard .SRCINFO for Mindustry package; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for Mindustry package; no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file found in many AUR git repositories. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and itself). This is a routine maintenance practice and contains no executable code, network requests, or any other malicious behavior. There is no evidence of a supply chain attack or security concern.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging conventions for a split-package from the official Mindustry repository. Sources are fetched from GitHub with pinned tags and valid checksums. The use of `eval` and `declare -f` to dynamically define package functions is a known AUR idiom (used, for example, by chaotic-aur) and is not a security concern here because the function names are derived from the fixed `pkgname` array. No obfuscated code, unexpected network requests, or exfiltration attempts are present. The build and install steps are typical and transparent.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,291
  Completion Tokens: 2,511
  Total Tokens: 15,802
  Total Cost: $0.001623
  Execution Time: 34.33 seconds

Final Status: SAFE


No issues found.
