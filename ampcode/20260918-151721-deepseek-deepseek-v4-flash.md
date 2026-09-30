---
package: ampcode
pkgver: 0.0.1789732847_gb0ffc1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9929
completion_tokens: 5454
total_tokens: 15383
cost: 0.00103851608
execution_time: 151.48
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T15:17:20Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned-checksum binary PKGBUILD from the official upstream domain; no malicious behavior.
---

Materializing ampcode from local mirror...
Materialized ampcode
Analyzing ampcode AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD — which is exactly what `makepkg --printsrcinfo` does — only executes global-scope variable assignments and function definitions. All of these are plain string literals: `pkgname`, `pkgver`, `arch`, the `source_*` arrays with fixed URLs, and the checksum literals. No command substitution, backtick execution, or external command invocation (`curl`, `wget`, `eval`, `base64`, etc.) occurs at global scope.

The `latestver()` function does contain a `curl` invocation, but it is merely *defined* at global scope and never *called* during sourcing. Nothing invokes it during `--printsrcinfo`, so it cannot execute in this step. Likewise, `package()` only runs in the packaging phase, which is not part of this command. The source URLs point to the project's own upstream host (`static.ampcode.com`), and the pinned checksum literals have no effect on this gate because no sources are downloaded or verified when merely printing srcinfo.

Hygiene notes that are NOT blocking for this narrow gate: the version is a hard-coded literal rather than generated at build time, and the convenience `latestver()` helper would fetch from the upstream host if ever called. Neither of these executes during `makepkg --printsrcinfo`. No malicious or data-exfiltrating behavior executes at parse/source time.
</details>
<evidence>
</evidence>
<summary>Sourcing only defines variables and functions; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing only defines variables and functions; no code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file follows a common pattern for AUR git repositories: it ignores all files by default and then whitelists specific files needed for the package (e.g., PKGBUILD, .SRCINFO, install scripts, patches, icons, etc.). There is no executable code, no network access, no data exfiltration, and no suspicious operations. It is a standard configuration file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `ampcode`. It defines package metadata, dependencies, and sources for two architectures. The sources are fetched from the official upstream domain (`static.ampcode.com`) with SHA-256 checksums provided for verification. No executable code, obfuscated commands, or suspicious network requests are present. The file conforms to normal AUR packaging practices and does not contain any signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD installs Amp CLI, a proprietary prebuilt binary downloaded from the project&apos;s own official static domain (`static.ampcode.com`) over HTTPS. Checksums are pinned per architecture with SHA-256, and the `package()` function only installs the correctly matched binary into `$pkgdir/usr/bin/amp`. No obfuscation, no `eval`, no base64, no shell pipelines that fetch-and-execute, and no writes outside the package directory are present.

The `latestver()` helper fetches a version file to assist the maintainer in updating `pkgver`; it is not invoked during build or install, and it does not execute any remote content. The optional dependency note that the CLI may download ripgrep at runtime if missing is upstream application behavior, not an injected supply-chain attack in this packaging file. The package uses standard AUR practices for a prebuilt binary with pinned checksums, so the decision is SAFE.
</details>
<evidence></evidence>
<summary>Standard pinned-checksum binary PKGBUILD from the official upstream domain; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned-checksum binary PKGBUILD from the official upstream domain; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,929
  Completion Tokens: 5,454
  Total Tokens: 15,383
  Total Cost: $0.001039
  Execution Time: 151.48 seconds

Final Status: SAFE


No issues found.
