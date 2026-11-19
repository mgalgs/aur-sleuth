---
package: steam-beta
pkgver: 1.0.0.87.1791686101
pkgrel: 6
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 33675
completion_tokens: 11217
total_tokens: 44892
cost: 0.0146911425
execution_time: 58.47
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T23:19:04Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license text only; no executable or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Pure package metadata with official Steam sources and checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Steam beta packaging; all operations scoped to the package; no malicious indicators.
  - file: lib32-sandbox.sh
    status: safe
    summary: Benign helper script using bubblewrap to hide lib32 packages; no malicious behavior.
  - file: reaper64.c
    status: safe
    summary: No malicious behavior found; helper performs expected binfmt_misc process execution and reaping.
  - file: steam_client_publicbeta_ubuntu12
    status: safe
    summary: Steam VDF update manifest; contains only hashes, sizes, and signatures, no executable or malicious content.
  - file: steam.sh
    status: safe
    summary: "Safe wrapper: writes Steam beta config under Steam data directory and launches installed client."
---

Materializing steam-beta from local mirror...
Materialized steam-beta
Analyzing steam-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global scope. At the top level, this PKGBUILD defines variables and helper functions, then executes a few command substitutions: `mapfile -t _client_zips < <(_manifest_values file)`, `mapfile -t _client_sha256 < <(_manifest_values sha2)`, and `pkgver=${_launcher}.$(_manifest_values version)`. These run the locally defined `_manifest_values()` function, which simply invokes `awk` on a local manifest file (`steam_client_publicbeta_ubuntu12`) and captures field values. This is metadata construction for the `source`, `sha256sums`, and `pkgver` variables, not payload execution.

There are no top-level network requests, no eval/base64/curl/wget usage, no obfuscated code, and no file writes or system modifications at source time. The `build()` and `package()` functions contain more involved operations, but they do not run during `makepkg --printsrcinfo` and are out of scope for this narrow gate. The manifest is parsed as data, and nothing parsed from it is executed at this stage. SKIP checksums are also irrelevant to this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level parsing only reads a local manifest into variables; no malicious execution occurs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level parsing only reads a local manifest into variables; no malicious execution occurs.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text ISC-style license notice attributed to Arch Linux Contributors. It contains no executable code, no network operations, no file modifications, and no references to external resources. It is a standard packaging license file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard license text only; no executable or suspicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, lib32-sandbox.sh...
[1/7] Reviewing .SRCINFO, PKGBUILD, lib32-sandbox.sh...
+ Reviewed LICENSE. Status: SAFE -- Standard license text only; no executable or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is purely package metadata for the Steam beta client. It contains no executable code, no build/prepare functions, and no runtime scripts. All remote sources point to official Valve/Steam domains (`repo.steampowered.com` and `client-update.steamstatic.com`), which is consistent with the package's stated purpose. The source archives are referenced with versioned filenames and include per-file SHA256 checksums; the `SKIP` entries apply only to locally maintained helper files (`steam.sh`, `reaper64.c`, `steam_client_publicbeta_ubuntu12`), which is standard packaging practice rather than a security concern.

There are no suspicious URLs, no obfuscated content, no command execution, no unexpected file operations, and no attempt to exfiltrate data or download code from an unrelated host. The dependencies and optdepends are reasonable for a Steam client package. Nothing in this file indicates malicious or supply-chain behavior.
</details>
<evidence>
</evidence>
<summary>
Pure package metadata with official Steam sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, lib32-sandbox.sh, reaper64.c...
[2/7] Reviewing PKGBUILD, lib32-sandbox.sh, reaper64.c...
+ Reviewed .SRCINFO. Status: SAFE -- Pure package metadata with official Steam sources and checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is an ordinary packaging workflow for the Steam beta client. It downloads the launcher tarball and .dsc from repo.steampowered.com, parses a local Steam manifest to obtain client zip filenames and SHA-256 hashes, downloads those zips from client-update.steamstatic.com, extracts and repackages them, and installs the launcher, udev rules, licenses, and related files. There is no obfuscated code, no eval/curl|bash execution, no unexpected network destination, and no file operation outside the package build/install scope.

The binfmt_misc rule and reaper64 helper are unusual but clearly scoped to Steam's own i386 reaper binary: the rule matches a specific 52-byte ELF header and routes that binary to /usr/lib/steam/reaper64. This is a packaging and compatibility decision, not evidence of injected malice. Hygiene notes: steam.sh, reaper64.c, and the local manifest use SKIP checksums, and the manifest is a local source rather than being fetched by URL during the build. These are trust/hygiene choices, not malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Steam beta packaging; all operations scoped to the package; no malicious indicators.
</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, lib32-sandbox.sh, reaper64.c, steam.sh...
[3/7] Reviewing lib32-sandbox.sh, reaper64.c, steam.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Steam beta packaging; all operations scoped to the package; no malicious indicators.
LLM auditresponse for lib32-sandbox.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a compatibility helper that uses `bwrap` to run Steam while hiding installed lib32 packages except those listed in `LIB32_KEEP`. It builds a mount namespace with `--dev-bind / /` and `--tmpfs /usr/lib32`, then read-only binds selected files back into place. This matches the stated purpose of simulating an environment where only certain lib32 packages are installed.

There is no network access, no obfuscated code, no encoded payloads, and no unexpected file writes. The unquoted `$keep` in `pacman -Qlq $keep` is a minor robustness issue since it allows word splitting, but it only affects how pacman is invoked and the variable is user-controlled. The use of `--dev-bind / /` means this is not a strong security sandbox, but that is a functional limitation, not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Benign helper script using bubblewrap to hide lib32 packages; no malicious behavior.</summary>
</security_assessment>

[3/7] Reviewing lib32-sandbox.sh, reaper64.c, steam.sh, steam_client_publicbeta_ubuntu12...
[4/7] Reviewing reaper64.c, steam.sh, steam_client_publicbeta_ubuntu12...
+ Reviewed lib32-sandbox.sh. Status: SAFE -- Benign helper script using bubblewrap to hide lib32 packages; no malicious behavior.
LLM auditresponse for reaper64.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a small C helper for the steam-beta package. It contains no network access, no encoded payloads, no shell evaluation, and no writes outside normal process execution. It maps the target file read-only to compare its size and CRC32 against expected values for Steam's i386 reaper; if it matches, it acts as a subreaper, otherwise it forwards the program through the 32-bit loader. This behavior matches the stated binfmt_misc handler purpose.

Executing the path supplied on argv is expected for a binfmt_misc interpreter. It does not exfiltrate data, fetch attacker-controlled code, or tamper with unrelated system files. The use of `execv`, `fork`, `prctl`, `wait`, and `mmap` are standard process-management operations. No genuinely malicious or injected behavior is present.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; helper performs expected binfmt_misc process execution and reaping.</summary>
</security_assessment>

[5/7] Reviewing steam.sh, steam_client_publicbeta_ubuntu12...
+ Reviewed reaper64.c. Status: SAFE -- No malicious behavior found; helper performs expected binfmt_misc process execution and reaping.
LLM auditresponse for steam_client_publicbeta_ubuntu12:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Valve Data Format (VDF) manifest used by the Steam client updater. It lists content archives for the Steam public beta (e.g., `bins_ubuntu12`, `steamui_websrc_all`, `runtime_steamrt_ubuntu12`) along with metadata such as file sizes, SHA-2 hashes, alternative compressed block hashes, and cryptographic signature blocks (`kvsign2`, `kvsignatures`). It contains no shell commands, no network endpoints, no obfuscated payloads, and no executable logic. The content is purely declarative data describing Steam's own official package components, which is standard for Steam's depot update system.

There are no suspicious file operations, downloads from unrelated hosts, encoded commands, or attempts to exfiltrate data. The presence of hashes and signatures is a positive integrity feature rather than a security concern. Nothing in this file deviates from ordinary packaging/update-manifest behavior, so it should be considered safe.
</details>
<evidence>
</evidence>
<summary>
Steam VDF update manifest; contains only hashes, sizes, and signatures, no executable or malicious content.
</summary>
</security_assessment>

[6/7] Reviewing steam.sh...
+ Reviewed steam_client_publicbeta_ubuntu12. Status: SAFE -- Steam VDF update manifest; contains only hashes, sizes, and signatures, no executable or malicious content.
LLM auditresponse for steam.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This `steam.sh` wrapper performs only routine Steam client configuration and launch tasks. It writes a branch marker to `~/.local/share/Steam/package/beta`, creates a client-enable flag under `~/.local/share/Steam`, exports environment variables, and then `exec`s `/usr/lib/steam/steam`. All file operations are confined to Steam's own user data directory, and the final binary is the package's installed Steam client, not a fetched or attacker-controlled script.

No network requests, no obfuscated or encoded payloads, no use of `eval`, `curl`, `wget`, `base64`, or similar tools, and no modification of system files. The `@BRANCH@` token appears to be a build-time placeholder for the desired beta branch; even if it remained literal, it would at worst be a client configuration issue rather than a security threat. This is consistent with standard AUR packaging behavior for a Steam beta wrapper.
</details>
<evidence>
</evidence>
<summary>
Safe wrapper: writes Steam beta config under Steam data directory and launches installed client.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed steam.sh. Status: SAFE -- Safe wrapper: writes Steam beta config under Steam data directory and launches installed client.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 33,675
  Completion Tokens: 11,217
  Total Tokens: 44,892
  Total Cost: $0.014691
  Execution Time: 58.47 seconds

Final Status: SAFE


No issues found.
