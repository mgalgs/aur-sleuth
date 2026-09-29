---
package: opencode-beta
pkgver: 2.0.19
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12518
completion_tokens: 4142
total_tokens: 16660
cost: 0.00291228
execution_time: 59.09
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T07:08:02Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license text; no executable or malicious content present.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned downloads, no malicious code found.
  - file: .SRCINFO
    status: safe
    summary: Metadata file only, no malicious behavior found.
  - file: opencode2
    status: safe
    summary: Standard wrapper script executing sibling binary; no malicious behavior found.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&apos;s global/top-level scope contains only static variable assignments: metadata fields, source URLs, and checksum arrays. No command substitutions, `eval`, `curl`, `wget`, or any executable statements run when the file is sourced by `makepkg --printsrcinfo`. The `package()` function is defined but not invoked during `--printsrcinfo`, so its contents are out of scope for this gate. The package sources come from the npm registry with pinned checksums, and nothing in the top-level scope downloads or executes untrusted content.
</details>
<evidence></evidence>
<summary>Top-level scope is static; no dangerous code executes during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static; no dangerous code executes during --printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the standard MIT License text for the opencode project. There is no executable code, no network requests, no file operations, no obfuscation, and no system modifications of any kind. It is a plain legal/attribution document and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard MIT license text; no executable or malicious content present.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text; no executable or malicious content present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices. It defines the package metadata and dependencies, downloads architecture-specific binaries from the official npm registry with pinned SHA-256 checksums, and installs them along with a license file. There are no obfuscated commands, no unexpected network requests, no execution of download-and-run scripts, and no system modifications beyond installing files to the package directory. The source URLs point to the package's own upstream on npmjs.org, which is expected. No evidence of supply chain compromise or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned downloads, no malicious code found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, opencode2...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned downloads, no malicious code found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It contains no executable code, no network operations, no obfuscation, and no system modifications. It merely declares package name, version, dependencies, source files, and checksums. The source URLs point to the official npm registry for the upstream project's binary packages (&#64;opencode/cli-linux-x64-baseline and &#64;opencode/cli-linux-arm64) with pinned SHA‑256 hashes. The local source entry "opencode2" is a file included in the AUR source tree; while its origin cannot be assessed from this file alone, its presence in a metadata file does not constitute malicious behavior. No commands, scripts, or dynamic content are present, so there is no evidence of a supply‑chain attack.
</details>
<evidence></evidence>
<summary>Metadata file only, no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing opencode2...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file only, no malicious behavior found.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard POSIX shell wrapper script. It resolves its own directory via `$(dirname "$0")` and uses `exec` to replace the shell process with the sibling `opencode` binary, forwarding all arguments with a properly quoted `"$@"`.

There is no malicious behavior: no network activity, no obfuscation, no encoded commands, no dangerous file operations, and no unintended command execution. The `exec` and `dirname` usage is the conventional pattern for launching a program relative to the script's location, and all expansions are correctly quoted, preventing argument or path injection. The `2` in the filename simply suggests a secondary or alternate launcher; the content itself is benign.
</details>
<evidence>
</evidence>
<summary>
Standard wrapper script executing sibling binary; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed opencode2. Status: SAFE -- Standard wrapper script executing sibling binary; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,518
  Completion Tokens: 4,142
  Total Tokens: 16,660
  Total Cost: $0.002912
  Execution Time: 59.09 seconds

Final Status: SAFE


No issues found.
