---
package: claude-mem
pkgver: 13.28.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11887
completion_tokens: 2540
total_tokens: 14427
cost: 0.00237538
execution_time: 34.08
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T07:31:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata with pinned npm source and checksums; no malicious behavior found.
  - file: LICENSE
    status: safe
    summary: Standard MIT license, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: claude-mem-worker.service
    status: safe
    summary: Standard systemd service; no malicious or suspicious content.
---

Materializing claude-mem from local mirror...
Materialized claude-mem
Analyzing claude-mem AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` on this PKGBUILD is safe. The top-level scope contains only standard variable and array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) with no command substitutions, no external downloads, and no executable statements. The `package()` function, which performs `npm install` and file installation, is not executed during `--printsrcinfo` and is out of scope for this gate. No malicious top-level behavior exists.
</details>
<evidence>
</evidence>
<summary>
No top-level executable code; printsrcinfo parsing is safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; printsrcinfo parsing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file for the `claude-mem` package. It declares a package sourced directly from the official npm registry (`https://registry.npmjs.org/claude-mem/-/claude-mem-13.28.0.tgz`), includes a separate `claude-mem-worker.service` source, and provides SHA-256 checksums for both sources. The build dependencies (`npm`, `bun`) and runtime dependency (`nodejs` >= 20.12.0) are consistent with a Node.js application package.

No suspicious network endpoints, obfuscated commands, file operations, or system modifications are present. The `.SRCINFO` is purely declarative packaging metadata and contains no executable code. The pinned version and checksums are good hygiene. Nothing here indicates malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata with pinned npm source and checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/4] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata with pinned npm source and checksums; no malicious behavior found.
[1/4] Reviewing LICENSE, PKGBUILD, claude-mem-worker.service...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no code, no commands, no network operations, no system modifications, and no obfuscated content. It is purely a legal declaration of licensing terms and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard MIT license, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-mem-worker.service...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for an npm-based package. The source is fetched from the official npm registry with a pinned SHA256 checksum. The `package()` function performs a normal npm global install, cleans up build‑dir references, sets correct ownership, and installs a systemd user service file. There is no obfuscated code, no unexpected network requests, no exfiltration, and no execution of untrusted external scripts. The use of `find` + `sed` to remove `_where` fields from `package.json` is a standard cleanup step for npm artifacts. All operations are confined to the package's own directories under `$pkgdir`.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing claude-mem-worker.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for claude-mem-worker.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the claude-mem worker. It executes `/usr/bin/bun` (the Bun runtime) with a script installed under `/usr/lib/node_modules/claude-mem/plugin/scripts/`. This is a normal package-deployed script, not an externally fetched payload. There are no network requests, no obfuscation, no dangerous commands (eval, base64, curl, wget, etc.), and no file operations beyond running the intended worker process. The `PATH` variable includes `%h/.local/bin` which is a minor hygiene concern (user-local binaries could shadow system ones for child processes), but since the service itself uses an absolute path for the executable, this does not introduce a supply-chain attack vector. Nothing in this file deviates from standard AUR packaging practice or exhibits any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service; no malicious or suspicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed claude-mem-worker.service. Status: SAFE -- Standard systemd service; no malicious or suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,887
  Completion Tokens: 2,540
  Total Tokens: 14,427
  Total Cost: $0.002375
  Execution Time: 34.08 seconds

Final Status: SAFE


No issues found.
