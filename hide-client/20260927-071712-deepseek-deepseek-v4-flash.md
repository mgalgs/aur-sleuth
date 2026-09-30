---
package: hide-client
pkgver: 0.9.12
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23532
completion_tokens: 6261
total_tokens: 29793
cost: 0.0016909326
execution_time: 227.32
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T07:17:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with pinned upstream source and checksums; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious content found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking; no security issues.
  - file: arch-config.patch
    status: safe
    summary: Patch hardens systemd unit and moves config paths; no malicious behavior found.
---

Materializing hide-client from local mirror...
Materialized hide-client
Analyzing hide-client AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable/array assignments (pkgname, pkgver, source, b2sums, etc.) and function definitions (prepare, build, package). No command substitution, network fetch, eval, or other executable statement exists at global scope, so running `makepkg --printsrcinfo` merely sources the file and prints metadata without executing any payload. The `$pkgname`/`$url` variable expansions inside the source array are inert string expansions, not command substitutions, and the source isn't downloaded during `--printsrcinfo` anyway. The HTML entities in the prompt are just escaping artifacts from the file's presentation, not obfuscation in the actual file.
</details>
<evidence></evidence>
<summary>Top-level contains only definitions and assignments; --printsrcinfo execution is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level contains only definitions and assignments; --printsrcinfo execution is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.SRCINFO` metadata file for the `hide-client` package. It declares the package as the hide.me CLI VPN client for Linux, sourced from the upstream GitHub repository at `https://github.com/eventure/hide.client.linux`. The source archive is a pinned release version (`0.9.12.zip`) and both the source archive and the `arch-config.patch` have explicit BLAKE2 checksums. There are no suspicious commands, network downloads from unexpected hosts, obfuscated content, or file-system modifications in this metadata file. Nothing here deviates from normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO with pinned upstream source and checksums; no security issues.
</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, arch-config.patch...
[1/4] Reviewing .nvchecker.toml, PKGBUILD, arch-config.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with pinned upstream source and checksums; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `hide-client` follows standard Arch Linux packaging practices. The source is fetched from the project&#x27;s own GitHub archive at a specific version tag, with both files having valid BLAKE2 checksums. The `prepare()` function applies a patch for Arch-specific defaults, which is normal. `build()` uses `go build` with typical hardening flags (`-trimpath`, `-buildmode=pie`, `-mod=readonly`, `-linkmode external`). `package()` installs the binary, CA certificate, configuration file, and systemd service unit into appropriate directories. There are no suspicious network requests, obfuscated code, dangerous commands, or unexpected system modifications. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious content found.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, arch-config.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious content found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for `nvchecker`, a tool that monitors upstream repositories for new releases. It defines the source type as `git` and points to the legitimate upstream repository for the hide-client project (`https://github.com/eventure/hide.client.linux.git`). The `prefix = "v"` indicates version tags are prefixed with "v". There is no obfuscation, no dangerous commands, no network requests beyond what nvchecker would normally perform, and no indication of malicious intent. This file is purely a metadata configuration for version tracking.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking; no security issues.</summary>
</security_assessment>

[3/4] Reviewing arch-config.patch...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking; no security issues.
LLM auditresponse for arch-config.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is an Arch Linux packaging adjustment for the hide.me VPN client. The changes move the daemon's configuration from `/opt/hide.me` to `/etc/hide.me`, which is standard FHS/Arch practice: `/etc` is the conventional location for configuration, while `/opt` is a vendor-binary directory. The systemd unit changes are consistent with this move: `WorkingDirectory=/etc/hide.me`, `EnvironmentFile=/etc/hide.me/config`, and `ReadWritePaths=/etc/hide.me /etc/resolv.conf -/run/systemd/resolve` narrow the service's write access from the original, much broader `/etc` (via `/opt/hide.me /etc`) down to just the app's config directory, the resolver configuration, and systemd-resolved's runtime path. Giving a VPN client write access to `/etc/resolv.conf` is expected behavior, since setting the system DNS is part of a VPN tunnel's function. This is a hardening improvement, not an escalation or a backdoor.

The Go flag modifications are routine: whitespace/alignment reformatting, plus registration of standard command-line flags (`--dns`, `--doh`, `--noMalware`, `--noMalicious`, `--noRisk`, `--interface`, `--firewall-mark`, `-4`/`-6`, control-interface flags, etc.). The "service"/"updateDoh"/"resolve" subcommands and the access-token flow are upstream hide.me client features, not injected functionality. There is no obfuscated or base64-encoded code, no `eval` of a decoded blob, no network downloads or `curl|bash`-style execution, no exfiltration of local credentials, and no tampering with unrelated system files. The remote-control service mode is an upstream feature of the vendor's client, not an injected backdoor. Nothing in this patch serves any purpose other than relocating config paths, adjusting the service unit hardening, and reformatting flag declarations — all normal, transparent packaging work. 
</details>
<evidence>
</evidence>
<summary>Patch hardens systemd unit and moves config paths; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed arch-config.patch. Status: SAFE -- Patch hardens systemd unit and moves config paths; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,532
  Completion Tokens: 6,261
  Total Tokens: 29,793
  Total Cost: $0.001691
  Execution Time: 227.32 seconds

Final Status: SAFE


No issues found.
