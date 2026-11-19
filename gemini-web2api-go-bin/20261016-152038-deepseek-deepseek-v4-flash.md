---
package: gemini-web2api-go-bin
pkgver: 4.22.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15072
completion_tokens: 2434
total_tokens: 17506
cost: 0.001814540
execution_time: 25.56
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-16T15:20:36Z
file_verdicts:
  - file: gemini-web2api-go-bin.install
    status: safe
    summary: "Standard install scriptlet: informational echoes and service stop only. Safe."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR binary package metadata; sources pinned to upstream GitHub with checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard -bin PKGBUILD; binaries checksum-pinned from own upstream; routine install; no malicious code.
  - file: gemini-web2api-go.service
    status: safe
    summary: Standard hardened systemd unit; no malicious behavior detected.
  - file: gemini-web2api-go.env
    status: safe
    summary: Benign systemd env config; only a documented empty-token default caution.
---

Materializing gemini-web2api-go-bin from local mirror...
Materialized gemini-web2api-go-bin
Analyzing gemini-web2api-go-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable assignments (pkgname, pkgver, source arrays, sha256sum arrays, etc.) and function definitions. No command substitutions, backticks, or direct execution of external commands exist at the top level. The `install` variable is a string referencing a separate file in the same directory. No code that would download, exfiltrate, or execute arbitrary operations runs during sourcing. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE::https://raw.githubusercontent.com/zexadev/gemini-web2api-go/v4.22.0/LICENSE
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, gemini-web2api-go-bin.install...
LLM auditresponse for gemini-web2api-go-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch package install scriptlet (`gemini-web2api-go-bin.install`) containing only three routine functions:

- `post_install()` — prints informational messages telling the user the service is not auto-started, how to set `ADMIN_TOKEN`, how to start/enable the systemd unit, and where data is stored. These are plain `echo` statements with no command execution, network access, or file modification.
- `post_upgrade()` — reminds the user to restart the service after a binary upgrade. Pure `echo`.
- `pre_remove()` — runs `systemctl stop gemini-web2api-go.service` (with output suppressed and `|| true` so removal never fails). This is the conventional, expected behavior for a package that ships a systemd service.

There are no network requests, no downloads, no `curl`/`wget`/`eval`/`base64`, no obfuscation, no file operations outside the package's own service, and no attempt to read or exfiltrate credentials or system files. The only "notable" content is a security advisory printed to the user warning that the binary binds to `0.0.0.0` — that is a helpful transparency message, not a threat. The HTML entities in the file are simply escaping of quotes and angle brackets in the shell strings. This is entirely consistent with ordinary AUR packaging practice.

The scriptlet should be considered benign. The upstream application's design (listening on all interfaces, token-gated admin panel) is noted as a deployment consideration, not a supply-chain issue.
</details>
<evidence>
</evidence>
<summary>Standard install scriptlet: informational echoes and service stop only. Safe.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, gemini-web2api-go-bin.install, gemini-web2api-go.env...
[1/5] Reviewing .SRCINFO, PKGBUILD, gemini-web2api-go.env...
+ Reviewed gemini-web2api-go-bin.install. Status: SAFE -- Standard install scriptlet: informational echoes and service stop only. Safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR binary (`-bin`) package. It declares three local/simple sources (`gemini-web2api-go.service`, `gemini-web2api-go.env`, and `LICENSE` fetched from the project's own `raw.githubusercontent.com` repo at the matching `v4.22.0` tag) plus one prebuilt binary per architecture (`x86_64`, `aarch64`) downloaded from the project's own GitHub releases page (`github.com/zexadev/gemini-web2api-go`).

All network destinations are the package's declared upstream (`url = https://github.com/zexadev/gemini-web2api-go`), which is expected and consistent with the package's stated purpose. The prebuilt binaries are pinned to specific release assets and carry real, non-SKIP SHA-256 checksums. The three `SKIP` entries apply to the locally supplied service/env/License files, which is ordinary packaging practice and not, by itself, evidence of malice (only a minor hygiene/reproducibility concern for the fetched LICENSE file).

No obfuscated content, encoded commands, `eval`/`base64`/`curl|bash` patterns, unexpected hosts, or file/system tampering appear. The `backup` and `install` entries are routine configuration-file and install-script declarations. Nothing here deviates from normal AUR packaging.

</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package metadata; sources pinned to upstream GitHub with checksums.
</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, gemini-web2api-go.env...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR binary package metadata; sources pinned to upstream GitHub with checksums.
[2/5] Reviewing PKGBUILD, gemini-web2api-go.env, gemini-web2api-go.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a conventional `-bin` package for a prebuilt Go binary. Both architecture-specific sources point at the project's own upstream GitHub release assets (`github.com/zexadev/gemini-web2api-go`), and both are pinned with real SHA-256 checksums (`21fcc8...` and `f2822f...`), so the downloaded executables are integrity-verified against fixed values. The `LICENSE` is fetched from the same project's `raw.githubusercontent.com` path, and the remaining sources (`gemini-web2api-go.service`, `gemini-web2api-go.env`) are local AUR-repo files.

The `package()` function is entirely routine: it `cd`s into `$srcdir` and `install`s the binary, systemd unit, env file, and license into `$pkgdir`. There is no `eval`, no base64/hex obfuscation, no `curl`/`wget` piped to a shell, no `git pull`/`reset --hard`, and no access to user data, credentials, or files outside the package staging directory. Nothing here deviates from standard packaging behavior.

The only hygiene note is that the three generic `sha256sums` entries are `SKIP` (for the local service/env files and the LICENSE tarball-less fetch). Per standard AUR practice this is not, by itself, evidence of malice. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard -bin PKGBUILD; binaries checksum-pinned from own upstream; routine install; no malicious code.</summary>
</security_assessment>

[3/5] Reviewing gemini-web2api-go.env, gemini-web2api-go.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -bin PKGBUILD; binaries checksum-pinned from own upstream; routine install; no malicious code.
LLM auditresponse for gemini-web2api-go.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for `gemini-web2api-go`, an OpenAI-compatible proxy for the Gemini web app. It runs the package's own binary from `/usr/bin` with ordinary CLI flags (`--port 8083 --db /var/lib/gemini-web2api-go/gemini.db`), uses `StateDirectory`/`DynamicUser` for state management, and optionally reads an environment file from `/etc/gemini-web2api-go/gemini-web2api-go.env`.

The remaining directives are conventional systemd hardening (`NoNewPrivileges`, `ProtectSystem=strict`, `ProtectHome`, `PrivateTmp`, `RestrictSUIDSGID`, etc.) plus a normal `Restart=on-failure`. There is no network fetcher, no shell pipeline, no obfuscation, no file manipulation outside the service's own state directory, and no execution of downloaded content. This is consistent with ordinary packaging practice.

No evidence of malicious or injected behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard hardened systemd unit; no malicious behavior detected.</summary>
</security_assessment>

[4/5] Reviewing gemini-web2api-go.env...
+ Reviewed gemini-web2api-go.service. Status: SAFE -- Standard hardened systemd unit; no malicious behavior detected.
LLM auditresponse for gemini-web2api-go.env:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain systemd `EnvironmentFile` for the `gemini-web2api-go` package, consisting only of comments and `KEY=VALUE` assignments (`ADMIN_TOKEN`, commented-out `API_KEY`, `SQL_DSN`, `TZ`). There is no executable code, no network activity, no file operations, no obfuscation, and no `eval`/`base64`/`curl`/`wget` usage. This is exactly what a configuration file for a service is expected to look like, and it aligns with the package's stated upstream (`github.com/zexadev/gemini-web2api-go`).

One thing worth noting as a *security consideration* rather than a threat: the shipped default leaves `ADMIN_TOKEN=` empty, and the comments themselves explain that the binary always binds to `0.0.0.0` and that an unset token leaves the `/admin` panel reachable without authentication. That is a weak-by-default configuration the packager is explicitly warning about, not hidden malicious behavior. There is nothing here that exfiltrates data, executes attacker-controlled code, or tampers with unrelated system files, so it does not meet the bar for UNSAFE.
</details>
<evidence>
</evidence>
<summary>
Benign systemd env config; only a documented empty-token default caution.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed gemini-web2api-go.env. Status: SAFE -- Benign systemd env config; only a documented empty-token default caution.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,072
  Completion Tokens: 2,434
  Total Tokens: 17,506
  Total Cost: $0.001815
  Execution Time: 25.56 seconds

Final Status: SAFE


No issues found.
