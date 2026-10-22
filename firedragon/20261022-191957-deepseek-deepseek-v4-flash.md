---
package: firedragon
pkgver: 13.10.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17744
completion_tokens: 2551
total_tokens: 20295
cost: 0.002078986
execution_time: 29.12
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T19:19:57Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with pinned checksums; no malicious behavior detected.
  - file: firedragon.install
    status: safe
    summary: Routine install scriptlet; prints upgrade warning only. No security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard Firefox-derived PKGBUILD with pinned sources and normal build/package steps. No malicious behavior found.
---

Materializing firedragon from local mirror...
Materialized firedragon
Analyzing firedragon AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, dependency arrays, source URLs, and checksums at the global scope. There are no command substitutions, eval invocations, network requests, or other executable statements that would run when the file is sourced by `makepkg --printsrcinfo`. The functions `prepare()`, `build()`, and `package()` contain build logic but are not executed during this parsing step. No evidence of malicious code that would execute during sourcing.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR packaging workflows. It excludes the local `src/` and `pkg/` build directories and generated tarballs from version control. There is no executable code, no network activity, no file modification, and no behavior outside normal packaging hygiene. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, firedragon.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is package metadata for the FireDragon browser. It declares standard makedepends, depends, optdepends, checksums, and source URLs pointing to the project's own GitLab releases and a Gentoo Mozilla patchset mirror. Both sources have pinned SHA-256 checksums, so the downloads are integrity-checked.

There is no embedded code, no install or build commands, no network exfiltration, no obfuscation, and no unexpected file operations. The content is consistent with normal AUR packaging practice and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>
Standard package metadata with pinned checksums; no malicious behavior detected.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, firedragon.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with pinned checksums; no malicious behavior detected.
LLM auditresponse for firedragon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install scriptlet. It defines a `post_upgrade()` function that prints a warning message when upgrading from a version starting with `1:`. This is routine packaging behavior and contains no network access, file modification, code execution, obfuscation, or other malicious activity. The warning simply advises users how to create and switch a FireDragon profile, which is consistent with the package's purpose.
</details>
<evidence>
</evidence>
<summary>
Routine install scriptlet; prints upgrade warning only. No security concerns.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed firedragon.install. Status: SAFE -- Routine install scriptlet; prints upgrade warning only. No security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practice for a Firefox-derived browser. The source tarballs are downloaded from the project's own GitLab release URL and from the upstream Gentoo Firefox patchset, both with pinned SHA-256 checksums. The `prepare()` function extracts and applies those upstream patches, runs `pnpm` on the browser source, and writes a mozconfig. The `build()` function runs Firefox's normal `./mach` build and PGO profiling flow. The `package()` function installs built files into `$pkgdir`, creates desktop metadata, and writes a benign shell wrapper that execs the installed binary.

No suspicious network destinations, encoded payloads, obfuscated commands, credential access, or unrelated system modifications were found. The `sed` edits to `third_party/rust/bindgen/.cargo-checksum.json` are consistent with updating a vendored crate checksum after applying upstream patches, not with hiding malicious content. The only file operations outside `$pkgdir` are standard build artifacts and the package's own source tree. Overall, the file shows no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Firefox-derived PKGBUILD with pinned sources and normal build/package steps. No malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Firefox-derived PKGBUILD with pinned sources and normal build/package steps. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,744
  Completion Tokens: 2,551
  Total Tokens: 20,295
  Total Cost: $0.002079
  Execution Time: 29.12 seconds

Final Status: SAFE


No issues found.
