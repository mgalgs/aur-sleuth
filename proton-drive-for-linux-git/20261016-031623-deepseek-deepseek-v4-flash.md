---
package: proton-drive-for-linux-git
pkgver: 3.4.1.r0.g18cc2ea
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16202
completion_tokens: 2307
total_tokens: 18509
cost: 0.001894256
execution_time: 27.36
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T03:16:23Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard ISC license text; no malicious or suspicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR git package metadata; no malicious or suspicious behavior found.
  - file: proton-drive.install
    status: safe
    summary: "Standard uninstall hook stopping the package's own user service; no malicious behavior found."
  - file: PKGBUILD
    status: safe
    summary: Standard Rust VCS PKGBUILD; no malicious or suspicious behavior found.
---

Materializing proton-drive-for-linux-git from local mirror...
Materialized proton-drive-for-linux-git
Analyzing proton-drive-for-linux-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope contains only standard variable definitions: package metadata, dependencies, options, `install`, the `source` array, and `sha256sums`. No top-level command substitutions, network downloads, file modifications, or code execution are present. The `source` entry references the project's own GitHub repository via `git+`, and the checksum is `SKIP`; these are normal for a `-git` package and are not executed during this metadata-gathering step.

The `pkgver()`, `prepare()`, `build()`, `check()`, and `package()` functions contain commands, but they are not invoked by `makepkg --printsrcinfo`. Their content is out of scope for this narrow safety gate and should be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is standard metadata only; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is standard metadata only; no malicious code executes during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text. It contains no code, no network operations, no file modifications, no obfuscation, and no instructions that could affect a system. It is purely a software license notice, consistent with ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard ISC license text; no malicious or suspicious behavior found.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license text; no malicious or suspicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used to keep an AUR git repository minimal. It ignores all files except the explicitly listed packaging files (`.SRCINFO`, `LICENSE`, `PKGBUILD`, and the install script). This is a common and benign AUR maintainer practice and contains no commands, network operations, obfuscation, or any other potentially malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore; no malicious content found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, proton-drive.install...
[2/5] Reviewing .SRCINFO, PKGBUILD, proton-drive.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a `-git` package. It declares the package metadata, dependencies, source, and checksums. The only source is the upstream GitHub repository `git+https://github.com/narrrl/proton-drive-linux.git`, which is the project's own declared upstream, and the `sha256sums = SKIP` entry is normal and required for VCS sources. There are no network fetches beyond the declared source, no executable payloads, no obfuscation, no file operations, and no system modifications. The `install = proton-drive.install` line simply references an installation script that would be part of the package itself and is not present in this file for review.

The optdepends entries are ordinary optional runtime dependencies, and the quoted `&quot;Open folder&quot;` text is simply metadata, not an executed command. Overall, this file contains no indications of malicious or supply-chain behavior and conforms to normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR git package metadata; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, proton-drive.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR git package metadata; no malicious or suspicious behavior found.
LLM auditresponse for proton-drive.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install script hook. The `pre_remove()` function iterates over active user runtime directories under `/run/user/*`, resolves the corresponding username, and stops the user-scoped `proton-drive.service` via `systemctl --user` if it is active. This is normal and expected behavior for a package that provides a per-user userspace daemon: stopping the service during uninstall prevents the mounted filesystem from remaining active and avoids data-loss side effects after the binary is removed.

The commands used (`id`, `runuser`, `env`, `systemctl`) are all standard system utilities invoked with restricted user context. The script only interacts with the package's own `proton-drive.service`, does not download or execute anything, does not modify unrelated files, and contains no obfuscation or data exfiltration. Iterating over `/run/user/*` is a routine way to handle every logged-in user in a multiuser system and is consistent with the package's stated purpose.
</details>
<evidence>
</evidence>
<summary>
Standard uninstall hook stopping the package's own user service; no malicious behavior found.
</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed proton-drive.install. Status: SAFE -- Standard uninstall hook stopping the package's own user service; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR VCS package for a Rust project. It clones the maintainer's own upstream Git repository into the `source` array, uses `git describe` to generate `pkgver`, fetches locked Cargo dependencies with `cargo fetch --locked`, builds with `cargo build --frozen --release`, runs tests with `cargo test --frozen`, and installs the resulting binaries plus desktop files, a systemd user unit, translations, license, and documentation.

No malicious behavior is present. There are no obfuscated commands, no `eval`, `curl`, `wget`, or base64 decoding, no unexpected network destinations, no data exfiltration, and no tampering with system files outside normal packaging. The `SKIP` checksum and unpinned git source are normal and expected for a `-git` package. `cargo fetch` downloads dependencies from the standard crates.io registries as part of the upstream Rust build process, which is a routine packaging practice. The only installed configuration file is an autostart desktop entry and a user systemd unit, both belonging to the package itself. No injected or supply-chain red flags were found.
</details>
<evidence>
</evidence>
<summary>
Standard Rust VCS PKGBUILD; no malicious or suspicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust VCS PKGBUILD; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,202
  Completion Tokens: 2,307
  Total Tokens: 18,509
  Total Cost: $0.001894
  Execution Time: 27.36 seconds

Final Status: SAFE


No issues found.
