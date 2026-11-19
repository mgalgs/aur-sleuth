---
package: steam-beta
pkgver: 1.0.0.87.1791686101
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 33593
completion_tokens: 14985
total_tokens: 48578
cost: 0.02018859
execution_time: 88.66
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T19:09:49Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license text; no code, network, or system activity. Safe.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; all sources are official Steam domains with no malicious behavior.
  - file: lib32-sandbox.sh
    status: safe
    summary: Local bwrap helper for hiding lib32 packages; no malicious behavior found.
  - file: reaper64.c
    status: safe
    summary: No malicious behavior found; standard binfmt_misc reaper implementation for Steam.
  - file: steam.sh
    status: safe
    summary: Legitimate Steam launcher wrapper; sets environment and writes app-local beta marker only.
  - file: steam_client_publicbeta_ubuntu12
    status: safe
    summary: Data-only Steam manifest with hashes and signatures; no executable or malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard Steam beta packaging with minor supply-chain caveats.
---

Materializing steam-beta from local mirror...
Materialized steam-beta
Analyzing steam-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD's global scope. In this PKGBUILD, the only executed top-level commands are the `mapfile` calls and `pkgver` assignment, all of which call the locally defined `_manifest_values()` helper. That helper runs `awk` on the local `$_manifest` file and prints selected fields; it performs no network access, no shell evaluation of the file contents, and no dangerous command substitution. The `awk` output is used only to populate the `source`, `noextract`, and `sha256sums` arrays.

The potentially interesting functions `_programs`, `_build_reaper64`, `_binfmt_rule`, `build()`, and `package()` are only definitions at global scope and are not invoked by `makepkg --printsrcinfo`. They will be executed later during a full build, but that is outside this narrow gate. There is no obfuscated code, no encoded payload, and no top-level download-and-execute behavior.
</details>
<evidence>
</evidence>
<summary>
No malicious top-level code executes during makepkg --printsrcinfo; only local awk metadata reads occur.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code executes during makepkg --printsrcinfo; only local awk metadata reads occur.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, PKGBUILD...
[0/7] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style license text attributed to Arch Linux Contributors. It contains no executable code, no network operations, no file manipulation, and no packaging logic. There is nothing in the content that could facilitate a supply-chain attack or any other security concern.
</details>
<evidence>
</evidence>
<summary>
Plain license text; no code, network, or system activity. Safe.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, PKGBUILD, LICENSE, lib32-sandbox.sh...
[1/7] Reviewing .SRCINFO, PKGBUILD, lib32-sandbox.sh...
+ Reviewed LICENSE. Status: SAFE -- Plain license text; no code, network, or system activity. Safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `steam-beta` package. It declares package metadata, dependencies, source URLs, checksums, and noextract entries. All remote sources point to official Valve/Steam domains: `repo.steampowered.com` and `client-update.steamstatic.com`, which are expected upstream hosts for the Steam client. The archive sources have pinned sha256 checksums, and the package also declares a valid PGP signing key for the `.dsc` source.

The `SKIP` checksums apply to local source files included in the AUR repository (`steam.sh`, `reaper64.c`, `steam_client_publicbeta_ubuntu12`). This is a hygiene/pinning concern rather than evidence of malicious activity; `SKIP` checksums are ordinary AUR practice and do not by themselves indicate a supply-chain attack. Nothing in the file contains obfuscated commands, suspicious network endpoints, data exfiltration, backdoors, or unexpected system modifications. The file is only metadata and contains no executable logic.
</details>
<evidence></evidence>
<summary>
Standard AUR metadata; all sources are official Steam domains with no malicious behavior.
</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, lib32-sandbox.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; all sources are official Steam domains with no malicious behavior.
[2/7] Reviewing PKGBUILD, lib32-sandbox.sh, reaper64.c...
LLM auditresponse for lib32-sandbox.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a local helper that runs a command (default `steam`) inside a bubblewrap mount namespace. It keeps the full root filesystem visible via `--dev-bind / /`, but overlays `/usr/lib32` with a tmpfs and then read-only binds selected files from packages listed in `LIB32_KEEP`. This is consistent with its stated purpose: simulating a system where only certain lib32 packages are present, without actually removing them.

There is no network access, no download-and-execute behavior, no obfuscated code, no use of `eval`, `curl`, `wget`, or base64, and no modification of host files. The use of `bwrap` here is a mount-namespace feature, not a security sandbox, and the script does not attempt to hide that. One minor robustness note is that `pacman -Qlq $keep` is unquoted, so a carefully crafted `LIB32_KEEP` value could influence pacman arguments, but this is a user-controlled environment variable and not evidence of malice. Overall, the script performs exactly the packaging-related task it describes.
</details>
<evidence>
</evidence>
<summary>
Local bwrap helper for hiding lib32 packages; no malicious behavior found.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, reaper64.c...
+ Reviewed lib32-sandbox.sh. Status: SAFE -- Local bwrap helper for hiding lib32 packages; no malicious behavior found.
[3/7] Reviewing PKGBUILD, reaper64.c, steam.sh...
LLM auditresponse for reaper64.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a 64-bit reimplementation of Steam's i386 reaper helper, intended to be invoked through binfmt_misc. It does not perform any network communication, fetch remote content, write to system files outside its own runtime scope, or use obfuscated/encoded commands. The CRC32 check is used only to verify that the program being launched matches the exact i386 Steam reaper before substituting the 64-bit reaper logic; it is not loading untrusted external code.

The use of `execv`/`execvp`, `fork`, `wait`, and `prctl(PR_SET_CHILD_SUBREAPER)` is consistent with the stated reaper functionality: launch the provided i386 program through `/usr/lib32/ld-linux.so.2`, and reap orphaned child processes so Steam games do not require the 32-bit compatibility reaper. Executing the program supplied by the kernel's binfmt_misc handler is the intended upstream behavior of this helper, not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; standard binfmt_misc reaper implementation for Steam.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, reaper64.c, steam.sh, steam_client_publicbeta_ubuntu12...
[4/7] Reviewing PKGBUILD, steam.sh, steam_client_publicbeta_ubuntu12...
+ Reviewed reaper64.c. Status: SAFE -- No malicious behavior found; standard binfmt_misc reaper implementation for Steam.
LLM auditresponse for steam.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a small launcher wrapper for the Steam client. It writes a branch marker into Steam's own data directory (`~/.local/share/Steam/package/beta`), sets two environment variables to force the 64-bit Steam client and enable Proton WOW64 mode, and then executes the system-installed Steam binary at `/usr/lib/steam/steam`.

There is no obfuscation, no network download, no pipe-to-shell execution, no use of `eval`, `base64`, `curl`, or `wget`, and no modification of files outside the application's own data directory. The behavior is consistent with the stated purpose of opting Steam installations into the client beta branch. No evidence of injected malicious code or supply-chain attack was found.
</details>
<evidence></evidence>
<summary>Legitimate Steam launcher wrapper; sets environment and writes app-local beta marker only.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, steam_client_publicbeta_ubuntu12...
+ Reviewed steam.sh. Status: SAFE -- Legitimate Steam launcher wrapper; sets environment and writes app-local beta marker only.
LLM auditresponse for steam_client_publicbeta_ubuntu12:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Steam content manifest in Valve's KeyValues text format. It contains only metadata: named content groups, filenames, sizes, SHA-2 hashes, alternative compressed archive hashes, and embedded signature strings (`kvsign2`, `kvsignatures`). There are no shell commands, no scripts, no network operations, no file operations, and no obfuscated or encoded payloads.

The cryptographic hashes and signatures are consistent with normal Steam depot/manifest verification data. Even though the file itself is untrusted input, it performs no action and contains no executable logic. It is a standard packaging/manifest artifact and does not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Data-only Steam manifest with hashes and signatures; no executable or malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed steam_client_publicbeta_ubuntu12. Status: SAFE -- Data-only Steam manifest with hashes and signatures; no executable or malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages Valve's Steam beta client. Its sources come from Valve's own domains (`repo.steampowered.com` and `client-update.steamstatic.com`), with pinned checksums for the launcher tarball and `.dsc`, while the client zip list and hashes are read from Valve's own manifest file. The `SKIP` entries cover local helper files and the manifest itself; these are unpinned-supply-chain hygiene considerations, but they are not evidence of malice under the provided criteria.

The build and packaging steps are ordinary for this kind of package: extract client zips into a temporary tree, mark ELF/script files executable, repack the bootstrap tarball, compile the local `reaper64.c`, generate udev and binfmt rules, and install files into `$pkgdir`. There is no `eval`, no encoded/obfuscated payloads, no `curl|bash`, no unexpected remote host, no exfiltration, and no tampering with files outside the package's own scope.

The most security-relevant item is the custom `reaper64` binary and the `/usr/lib/binfmt.d/steam-reaper.conf` rule that routes the i386 Steam reaper to it. This is an unusual system-wide mechanism, but it is explicitly described, narrowly scoped by an ELF-header match, and directly serves the package's stated purpose of working without lib32. The `reaper64.c` source itself is not visible in this file and should be reviewed separately, but nothing in this PKGBUILD indicates injected malicious behavior.
</details>
<evidence></evidence>
<summary>
No malicious behavior found; standard Steam beta packaging with minor supply-chain caveats.
</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard Steam beta packaging with minor supply-chain caveats.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 33,593
  Completion Tokens: 14,985
  Total Tokens: 48,578
  Total Cost: $0.020189
  Execution Time: 88.66 seconds

Final Status: SAFE


No issues found.
