---
package: sparrow-wallet
pkgver: 2.5.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 21235
completion_tokens: 6602
total_tokens: 27837
cost: 0.00241073
execution_time: 141.04
files_reviewed: 7
files_skipped: 1
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-17T19:22:07Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: keys/pgp/D4D0D3202FC06849A257B38DE94618334C674B40.asc
    status: skipped
    summary: "Skipping binary file: D4D0D3202FC06849A257B38DE94618334C674B40.asc"
  - file: update.sh
    status: safe
    summary: Standard AUR maintainer update script.
  - file: .woodpecker.yaml
    status: safe
    summary: Standard CI automation; no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with verified upstream sources and no malicious behavior found.
---

Materializing sparrow-wallet from local mirror...
Materialized sparrow-wallet
Analyzing sparrow-wallet AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&apos;s global scope consists only of standard metadata variable assignments, dependency arrays, source array entries, and function definitions. No top-level command substitutions, `eval`, `curl`/`wget` execution, file writes, or other dangerous operations are present. Running `makepkg --printsrcinfo` will source the file, but it will not execute `prepare()` or `package()`.

The `source=` entries reference the upstream Sparrow Wallet GitHub releases and a desktop file from the project&apos;s own repository. The `SKIP` checksum and unpinned URL references are hygiene concerns only and do not execute during this command. No evidence of injected malicious code exists in the top-level scope.
</details>
<evidence></evidence>
<summary>Safe: only variable definitions and function declarations; no top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only variable definitions and function declarations; no top-level execution.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/sparrowwallet/sparrow/releases/download/2.5.5/sparrow-2.5.5-manifest.txt.asc
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains only the pattern `**`, which is a standard gitignore instruction that tells Git to ignore all files in all directories. This is a common practice for AUR package repositories to avoid committing build artifacts or generated files. There is no executable code, no network operations, no data exfiltration, and no deviation from normal packaging practices. The file is benign.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, .woodpecker.yaml...
[1/8] Reviewing .SRCINFO, .nvchecker.toml, .woodpecker.yaml...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only metadata for the sparrow-wallet AUR package. It lists source URLs from the official GitHub repository of Sparrow Wallet, along with SHA256 checksums (one SKIP for the PGP signature file, which is normal practice). No executable code, obfuscation, network requests to unexpected hosts, or system modifications are present. The file adheres to standard AUR packaging conventions and shows no signs of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .nvchecker.toml, .woodpecker.yaml, LICENSE...
[2/8] Reviewing .nvchecker.toml, .woodpecker.yaml, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a LICENSE file containing a permissive open-source license (similar to ISC). It includes standard copyright and permission text, with no executable code, network requests, obfuscated content, or any operations that could compromise system security. There is nothing remotely suspicious or malicious in this file.</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/8] Reviewing .nvchecker.toml, .woodpecker.yaml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[3/8] Reviewing .nvchecker.toml, .woodpecker.yaml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a version-checking tool commonly used in AUR packages. It points to the official upstream GitHub repository (`sparrowwallet/sparrow`) and instructs nvchecker to use the latest release. There is no obfuscation, no network requests to unexpected hosts, and no executable code. This is standard packaging practice.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[3/8] Reviewing .nvchecker.toml, .woodpecker.yaml, PKGBUILD, keys/pgp/D4D0D3202FC06849A257B38DE94618334C674B40.asc...
[4/8] Reviewing .woodpecker.yaml, PKGBUILD, keys/pgp/D4D0D3202FC06849A257B38DE94618334C674B40.asc...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
[4/8] Reviewing .woodpecker.yaml, PKGBUILD, keys/pgp/D4D0D3202FC06849A257B38DE94618334C674B40.asc, update.sh...
[5/8] Reviewing .woodpecker.yaml, PKGBUILD, update.sh...
! Reviewed keys/pgp/D4D0D3202FC06849A257B38DE94618334C674B40.asc. Status: SKIPPED -- Skipping binary file: D4D0D3202FC06849A257B38DE94618334C674B40.asc
LLM auditresponse for update.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR maintainer helper script that automates version upgrades. It runs `pkgctl version upgrade` (a normal Arch tool), checks for changes with git diff, extracts the version, regenerates `.SRCINFO` with `makepkg --printsrcinfo`, and commits the update. There are no suspicious network requests, obfuscated code, file exfiltration, or backdoors. The script only performs routine packaging operations and does not fetch or execute untrusted code at build time. It is safe.
</details>
<evidence></evidence>
<summary>Standard AUR maintainer update script.</summary>
</security_assessment>

[6/8] Reviewing .woodpecker.yaml, PKGBUILD...
+ Reviewed update.sh. Status: SAFE -- Standard AUR maintainer update script.
LLM auditresponse for .woodpecker.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Woodpecker CI configuration for the sparrow-wallet AUR package. It automates version updates, builds, and pushes to the same repository. All commands are standard for AUR packaging: installing dependencies (pacman -Syu), importing a local GPG key, running an update script (`./update.sh`) that is part of the repository, building the package with `makepkg -si`, and verifying the binary (`sparrow --version`). The push step uses a token from a CI secret to push to the same repository URL, which is typical for CI/CD. No obfuscated code, unexpected network destinations, data exfiltration, or backdoors are present. The file does not itself execute on user systems; it runs in an isolated CI environment.
</details>
<evidence></evidence>
<summary>Standard CI automation; no malicious indicators.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed .woodpecker.yaml. Status: SAFE -- Standard CI automation; no malicious indicators.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD installs Sparrow Wallet from the official Sparrow GitHub release assets. The source URLs point to `github.com/sparrowwallet/sparrow` and `raw.githubusercontent.com/sparrowwallet/sparrow`, all consistent with the package's declared upstream. The tarball and manifest have pinned sha256 checksums, and the detached `.asc` manifest signature is verified through `validpgpkeys`. The single `SKIP` checksum corresponds to the signature file, which is normal.

The `prepare()` function only verifies the upstream manifest with `sha256sum -c`, and `package()` simply installs the prebuilt application into `/opt`, creates a launcher script, and installs a `.desktop` file. There is no obfuscated code, no unexpected network download-and-execute behavior, no use of `eval`, `base64`, `curl`, or `wget` at build time, and no writes outside the standard package and system-install paths. This is a standard AUR packaging pattern with no evidence of supply-chain tampering.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with verified upstream sources and no malicious behavior found.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with verified upstream sources and no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: D4D0D3202FC06849A257B38DE94618334C674B40.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,235
  Completion Tokens: 6,602
  Total Tokens: 27,837
  Total Cost: $0.002411
  Execution Time: 141.04 seconds

Final Status: SAFE


No issues found.


Audit Skips:

keys/pgp/D4D0D3202FC06849A257B38DE94618334C674B40.asc: [SKIPPED] Skipping binary file: D4D0D3202FC06849A257B38DE94618334C674B40.asc
