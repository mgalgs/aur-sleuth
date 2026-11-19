---
package: heroic-games-launcher-bun
pkgver: 2.22.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11313
completion_tokens: 8055
total_tokens: 19368
cost: 0.002495493
execution_time: 149.66
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T23:04:25Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream source and checksums; no malicious behavior found.
  - file: heroic.sh
    status: safe
    summary: Standard Electron launcher script; no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior detected.
---

Materializing heroic-games-launcher-bun from local mirror...
Materialized heroic-games-launcher-bun
Analyzing heroic-games-launcher-bun AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope only contains variable assignments, array definitions, and function definitions. No command substitutions (`$()`, `` ` ``), `eval`, or other executable constructs appear outside of function bodies. Running `makepkg --printsrcinfo` sources these definitions without executing `prepare()`, `build()`, or `package()`, so no malicious code runs during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, heroic.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It describes the `heroic-games-launcher-bun` package, declares its dependencies, and references the upstream Heroic Games Launcher repository at a pinned tag (`v2.22.4`) from the project's official GitHub location. Both source entries have plain SHA-256 checksums listed, and no checksum is skipped.

The file contains no executable code, no network requests beyond the package's own declared upstream source, no suspicious file operations, and no obfuscated or encoded commands. The build/install behavior is not present in this file itself. It is consistent with ordinary packaging practice and shows no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream source and checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, heroic.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream source and checksums; no malicious behavior found.
LLM auditresponse for heroic.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Electron application launcher script. It executes the Electron binary (represented by the `@ELECTRON@` placeholder, which is replaced during packaging) with the application's main file `/usr/lib/heroic/app.asar` and passes through any command‑line arguments. There are no network requests, code downloads, obfuscated commands, or system modifications outside the expected launch behavior. The `&quot;` entities are almost certainly an artifact of how the file is presented and would be literal double quotes in the actual packaged file; even if literal, they merely cause incorrect argument expansion (a bug, not a security concern). No evidence of malicious or supply‑chain attack intent was found.
</details>
<evidence>
</evidence>
<summary>Standard Electron launcher script; no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed heroic.sh. Status: SAFE -- Standard Electron launcher script; no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for heroic-games-launcher-bun follows standard Arch packaging practices. The upstream source is fetched from the official GitHub repository via a tagged commit, with checksums provided to verify both the source archive and the included heroic.sh script. The prepare() step adapts the project to use Bun instead of PNPM (modifying package.json and the lock file), which is the stated purpose of the package. The build() step uses `bun install` with frozen lock file and `--ignore-scripts`, then runs the upstream build scripts. The package() step installs the application files, icons, and desktop file. No obfuscated code, unexpected network requests, dangerous commands (eval, base64, curl|bash), or exfiltration of system data is present. All operations are confined to the build directory and package destination. The maintainer has included checksums and used frozen lockfiles, improving reproducibility. There is no evidence of a supply‑chain attack injected by this PKGBUILD.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,313
  Completion Tokens: 8,055
  Total Tokens: 19,368
  Total Cost: $0.002495
  Execution Time: 149.66 seconds

Final Status: SAFE


No issues found.
