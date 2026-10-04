---
package: evox
pkgver: 1.1.0.beta.21
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9818
completion_tokens: 6703
total_tokens: 16521
cost: 0.00325136
execution_time: 55.47
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-30T11:25:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file only; no executable or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard binary package with pinned checksums and local provisioning.
---

Materializing evox from local mirror...
Materialized evox
Analyzing evox AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level global scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, source arrays, sha256sums) and a single function declaration for `package()`. No command substitutions, backtick expressions, `eval` calls, or network commands (curl, wget, etc.) are present in the global scope that would execute during the sourcing phase of `makepkg --printsrcinfo`. The body of the `package()` function, including the heredoc launcher script, is inert during this specific command as it is only defined, not executed. Therefore, parsing this PKGBUILD with `makepkg --printsrcinfo` presents no security risk.
</details>
<evidence>
</evidence>
<summary>Top-level scope is clean and safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is clean and safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It contains only declarative fields (package name, version, description, architecture, dependencies, source URLs, and SHA-256 checksums). No executable code, network requests, file operations, or obfuscated content is present. The source URLs point to the project&#39;s official domain (`res.evomap.ai`) over HTTPS, and the checksums are provided (not skipped). There is no evidence of malicious or anomalous behavior.
</details>
<evidence></evidence>
<summary>Metadata file only; no executable or suspicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file only; no executable or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages a proprietary prebuilt binary from the project's own upstream download host (`res.evomap.ai`) over HTTPS, with pinned SHA-256 checksums for both architectures. There are no unexpected network operations, no `curl`/`wget` piping to a shell, no `eval`, no base64/hex obfuscation, and no modification of system files outside the package's own install paths.

The embedded `/usr/bin/evox` launcher is a shell script that provisions the per-user agent directory `~/.evox/agent` (or a directory selected via `EVOX_AGENT_DIR`/`EVOX_CODING_AGENT_DIR`). It copies the packaged extensions and entitlement into that directory and then `exec`s the installed binary. Removing stale `libevox_ext_*.so` files from that same agent directory is consistent with the launcher's stated provisioning purpose and only affects the invoking user's EvoX data, not unrelated system state.

The source is an unpinned upstream binary bundle, but that is normal for this type of package, and the checksums do pin this exact release. No evidence of injected malicious code or supply-chain attack was found.
</details>
<evidence></evidence>
<summary>
No malicious behavior; standard binary package with pinned checksums and local provisioning.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard binary package with pinned checksums and local provisioning.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,818
  Completion Tokens: 6,703
  Total Tokens: 16,521
  Total Cost: $0.003251
  Execution Time: 55.47 seconds

Final Status: SAFE


No issues found.
