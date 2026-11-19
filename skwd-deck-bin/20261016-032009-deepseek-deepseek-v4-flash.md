---
package: skwd-deck-bin
pkgbase: skwd-suite-bin
pkgver: 1.0.0_beta.26
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14069
completion_tokens: 1798
total_tokens: 15867
cost: 0.001607515
execution_time: 57.25
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T03:20:08Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums and official upstream sources; no malicious behavior found.
  - file: skwd-deck.install
    status: safe
    summary: No malicious behavior; standard user service cleanup on package removal.
  - file: PKGBUILD
    status: safe
    summary: Conventional prebuilt-suite PKGBUILD; pinned checksums, no malicious behavior found.
---

skwd-deck-bin is built from skwd-suite-bin
Materializing skwd-deck-bin from local mirror...
Materialized skwd-deck-bin
Analyzing skwd-deck-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The file contains only standard variable and array definitions (`pkgname`, `pkgver`, `source_x86_64`, `sha256sums_x86_64`, etc.) plus function definitions (`prepare`, `_install_prebuilt`, and the `package_*` functions). No top-level command substitution, no top-level execution of downloaded content, no `eval`, `curl`, `wget`, or obfuscated code is present.

The suspicious-looking or build-time behaviors (extracting prebuilt archives, copying files into `$pkgdir`) reside inside `prepare()` and `package_*()` functions, which are not executed by `makepkg --printsrcinfo`. Those will need review in the full PKGBUILD audit, but they are out of scope for this narrow gate. No genuinely malicious top-level code exists.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; no code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, skwd-deck.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the AUR package `skwd-suite-bin`. It declares four prebuilt binary packages, each sourced from the upstream project's official GitHub releases URL (`https://github.com/liixini/skwd-wall/releases/download/...`). All four sources have pinned SHA-256 checksums, which is good supply-chain hygiene. There are no network requests beyond the declared source downloads, no encoded or obfuscated commands, no suspicious file operations, and no unexpected executables or scripts. The `noextract` and `options` entries are ordinary for prebuilt package archives. The `install = skwd-deck.install` reference is a normal packaging hook and cannot be evaluated from this file alone; nothing here indicates malicious behavior. The content is consistent with legitimate AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with pinned checksums and official upstream sources; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, skwd-deck.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums and official upstream sources; no malicious behavior found.
LLM auditresponse for skwd-deck.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for managing a user systemd service named `skwd-walld.service` on removal. The `_skwd_user_systemctl` helper iterates over active user runtime directories, validates ownership via `stat` and `getent`, and invokes `systemctl --user` for each session. This is a common pattern for packages that install per-user services, allowing cleanup across all logged-in users.

The script only disables/stops the package's own service (`skwd-walld.service`) and terminates a process with the exact name `skwd-walld`. It performs no network access, no obfuscated code, no data exfiltration, and no changes outside the application's own service/process scope. The `pkill` usage is narrowly scoped with `-x` for exact process name matching. There is no evidence of injected malicious behavior; this is consistent with normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; standard user service cleanup on package removal.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed skwd-deck.install. Status: SAFE -- No malicious behavior; standard user service cleanup on package removal.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a conventional split-package build for prebuilt binaries of the Skwd wallpaper suite. All four source archives are downloaded from the project&apos;s own GitHub releases over HTTPS, each with a pinned SHA-256 checksum. The `prepare()` function uses `bsdtar` to extract the downloaded package archives, and each `package_*()` function copies the prebuilt files from the extracted archive into `$pkgdir` with `cp -a`. There are no suspicious network requests, no encoded or obfuscated commands, no execution of downloaded scripts, and no file operations outside the package&apos;s own build and staging directories.

The use of prebuilt `.pkg.tar.zst` archives with `noextract` and manual extraction is unusual but consistent with repackaging upstream binary artifacts. The `install=skwd-deck.install` reference is a minor packaging completeness concern since the install script is not listed in the `source` array, but this would cause a build-time error at worst and is not evidence of malicious behavior. The `provides` entries for older beta versions are also harmless compatibility declarations. No red flags indicating a supply-chain attack were found.
</details>
<evidence>
</evidence>
<summary>
Conventional prebuilt-suite PKGBUILD; pinned checksums, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Conventional prebuilt-suite PKGBUILD; pinned checksums, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,069
  Completion Tokens: 1,798
  Total Tokens: 15,867
  Total Cost: $0.001608
  Execution Time: 57.25 seconds

Final Status: SAFE


No issues found.
