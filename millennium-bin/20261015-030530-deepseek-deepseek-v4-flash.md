---
package: millennium-bin
pkgver: 3.6.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11111
completion_tokens: 5336
total_tokens: 16447
cost: 0.001982253
execution_time: 36.07
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 3
injection_attempts: 0
date: 2026-10-15T03:05:30Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Package metadata only; upstream sources, no malicious behavior. Skipped checksums noted as hygiene concern only.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; no malicious behavior found.
  - file: millennium-bin.install
    status: safe
    summary: Install script integrates with Steam as intended; no evidence of malicious behavior.
---

Materializing millennium-bin from local mirror...
Materialized millennium-bin
Analyzing millennium-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD was analyzed for dangerous code execution at global/top-level scope when sourced by `makepkg --printsrcinfo`. All variable definitions, array assignments, and URL strings are static and standard. The only command substitutions or function calls are inside commented-out code (`# pkgver() {...}` and `# _pkgver=&quot;$(pkgver)&quot;`), which do not execute. No `eval`, `curl`, `wget`, `base64`, or other hazardous constructs appear in the active global scope. The `verify()` and `package()` functions are defined but only run during later stages, not during `--printsrcinfo`. Therefore, sourcing this PKGBUILD poses no immediate security risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/SteamClientHomebrew/Millennium/releases/download/v3.6.0/millennium-v3.6.0-linux-x86_64.tar.gz, https://github.com/SteamClientHomebrew/Millennium/releases/download/v3.6.0/millennium-v3.6.0-linux-x86_64.sha256, https://raw.githubusercontent.com/SteamClientHomebrew/Millennium/refs/heads/main/LICENSE.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, millennium-bin.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch package metadata declaration for `millennium-bin`. It defines the package name, description, version, upstream URL, dependencies, and three source files, all of which come from the project&#39;s own GitHub releases or repository. There is no code, no install or build logic visible in this file, and no evidence of malicious behavior such as data exfiltration, execution of downloaded content, or obfuscated commands.

The `sha256sums = SKIP` entries are a supply-chain hygiene concern because the release tarball and checksum are not cryptographically verified against pinned values. However, per standard AUR packaging assessment guidance, skipped checksums alone do not constitute evidence of malice. The `LICENSE.md` source points to a mutable `refs/heads/main` branch, which is also unpinned, but it is only a license file from the same project. These are best-practice concerns, not indicators of an injected attack.
</details>
<evidence>
</evidence>
<summary>
Package metadata only; upstream sources, no malicious behavior. Skipped checksums noted as hygiene concern only.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, millennium-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Package metadata only; upstream sources, no malicious behavior. Skipped checksums noted as hygiene concern only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages a prebuilt upstream release of Millennium from the project's official GitHub repository. All sources (the release tarball, its `.sha256` file, and `LICENSE.md`) are fetched over HTTPS from `github.com` or `raw.githubusercontent.com`, which are the upstream project's own hosts. The checksums are set to `SKIP`, but a `verify()` function runs `sha256sum -c` against the upstream-published checksum file before packaging. This does not fully pin authenticity because the checksum file itself is fetched alongside the tarball, but it is a supply-chain hygiene limitation rather than evidence of malicious intent.

The `package()` function only installs license and library files into `$pkgdir` using `install`. There are no network calls during build or install, no encoded or obfuscated commands, no execution of downloaded scripts, and no modifications to files outside `$pkgdir`. The commented-out `pkgver()` block is inert. No genuinely malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing millennium-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; no malicious behavior found.
LLM auditresponse for millennium-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an install script for a Steam plugin loader (Millennium). It performs three main actions:

1. Removes legacy Millennium patch shims from `/usr/bin/steam` by restoring a backup or writing a clean wrapper that execs `/usr/lib/steam/steam`.
2. Installs the Millennium loader into Steam by placing a symlink at `${USER_HOME}/.local/share/Steam/ubuntu12_32/libXtst.so.6` pointing to `/usr/lib/millennium/libmillennium_bootstrap_x86.so`.
3. Enables Steam's CEF remote debugging via a `.cef-enable-remote-debugging` marker in the user's Steam config directory.

No network requests, encoded or obfuscated commands, credential access, or data exfiltration are present. The `/usr/bin/steam` rewrite and the `libXtst.so.6` symlink are system-level modifications, but they are directly tied to the package's stated purpose of integrating with Steam, and the symlink points to a file owned by the package itself (`/usr/lib/millennium`). The remote-debugging marker and the library-injection mechanism are security considerations, but they represent intentional upstream functionality rather than injected malicious code.
</details>
<evidence></evidence>
<summary>
Install script integrates with Steam as intended; no evidence of malicious behavior.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed millennium-bin.install. Status: SAFE -- Install script integrates with Steam as intended; no evidence of malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,111
  Completion Tokens: 5,336
  Total Tokens: 16,447
  Total Cost: $0.001982
  Execution Time: 36.07 seconds

Final Status: SAFE


No issues found.
