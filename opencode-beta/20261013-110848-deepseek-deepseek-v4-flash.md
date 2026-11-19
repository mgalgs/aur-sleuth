---
package: opencode-beta
pkgver: 2.0.28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12525
completion_tokens: 6994
total_tokens: 19519
cost: 0.0095222075
execution_time: 52.62
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T11:08:47Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license text only; no security issues found.
  - file: opencode2
    status: safe
    summary: Simple wrapper script that executes sibling opencode binary; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Pinned checksums and installs to pkgdir only; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file; official npm sources with pinned checksums; no malicious behavior evident.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD top-level scope only. This PKGBUILD contains only variable and array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and a function definition for `package()`. There are no top-level command substitutions, no `eval`, no `curl`/`wget` calls, no network requests, and no file-modifying operations that would execute during sourcing. The `package()` function is not executed by `makepkg --printsrcinfo`, and in any case it only installs the package&apos;s own files into `$pkgdir`.

The source URLs point to the npm registry for the package&apos;s declared upstream artifacts, which is consistent with the package purpose; checksums are present. No supply-chain red flags exist in the top-level scope. This gate is safe.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope only defines variables and functions; no dangerous execution during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope only defines variables and functions; no dangerous execution during sourcing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the standard MIT License text. It includes no executable code, no network operations, no file manipulation, and no obfuscated content. There are no security concerns.
</details>
<evidence></evidence>
<summary>
Standard MIT license text only; no security issues found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text only; no security issues found.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal shell wrapper that changes into the directory containing the script and executes the sibling `opencode` binary/script, passing along all command-line arguments. There is no network activity, no obfuscation, no encoded payloads, no file exfiltration, and no execution of code from an unexpected remote source. The behavior is standard packaging practice for splitting a binary entry point from the real application executable. Nothing in this file deviates from ordinary, expected functionality.
</details>
<evidence>
</evidence>
<summary>Simple wrapper script that executes sibling opencode binary; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed opencode2. Status: SAFE -- Simple wrapper script that executes sibling opencode binary; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary package: it downloads two npm tarballs from `registry.npmjs.org` with pinned SHA-256 checksums, and installs the extracted `opencode` binary, plus local `opencode2` and `LICENSE` files, into `$pkgdir`. The `package()` function contains only `install` commands writing inside the package directory; there are no network fetches at build/install time, no shell eval/obfuscation, no post-install hooks, and no system modifications beyond placing files under `/usr/bin` and `/usr/share/licenses`.

The `opencode2` entry is a local file hosted in the AUR repository rather than built from source, so a user is trusting the maintainer for that file's contents; the checksum is pinned, which at least prevents silent modification between the uploaded source and build. This is a supply-chain trust consideration worth noting, but it is not evidence of malicious behavior. All remote sources are the project's own npm packages with fixed checksums, so I find no injected malicious code.
</details>
<evidence></evidence>
<summary>Pinned checksums and installs to pkgdir only; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned checksums and installs to pkgdir only; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` contains only package metadata and source definitions. The remote sources point to the official npm registry (`registry.npmjs.org`) for the `@opencode/cli` platform packages, and every source, including the arch-specific tarballs, has a pinned SHA-256 checksum. There are no `SKIP` checksums, no encoded or obfuscated commands, and no `curl|bash`, `eval`, or similar download-and-execute behavior in this file.

The only non-remote entry is `source = opencode2`, which is a local file expected to be provided alongside the PKGBUILD in the AUR repository. Its contents are not visible in this `.SRCINFO`, so it cannot be audited from this file alone; however, nothing in the metadata indicates that it is fetched from an untrusted host or used maliciously. The `provides` and `conflicts` entries for `opencode2` are consistent with packaging a renamed beta binary and are not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Metadata-only file; official npm sources with pinned checksums; no malicious behavior evident.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file; official npm sources with pinned checksums; no malicious behavior evident.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,525
  Completion Tokens: 6,994
  Total Tokens: 19,519
  Total Cost: $0.009522
  Execution Time: 52.62 seconds

Final Status: SAFE


No issues found.
