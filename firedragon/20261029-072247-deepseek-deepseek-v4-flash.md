---
package: firedragon
pkgver: 13.11.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18020
completion_tokens: 6325
total_tokens: 24345
cost: 0.002790970
execution_time: 87.39
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T07:22:46Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for makepkg build artifacts; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard browser package metadata; no malicious or suspicious behavior found.
  - file: firedragon.install
    status: safe
    summary: Simple post-upgrade warning message; no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard FireDragon source build; no malicious or exfiltrating behavior found.
---

Materializing firedragon from local mirror...
Materialized firedragon
Analyzing firedragon AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD and executes its global/top-level scope. This PKGBUILD contains only standard variable and array definitions: `pkgname`, `pkgver`, `pkgrel`, `epoch`, `pkgdesc`, `url`, `arch`, `license`, dependencies, `source`, `sha256sums`, `install`, `noextract`, and `options`. There are no top-level command substitutions, network requests, file downloads, `eval`, `curl`, `wget`, base64 decoding, or any other executable statements at global scope.

The `prepare()`, `build()`, and `package()` functions contain the actual build/install logic, including patches, fetching upstream Mozilla sources, running `./mach`, and installing files into `$pkgdir`. However, these functions are not executed by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate and will be reviewed separately. Nothing in the global scope poses an execution risk during this command.
</details>
<evidence>
</evidence>
<summary>
No malicious top-level code; only standard metadata definitions. Safe for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; only standard metadata definitions. Safe for printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, .SRCINFO...
[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used by Arch packaging workflows. It excludes the `src/` and `pkg/` directories created by `makepkg`, as well as tarball artifacts matching `*.tar.*`. These are conventional build and packaging outputs and do not perform any actions, network requests, or system modifications. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for makepkg build artifacts; no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for makepkg build artifacts; no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, firedragon.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes a standard AUR package for the FireDragon browser. It declares upstream sources from the project's GitLab releases page and a Gentoo Mozilla patchset, both with pinned sha256 checksums. No unexpected network behavior, no obfuscated code, no dangerous commands, and no modification of system files outside of normal packaging. The dependencies and build options are consistent with building a Firefox-derived browser. No evidence of malicious or supply-chain injected content was found.
</details>
<evidence>
</evidence>
<summary>
Standard browser package metadata; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, firedragon.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard browser package metadata; no malicious or suspicious behavior found.
LLM auditresponse for firedragon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script hook (`post_upgrade`). It only checks whether the previously installed package version is from the `1:` epoch and, if so, prints a terminal warning to the user recommending that they create a new FireDragon profile via `firedragon -P`.

There are no network operations, file modifications, execution of downloaded content, obfuscated commands, or interactions with data outside the package's own upgrade flow. The script performs no dangerous system changes and is consistent with routine packaging practices.
</details>
<evidence>
</evidence>
<summary>
Simple post-upgrade warning message; no security concerns found.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed firedragon.install. Status: SAFE -- Simple post-upgrade warning message; no security concerns found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a normal source build for the FireDragon browser. Both external sources are fetched over HTTPS with pinned SHA-256 checksums: the FireDragon source tarball from the project's own GitLab releases and a Gentoo Firefox patchset from dev.gentoo.org. The `prepare()` function applies that declared patchset, updates `bindgen/.cargo-checksum.json` to match patched vendored files, generates a mozconfig, and runs upstream `corepack pnpm install --frozen-lockfile` and `pnpm all:build`. These are ordinary Firefox/FireDragon packaging steps, not injected malicious behavior.

The `build()` and `package()` functions similarly follow standard Firefox packaging practice: running `mach build` with the upstream PGO flow, extracting the built product into `$pkgdir`, installing browser metadata/desktop files, and creating a simple launcher wrapper. I found no `eval`, `base64`, obfuscated commands, unexpected downloads, writes outside `$srcdir`/`$pkgdir`, data exfiltration, or execution of code from an unrelated host. The pnpm dependency download and PGO profileserver invocation are upstream build behavior rather than evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard FireDragon source build; no malicious or exfiltrating behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard FireDragon source build; no malicious or exfiltrating behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,020
  Completion Tokens: 6,325
  Total Tokens: 24,345
  Total Cost: $0.002791
  Execution Time: 87.39 seconds

Final Status: SAFE


No issues found.
