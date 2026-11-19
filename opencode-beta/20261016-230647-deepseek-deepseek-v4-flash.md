---
package: opencode-beta
pkgver: 2.0.32
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12447
completion_tokens: 5713
total_tokens: 18160
cost: 0.002172443
execution_time: 94.91
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T23:06:47Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain MIT license text; no security concerns found.
  - file: opencode2
    status: safe
    summary: Standard wrapper script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; pinned checksums, official npm sources, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Declarative package metadata with pinned sources; no malicious behavior identified.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments (pkgname, pkgver, source, checksums, etc.) and a `package()` function definition. Running `makepkg --printsrcinfo` sources the file, which executes only the global scope. There are no top-level command substitutions, no downloads, no network requests, no eval/base64/obfuscated code, and no execution of any function bodies during this step. Content inside `package()` is out of scope for this narrow gate and will be reviewed in the full audit.

The source URLs point to the official npm registry for the package's own declared upstream artifacts, and checksums are pinned rather than SKIPped. This is consistent with normal packaging practice. No evidence of malicious behavior that could execute during `makepkg --printsrcinfo` was found.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is benign; no code executes during printsrcinfo beyond variable assignments.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is benign; no code executes during printsrcinfo beyond variable assignments.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the standard MIT License text. There is no executable code, no network operations, no file system manipulation, no obfuscated content, and no packaging logic of any kind. It is a plain, benign license file commonly found in AUR packages and upstream repositories.
</details>
<evidence></evidence>
<summary>Plain MIT license text; no security concerns found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Plain MIT license text; no security concerns found.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple wrapper script that executes the `opencode` binary in the same directory. It contains no network operations, obfuscation, file exfiltration, backdoors, or any other malicious behavior. The pattern is standard for launcher scripts in AUR packages.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious content.</summary>
</security_assessment>

LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package. It fetches the upstream `@opencode/cli-linux-*` packages from the official npm registry over HTTPS and pins both the arch-specific tarballs and the secondary `opencode2` file with sha256 checksums. No checksum is set to SKIP, and no source is fetched from an unrelated host.

The `package()` function only installs the prebuilt CLI binary, a secondary `opencode2` binary/script, and the upstream license into `/usr/bin` and `/usr/share/licenses`. There are no suspicious shell constructs, no curl/wget execution, no base64/hex obfuscation, no use of `eval`, no writes outside `$pkgdir`, and no post-install hooks or service modifications. The presence of a separate `opencode2` file is unusual without visibility into its contents, but it is checksum-pinned in the PKGBUILD and appears intended to support the package's declared `provides`/`conflicts`; by itself it is not evidence of malice.

No genuinely malicious or supply-chain indicators were found in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package; pinned checksums, official npm sources, no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed opencode2. Status: SAFE -- Standard wrapper script, no malicious content.
[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; pinned checksums, official npm sources, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
`.SRCINFO` is purely declarative metadata: no executable commands, install hooks, or build logic are present. The package pins version 2.0.32 and downloads arch-specific prebuilt tarballs from `registry.npmjs.org` under the `@opencode` scope with fixed sha256 checksums; that is a normal distribution channel for the upstream project, and the checksums match the versioned URLs. The base sources are `LICENSE` and `opencode2`, both local AUR files with checksums; the latter cannot be audited from `.SRCINFO` alone and should be reviewed alongside the PKGBUILD, but a local source file is not by itself evidence of a supply-chain attack.

There are no red flags such as obfuscated code, `eval`/`curl|bash`, data exfiltration, or unrelated network endpoints. The package declares reasonable runtime dependencies (`glibc`, `gcc-libs`, `ripgrep`) and conflicts/provides for other `opencode` packages. This is consistent with ordinary AUR packaging practice.
</details>
<evidence></evidence>
<summary>Declarative package metadata with pinned sources; no malicious behavior identified.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative package metadata with pinned sources; no malicious behavior identified.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,447
  Completion Tokens: 5,713
  Total Tokens: 18,160
  Total Cost: $0.002172
  Execution Time: 94.91 seconds

Final Status: SAFE


No issues found.
