---
package: llama-swap-bin
pkgver: 265
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14746
completion_tokens: 2559
total_tokens: 17305
cost: 0.001807624
execution_time: 27.74
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T03:14:38Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config for upstream release checking; no security issues.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore containing only standard AUR package maintenance exclusions.
  - file: .SRCINFO
    status: safe
    summary: Safe metadata file; sources and checksums from official upstream, no malicious behavior.
  - file: llama-swap.service
    status: safe
    summary: Standard systemd unit file; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR package with pinned checksums; no malicious behavior found.
---

Materializing llama-swap-bin from local mirror...
Materialized llama-swap-bin
Analyzing llama-swap-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level consists entirely of static variable definitions and source array declarations. There are no command substitutions, no encoded/obfuscated payloads, no network requests executed at source time, and no file operations outside of normal variable assignment. The `package()` function contains only standard `install` commands for the package's own binary, config, service, docs, and license; it is not executed during `--printsrcinfo` and will be reviewed in the full audit.

The checksums are pinned hashes, and even if they were SKIPped that would not affect this gate. The source URLs point to the project's official GitHub upstream and its release assets, which is expected for a `-bin` package. Nothing in the global scope would download or execute untrusted code when sourced.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is static; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is static; no malicious code executes during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `nvchecker` configuration used by AUR maintainers to check for new upstream releases. It instructs nvchecker to query GitHub for the latest release of the `mostlygeek/llama-swap` project and uses the `v` prefix for version strings. It performs no downloads, no code execution, no file system changes, and no network requests beyond nvchecker's normal API query to the package's own upstream repository. There is no evidence of malicious or obfuscated behavior.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config for upstream release checking; no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config for upstream release checking; no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used by an AUR maintainer to keep a git repository minimal. It ignores everything except the files needed to maintain the package: the AUR metadata (`PKGBUILD`, `.SRCINFO`), a nvchecker configuration (`.nvchecker.toml`), the ignore file itself, and systemd service files (`*.service`). There are no network operations, no executable code, no obfuscation, and no suspicious file handling. It is consistent with normal AUR packaging and repository maintenance practices.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore containing only standard AUR package maintenance exclusions.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, llama-swap.service...
[2/5] Reviewing .SRCINFO, PKGBUILD, llama-swap.service...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore containing only standard AUR package maintenance exclusions.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata describing the `llama-swap-bin` package. It declares the package version, architecture, license, dependencies/provides, and sources. All source URLs point to the project's official GitHub repository (`https://github.com/mostlygeek/llama-swap`), and both generic and architecture-specific sources include explicit SHA-256 checksums. No checksums are set to `SKIP`, and there are no unpinned mutable sources.

There is no executable logic in this file; `.SRCINFO` only records metadata used by AUR helpers and makepkg. No suspicious network behavior, obfuscated content, file operations, or code execution is present. The file is consistent with legitimate packaging practice and does not contain any indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Safe metadata file; sources and checksums from official upstream, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, llama-swap.service...
+ Reviewed .SRCINFO. Status: SAFE -- Safe metadata file; sources and checksums from official upstream, no malicious behavior.
LLM auditresponse for llama-swap.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for llama-swap, a model-swapping tool for llama.cpp / OpenAI-compatible servers. The unit follows normal packaging practices: it uses `DynamicUser=yes` (a security hardening measure), confines state and working files under `/var/lib/llama-swap`, runs only the packaged binary `/usr/bin/llama-swap`, and binds the service to loopback `127.0.0.1` only. The `-watch-config` flag and restart limits are routine service configuration. There is no network fetch, no code execution beyond the intended binary, no obfuscation, and no manipulation of files outside the application's own state/config scope. The unit also does not grant privileged capabilities or weaken sandboxing.
</details>
<evidence>
</evidence>
<summary>
Standard systemd unit file; no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed llama-swap.service. Status: SAFE -- Standard systemd unit file; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary packaging recipe for `llama-swap`. It downloads prebuilt release tarballs from the project's official GitHub releases page and a configuration example and systemd service file from the project's own upstream repository. All sources have pinned checksums, including architecture-specific binaries, and no checksum is set to `SKIP`. The `package()` function only installs files into `$pkgdir` using standard `install` commands; there is no `eval`, `base64`, `curl|bash`, `git pull`, build-time code execution, network exfiltration, or obfuscated content.

The use of prebuilt binaries from upstream is normal for a `-bin` package. The `raw.githubusercontent.com` URL for the example config and service file points to the same project's repository at a pinned version tag, which is consistent with official packaging practices rather than an unexpected third-party host. No genuinely malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard binary AUR package with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,746
  Completion Tokens: 2,559
  Total Tokens: 17,305
  Total Cost: $0.001808
  Execution Time: 27.74 seconds

Final Status: SAFE


No issues found.
