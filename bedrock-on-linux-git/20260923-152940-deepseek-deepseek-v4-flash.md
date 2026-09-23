---
package: bedrock-on-linux-git
pkgver: v2.2.7.r2.gf6a7618
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10193
completion_tokens: 1140
total_tokens: 11333
cost: 0.00102852358
execution_time: 34.46
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-23T15:29:40Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD, no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata; no malicious content.
---

Materializing bedrock-on-linux-git from local mirror...
Materialized bedrock-on-linux-git
Analyzing bedrock-on-linux-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope contains only standard variable assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `optdepends`, `provides`, `conflicts`, `source`, and `sha256sums`. There are no top-level command substitutions, no network fetches, no `eval`, and no code that executes during sourcing.

The `pkgver()` and `package()` functions contain the only commands, but `makepkg --printsrcinfo` does not execute those functions; they will be audited separately in the full review. The `source` array uses the project's own upstream git URL and `sha256sums` is `SKIP`, which is normal for a `-git` package and irrelevant to this narrow gate because no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
No malicious top-level code; printsrcinfo safely parses standard PKGBUILD variables.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; printsrcinfo safely parses standard PKGBUILD variables.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS package for the AUR. It clones the upstream repository from `https://github.com/Wyze3306/BedrockOnLinux` and installs its files into the package directory. The `sha256sums` is set to `SKIP`, which is required for git-based sources and not a security issue. The `pkgver()` function uses `git describe` to generate a version string from tags, which is normal for VCS packages. The `package()` function performs routine installation steps (copying files, creating symlinks) without any dangerous commands like `curl`, `wget`, `eval`, or encoded payloads. There is no exfiltration, backdoor, or execution of untrusted content. All operations are confined to the package's own build directory and target installation paths. No evidence of supply-chain attack or malicious intent is present.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD, no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file that lists common patterns (build directories, package artifacts) to be ignored by version control. It contains no executable code, no network requests, no obfuscation, and no system modifications. This is a routine configuration file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for an AUR VCS package. It declares the package source (a git repository from the stated upstream GitHub), dependencies, and metadata. The `sha256sums = SKIP` is normal and required for VCS sources. No code is present in this file—only packaging metadata. There are no signs of malicious behavior such as network requests, obfuscation, or dangerous commands.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO metadata; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,193
  Completion Tokens: 1,140
  Total Tokens: 11,333
  Total Cost: $0.001029
  Execution Time: 34.46 seconds

Final Status: SAFE


No issues found.
