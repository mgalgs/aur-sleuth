---
package: muse-code-bin
pkgver: 1.4.0.r4302.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 41295
completion_tokens: 8429
total_tokens: 49724
cost: 0.00353337628
execution_time: 131.01
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T19:21:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Package metadata only; pinned checksums, official Meta host, no malicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: muse-session
    status: safe
    summary: Legitimate session management tool for Muse Code; no malicious indicators.
  - file: muse.sh
    status: safe
    summary: Legitimate environment setup wrapper for Muse binary.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned checksums; no malicious behavior found.
  - file: update.sh
    status: safe
    summary: Benign AUR maintainer update script; fetches upstream release data and updates PKGBUILD checksums.
  - file: muse-mcp
    status: safe
    summary: Legitimate MCP config manager; reads agent configs locally, writes own settings only.
---

Materializing muse-code-bin from local mirror...
Materialized muse-code-bin
Analyzing muse-code-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. This PKGBUILD contains only standard variable and array definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, `depends`, etc.) plus a `package()` function definition. No commands are executed in the global scope, and `package()` is not invoked during `--printsrcinfo`. There is no top-level command substitution, network fetch, download-and-execute, encoding/obfuscation, or data exfiltration. The download URLs and checksums are part of the source metadata and are not accessed during this step.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; only metadata definitions and a package() function exist.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; only metadata definitions and a package() function exist.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .gitignore...
[0/7] Reviewing .gitignore, PKGBUILD...
[0/7] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `.SRCINFO`, a generated AUR metadata file for the `muse-code-bin` package. It contains no executable code, no build/install hooks, no network commands, and no file-manipulation logic. It only declares package metadata: name, version, description, dependencies, conflicts/provides, and source entries with pinned SHA-256 checksums.

The binary sources point to `https://lookaside.facebook.com`, which is Meta's own download host and matches the package's stated upstream (`dev.meta.ai`). All three local source files (`muse.sh`, `muse-session`, `muse-mcp`) also have concrete SHA-256 checksums, and the architecture-specific binaries have pinned checksums as well. This is consistent with ordinary, reproducible packaging practice. There is no evidence of obfuscation, credential theft, unexpected downloads, or execution of attacker-controlled code.
</details>
<evidence>
</evidence>
<summary>
Package metadata only; pinned checksums, official Meta host, no malicious behavior.
</summary>
</security_assessment>

[1/7] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Package metadata only; pinned checksums, official Meta host, no malicious behavior.
[1/7] Reviewing .gitignore, PKGBUILD, muse-mcp...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used to exclude build artifacts and temporary files from version control. The patterns listed (`*.pkg.tar.*`, `pkg/`, `src/`, etc.) are typical for Arch Linux package repositories. There is no evidence of malicious code, obfuscation, or any dangerous behavior. The file contains only static ignore rules and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[1/7] Reviewing .gitignore, PKGBUILD, muse-mcp, muse-session...
[2/7] Reviewing PKGBUILD, muse-mcp, muse-session...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for muse-session:
<security_assessment>
<decision>SAFE</decision>
<details>
The `muse-session` script is a legitimate CLI and TUI extension for the Muse Code application to list, inspect, rename, and delete session directories stored under `~/.local/share/muse/sessions/`. It performs only expected operations: reading session metadata from JSONL files, checking PID-based lock files, renaming via `.session.title` files, and deleting session directories with cleanup of empty parent directories. It uses standard Python modules (`os`, `glob`, `json`, `shutil`, `argparse`, `curses`) and does **not** contain any network requests, code downloading, obfuscated commands, `eval`/`exec` of untrusted input, or access to sensitive system files. The only external command execution is `os.execvp(&quot;muse&quot;, ...)` to resume a session, which invokes the package's own upstream binary with a user-selected UUID — normal application behavior. There is no evidence of injected malicious code or supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate session management tool for Muse Code; no malicious indicators.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, muse-mcp, muse-session, muse.sh...
[3/7] Reviewing PKGBUILD, muse-mcp, muse.sh...
+ Reviewed muse-session. Status: SAFE -- Legitimate session management tool for Muse Code; no malicious indicators.
LLM auditresponse for muse.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for the Muse Code binary package. It handles environment detection (Termux/Android, CPU features) and sets up necessary compatibility layers (proot on Android, qemu on legacy x86_64 CPUs). All operations are transparent and serve only to run the upstream binary under the correct environment. There is no obfuscation, no network requests, no file exfiltration, and no execution of untrusted code. The proot bind mounts and qemu fallback are legitimate workarounds for platform limitations, not supply-chain attacks.
</details>
<evidence></evidence>
<summary>Legitimate environment setup wrapper for Muse binary.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, muse-mcp, muse.sh, update.sh...
[4/7] Reviewing PKGBUILD, muse-mcp, update.sh...
+ Reviewed muse.sh. Status: SAFE -- Legitimate environment setup wrapper for Muse binary.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a standard AUR binary-package pattern. It downloads the upstream Muse binary from Meta&apos;s own lookaside.facebook.com distribution endpoint with pinned SHA-256 checksums for both x86_64 and aarch64, then installs the binary, launcher scripts, and shared helper executables into the package directory. No curl-pipe-to-shell, no eval, no obfuscated commands, and no unexpected network operations occur in the build or package functions.

The package function only performs `install` operations and creates symlinks under `/usr/bin` and `/usr/lib/muse`. The `ln -s muse` and absolute symlink targets are consistent with the stated layout of the package. There is no evidence of exfiltration, backdoors, credential access, or tampering with files outside the package&apos;s own installation paths. The use of prebuilt binaries and SKIP-style trust decisions would be noted separately, but here checksums are actually provided.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[5/7] Reviewing muse-mcp, update.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned checksums; no malicious behavior found.
LLM auditresponse for update.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a maintainer update helper for the AUR package, not code executed during package build. It queries the package's own upstream API (`api.meta.ai/muse-code/channels/muse-stable`), fetches the release manifest over HTTPS, extracts checksums, and rewrites `PKGBUILD`/`.SRCINFO` using `sed` and a small inline Python script.

No malicious behavior is present. The downloaded data is parsed with `jq` and only used as version/checksum strings; no downloaded code is executed (no `curl | bash`, no `eval`, no encoded payloads). The file operations are limited to package metadata (`PKGBUILD`, `.SRCINFO`) and checksumming local wrapper scripts already present in the repository.

The only noteworthy point is a supply-chain trust consideration: the script trusts the upstream channel API and manifest URL to provide correct version/checksum data. That is normal for an auto-updating AUR helper and is not evidence of an attack. The use of HTTPS and exact checksum rewriting reflects standard packaging practice.
</details>
<evidence></evidence>
<summary>Benign AUR maintainer update script; fetches upstream release data and updates PKGBUILD checksums.</summary>
</security_assessment>

[6/7] Reviewing muse-mcp...
+ Reviewed update.sh. Status: SAFE -- Benign AUR maintainer update script; fetches upstream release data and updates PKGBUILD checksums.
LLM auditresponse for muse-mcp:
 <security_assessment>
<decision>SAFE</decision>
<details>
The visible portions of this script show a legitimate MCP (Model Context Protocol) server configuration manager. Its declared and implemented purpose is to read MCP server definitions from other AI coding agents (Claude Code, Codex, Gemini, opencode, Antigravity) and merge them into Muse Code's own settings.json under the `mcp_servers` key. The script preserves existing settings, never overwrites existing servers without `--force`, supports `--dry-run`, and redacts environment variable values in listings (showing only counts). These are behaviors consistent with a well-behaved configuration utility.
File access is limited to reading well-known agent config paths (`~/.claude.json`, `~/.codex/config.toml`, `~/.gemini/config/mcp_config.json`, etc.) and writing to Muse's own `~/.config/muse/settings.json`. These reads serve the tool's stated purpose of discovering and importing MCP servers; the extracted data is displayed locally and written only to the user's own Muse configuration, not transmitted anywhere. The script even warns users that remote HTTP/SSE servers are imported on a best-effort basis, which is honest and defensive rather than malicious.
No obfuscated code, encoded payloads, network exfiltration, execution of downloaded content, or modification of files outside the application's own configuration scope was found. Note that the provided file content is heavily truncated with "[...]" markers, so this assessment covers only the visible fragments; however, nothing in the visible code deviates from the tool's stated purpose.
</details>
<evidence></evidence>
<summary>Legitimate MCP config manager; reads agent configs locally, writes own settings only.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed muse-mcp. Status: SAFE -- Legitimate MCP config manager; reads agent configs locally, writes own settings only.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,295
  Completion Tokens: 8,429
  Total Tokens: 49,724
  Total Cost: $0.003533
  Execution Time: 131.01 seconds

Final Status: SAFE


No issues found.
