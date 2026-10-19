---
package: voidal
pkgver: 0.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17800
completion_tokens: 2127
total_tokens: 19927
cost: 0.002006914
execution_time: 24.52
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T03:09:22Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license text only; no executable or malicious content found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore whitelisting packaging files; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior found.
  - file: LICENSE
    status: safe
    summary: Plain license text only; no executable or malicious content found.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE licensing metadata; no executable or dangerous content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; wrapper only manages game data locally. Safe.
---

Materializing voidal from local mirror...
Materialized voidal
Analyzing voidal AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The top-level scope contains only plain variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) with no command substitutions, no function calls, and no executable statements. No network requests, downloads, file modifications, or data exfiltration can occur while this PKGBUILD is sourced.

The `package()` function contains the file installation and launcher-script logic, but functions are not executed by `makepkg --printsrcinfo`; that content is out of scope for this narrow gate and will be reviewed in the full audit. There is nothing in the parsed top-level scope that would execute malicious code.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is plain variables only; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is plain variables only; printsrcinfo is safe.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license file containing standard permissive license language attributed to Arch Linux Contributors. It contains no code, no executable content, no network operations, no file operations, and no instructions. There is nothing in this file that could introduce a security risk or deviate from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Plain license text only; no executable or malicious content found.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Plain license text only; no executable or malicious content found.
[1/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the packaging metadata and license files that should be tracked in version control. There are no commands, network operations, obfuscated strings, or any behavior that could constitute a security risk. This is ordinary repository hygiene, not malicious code.
</details>
<evidence></evidence>
<summary>Standard .gitignore whitelisting packaging files; no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[2/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore whitelisting packaging files; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It declares a prebuilt Linux binary zip from the project's official website (`voidal.net`) with a pinned SHA-256 checksum, and a third-party license file fetched from the project's GitHub repository at a pinned commit. Both sources have concrete checksums, so the downloaded artifacts are integrity-checked.

There are no suspicious commands, no network callbacks beyond fetching the package's own declared upstream sources, no obfuscated data, and no post-install logic. The use of a prebuilt binary and the custom license identifier are normal packaging choices for this type of game package. Nothing here indicates injected malicious behavior or a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[3/6] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior found.
[3/6] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an ISC-style license text for Arch Linux Contributors. It contains only standard legal language and no executable code, network operations, file manipulation, or any other behavior that could pose a supply-chain security risk. There is nothing in this content that deviates from normal packaging practices.
</details>
<evidence></evidence>
<summary>
Plain license text only; no executable or malicious content found.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Plain license text only; no executable or malicious content found.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE software compliance configuration. It declares which paths in the repository are covered by the specified SPDX copyright and license annotations. There is no executable code, no network access, no file modification logic, and no obfuscation. The content is limited to metadata describing licensing of packaging files such as PKGBUILD, README, install scripts, systemd units, and desktop files. This is standard and benign.
</details>
<evidence>
</evidence>
<summary>
Benign REUSE licensing metadata; no executable or dangerous content.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE licensing metadata; no executable or dangerous content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging recipe for the proprietary game Voidal. It downloads the game archive from the project's official site (`https://voidal.net`) and a third-party license file from the project's own GitHub repository at a pinned commit. Both sources have pinned SHA-256 checksums, so the build inputs are verified and reproducible. The `package()` function only installs game data, binaries, desktop entry, and license files into the package directory; it does not execute fetched code, contact unexpected hosts, or modify system files outside the package.

The generated `/usr/bin/voidal` wrapper is routine application-launcher glue. It creates a per-user data directory under `${XDG_DATA_HOME:-$HOME/.local/share}/voidal`, symlinks the read-only game data from `/usr/share/voidal` into that directory, ensures a writable `saves` directory exists, and then `exec`s the installed binary. All operations are confined to the game's own data directories and the package's own installed files. There is no obfuscation, no network access, no credential/exfiltration behavior, and no execution of untrusted content beyond the upstream binary that the PKGBUILD explicitly installs. The use of unescaped `$@` and `$HOME` in the wrapper is normal shell scripting, not a security issue.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums; wrapper only manages game data locally. Safe.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; wrapper only manages game data locally. Safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,800
  Completion Tokens: 2,127
  Total Tokens: 19,927
  Total Cost: $0.002007
  Execution Time: 24.52 seconds

Final Status: SAFE


No issues found.
