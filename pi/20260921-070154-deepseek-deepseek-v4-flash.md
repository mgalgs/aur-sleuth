---
package: pi
pkgver: 0.86.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10737
completion_tokens: 1919
total_tokens: 12656
cost: 0.001291432450
execution_time: 62.34
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T07:01:54Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard ISC license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with pinned sources, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned, checksummed upstream sources; no malicious behavior found.
---

Materializing pi from local mirror...
Materialized pi
Analyzing pi AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, pkgrel, etc.) and function definitions (prepare, build, package). No code is executed in the global/top-level scope beyond these assignments and function declarations. There are no command substitutions, no external downloads, no scripts executed at the top level. The content is consistent with a standard AUR PKGBUILD. Therefore, sourcing it for `makepkg --printsrcinfo` poses no security risk.
</details>
<evidence></evidence>
<summary>No top-level execution; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style software license commonly used in Arch Linux packages. It contains no executable code, no network operations, no file manipulation, and no obfuscated content. It is purely a legal notice granting permission to use the software. No security concerns.
</details>
<evidence></evidence>
<summary>Standard ISC license file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Node.js application. It fetches source code from the official GitHub repository and an npm registry tarball, both with pinned sha256 checksums. The build steps run `npm ci`, `npm build:offline`, and `npm prune` with standard flags. The install step copies files into designated directories and creates a symlink to the CLI entry point. There are no suspicious network requests, obfuscated code, or unusual file operations. All commands are typical for building and packaging a Node.js project from its upstream sources.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD with pinned sources, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with pinned sources, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is a standard, well-formed packaging metadata file for the `pi` AI coding agent. Both sources are pinned to a specific upstream release: the project's own GitHub release tarball (`v0.86.1`) and the package's own npm artifact (`@earendil-works/pi-ai` from registry.npmjs.org). All URLs point to legitimate, expected upstream distribution hosts (GitHub and the official npm registry). No URLs point to unexpected or unrelated hosts.

Both artifacts have concrete sha256 checksums (not SKIP), which is good supply-chain hygiene. There are no executable commands in this file at all — no eval, no base64, no curl/wget, no shell snippets. The dependencies (nodejs, npm, tmux, fd, ripgrep) are normal for a terminal-based coding agent. The `&gt;=` is simply the HTML-escaped `>=` in the `nodejs&gt;=22` dependency, which is a standard formatting artifact, not malicious encoding.

The only minor observation is that the npm tarball could contain pre-built or bundled upstream code, but this is the project's own distribution channel and the artifact is checksum-pinned. There is no evidence of injected malicious code, data exfiltration, backdoors, or anything deviating from standard AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata with pinned, checksummed upstream sources; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned, checksummed upstream sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,737
  Completion Tokens: 1,919
  Total Tokens: 12,656
  Total Cost: $0.001291
  Execution Time: 62.34 seconds

Final Status: SAFE


No issues found.
