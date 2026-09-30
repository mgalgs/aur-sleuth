---
package: muse-code-bin
pkgver: 1.3.0.r3057.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 41436
completion_tokens: 20611
total_tokens: 62047
cost: 0.007323994748
execution_time: 349.64
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T07:29:35Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no executable or malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR binary package with verified upstream sources.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR package with pinned upstream checksums; no malicious behavior.
  - file: muse-mcp
    status: safe
    summary: No malicious behavior visible; config management CLI is SAFE.
  - file: muse-session
    status: safe
    summary: Benign session management helper; no evidence of malicious behavior or injection.
  - file: update.sh
    status: safe
    summary: Queries upstream API and updates PKGBUILD checksums; no malicious behavior.
  - file: muse.sh
    status: safe
    summary: Safe launcher wrapper; Termux proot and qemu fallbacks only; no malicious behavior.
---

Materializing muse-code-bin from local mirror...
Materialized muse-code-bin
Analyzing muse-code-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, source array definitions, checksums, and a `package()` function. No top-level code execution occurs beyond standard variable expansion. There are no command substitutions, no calls to external commands, no obfuscated or encoded strings, and no logic that would download or execute anything during `makepkg --printsrcinfo`. The `package()` function is not invoked during this step. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No top-level malicious code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to parse.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, PKGBUILD...
[0/7] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It contains only file-path patterns with no executable content, no shell commands, no network operations, and no obfuscation.

The patterns are all conventional for a package build tree: ignoring built packages (`*.pkg.tar.*`), source archives (`*.tar.*`), build directories (`pkg/`, `src/`), the package output directory (`muse-code-bin-*`), downloaded pin files (`pin-*.txt`), logs, and Python cache artifacts. The `pin-*.txt` pattern likely relates to a dependency-pinning helper used by the package build, but as a gitignore entry it poses no security risk and cannot exfiltrate data or execute code.

There is no evidence of malicious behavior, hidden payloads, or deviation from standard packaging practice. This file merely controls which files are tracked by version control.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no executable or malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, PKGBUILD, .gitignore, muse-mcp...
[1/7] Reviewing .SRCINFO, PKGBUILD, muse-mcp...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no executable or malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO metadata file for a prebuilt binary package. It contains no executable code. The package depends on common packages (ca-certificates, python) and downloads the binary from Meta&#39;s official lookaside server (lookaside.facebook.com). Checksums (SHA-256) are provided for all sources, including the binary downloads, ensuring integrity. There are no suspicious commands (eval, curl|bash, etc.) because the file is purely declarative. The source URLs point to the project&#39;s own upstream domain, not to an unexpected or untrusted third party. Based on the file content alone, there is no evidence of a supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR binary package with verified upstream sources.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, muse-mcp, muse-session...
[2/7] Reviewing PKGBUILD, muse-mcp, muse-session...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR binary package with verified upstream sources.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD only declares sources and a `package()` function. The prebuilt binary is downloaded from `lookaside.facebook.com`, the official Meta artifact CDN, with pinned sha256 checksums for both x86_64 and aarch64. No build or prepare step exists, so no downloaded code is executed during packaging. The package function uses `install` and `ln -s` only to place files and symlinks inside `$pkgdir`, which is standard packaging practice. There is no obfuscation, no eval/base64/curl|bash pattern, no exfiltration, and no modification of system files outside the package directory.
</details>
<evidence>
</evidence>
<summary>Standard binary AUR package with pinned upstream checksums; no malicious behavior.</summary>
</security_assessment>

[3/7] Reviewing muse-mcp, muse-session...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package with pinned upstream checksums; no malicious behavior.
[3/7] Reviewing muse-mcp, muse-session, muse.sh...
LLM auditresponse for muse-mcp:
 <security_assessment>
<decision>SAFE</decision>
<details>
The visible code is a Python CLI that manages MCP server entries in the Muse Code configuration file (`~/.config/muse/settings.json`). It reads agent config files (Claude, Codex, Gemini, OpenCode, agy), merges their MCP servers into the `mcp_servers` block, and supports add, enable, disable, remove, export, and import operations. All file writes target the muse settings file and are gated by `--force` and `--dry-run` logic. No network exfiltration, no execution of downloaded code, no obfuscated commands, and no tampering with files outside the application's own configuration scope is visible. Remote HTTP servers are represented as configuration data (`type`/`url`), not fetched or executed by this script. The audit input is heavily abbreviated with `[...]`, so the review is limited to the visible excerpt, but nothing in that excerpt indicates injected or malicious behavior.
</details>
<evidence></evidence>
<summary>No malicious behavior visible; config management CLI is SAFE.</summary>
</security_assessment>

[3/7] Reviewing muse-mcp, muse-session, muse.sh, update.sh...
[4/7] Reviewing muse-session, muse.sh, update.sh...
+ Reviewed muse-mcp. Status: SAFE -- No malicious behavior visible; config management CLI is SAFE.
LLM auditresponse for muse-session:
<security_assessment>
  <decision>SAFE</decision>
  <details>
The visible content describes a session-management helper for Muse Code. It lists, inspects, renames, and deletes local session directories under `$XDG_DATA_HOME/muse/sessions/`, which is the application's own data scope. Operations such as reading `.session.title`, writing a new title, reading lock PIDs, and deleting session folders are consistent with the stated purpose of the tool. Deletion is guarded by confirmation prompts, `--force`/`--yes` flags, and active-lock checks, so it does not appear to be an unprompted destructive operation outside its own application data.

No genuinely malicious behavior is visible in the excerpt: there are no network requests, no `curl`/`wget`/`eval`/`base64`-style payloads, no obfuscated command construction, and no attempt to read or exfiltrate sensitive system files such as SSH/GPG keys, shell histories, or credentials. The curses UI code and argument parsing are ordinary for a small Python TUI utility. The rename functionality writes only to the session's own `.session.title` file, and deletion is scoped to session data and its cache directories.

The excerpt is heavily redacted with `[…]`, so the analysis is based on the available code fragments. However, the visible fragments are consistent with normal upstream or maintainer-provided session management functionality, not with a supply-chain attack.
  </details>
  <evidence></evidence>
  <summary>Benign session management helper; no evidence of malicious behavior or injection.</summary>
</security_assessment>

[5/7] Reviewing muse.sh, update.sh...
+ Reviewed muse-session. Status: SAFE -- Benign session management helper; no evidence of malicious behavior or injection.
LLM auditresponse for update.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
update.sh is a maintainer-side helper for the `muse-code-bin` AUR package. It fetches the upstream Muse Code release channel over HTTPS from `api.meta.ai`, reads the current version and manifest URL, then fetches the artifact manifest and rewrites the version and checksum fields in the local `PKGBUILD` and `.SRCINFO`. This is normal, expected AUR update automation for a `-bin` package. The network destination is the upstream project’s own API, and the downloaded data is parsed with `jq` but never piped to a shell or executed.

The file writes only to `PKGBUILD` and `.SRCINFO`. The `sed` and inline Python edits are routine string replacements for updating version and checksum arrays. There is no `eval`, `base64` decoding, obfuscation, credential or file exfiltration, backdoor, or unrelated system modification. As with any script that follows an upstream release, a compromised upstream API could influence the values written, but that is a trust and reproducibility consideration rather than evidence of injected malicious behavior in this file.
</details>
<evidence></evidence>
<summary>Queries upstream API and updates PKGBUILD checksums; no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing muse.sh...
+ Reviewed update.sh. Status: SAFE -- Queries upstream API and updates PKGBUILD checksums; no malicious behavior.
LLM auditresponse for muse.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a launcher/wrapper script for the `muse` binary shipped by the `muse-code-bin` package. Its behavior is limited to:

- Resolving the real `muse` binary under `${PREFIX}/lib/muse/muse`, with relative fallbacks for running from a source checkout.
- Detecting Termux/Android and, when needed, re-executing the binary via `proot` with a standard set of Android bind mounts (`/system`, `/vendor`, `/data`, `/apex`, `/storage`, plus `${PREFIX}` mapped to `/usr`). This is the conventional, non-privileged way to run standard Linux binaries on Android/Termux; the bind mounts are a runtime compatibility shim and require no root.
- Detecting x86_64 CPUs lacking AVX2 and re-executing under `qemu-x86_64 -cpu max`, or prompting to install `qemu-user`. This is a documented workaround pattern for prebuilt binaries.
- Dispatching `session`/`sessions` and supported `mcp` subcommands to helper executables located at fixed absolute paths (`${PREFIX}/lib/muse/muse-session`, `${PREFIX}/lib/muse/muse-mcp`) or relative to the script. No PATH-based lookup is used for helpers, so there is no PATH-hijack surface here.

There is no network activity, no downloading or executing of remote code, no obfuscation or encoded payloads, no data exfiltration, and no writes to system files. The `proot` environment and qemu fallback are application-level compatibility features, not injected supply-chain behavior. Minor observations: dispatch to a missing helper would simply error out (robustness issue, not malice), and the `mcp` case intentionally falls through to the real binary for unlisted subcommands such as `mcp login`, matching its comments. Nothing in this file deviates from ordinary packaging or wrapper practices in a way that would justify an UNSAFE rating.
</details>
<evidence></evidence>
<summary>Safe launcher wrapper; Termux proot and qemu fallbacks only; no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed muse.sh. Status: SAFE -- Safe launcher wrapper; Termux proot and qemu fallbacks only; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,436
  Completion Tokens: 20,611
  Total Tokens: 62,047
  Total Cost: $0.007324
  Execution Time: 349.64 seconds

Final Status: SAFE


No issues found.
