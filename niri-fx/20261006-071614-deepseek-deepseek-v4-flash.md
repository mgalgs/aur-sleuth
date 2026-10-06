---
package: niri-fx
pkgver: 0.22.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23922
completion_tokens: 5560
total_tokens: 29482
cost: 0.0072029192
execution_time: 90.37
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T07:16:14Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no malicious content.
  - file: README.Arch
    status: safe
    summary: Documentation file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns.
  - file: niri-fx-packaged.desktop
    status: safe
    summary: Standard desktop entry, no malicious content detected.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE compliance file, no security concerns.
  - file: niri-fx-studio.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Safe PKGBUILD adhering to standard practices.
---

Materializing niri-fx from local mirror...
Materialized niri-fx
Analyzing niri-fx AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (depends, source, sha256sums, etc.) and function definitions in its global/top-level scope. There are no command substitutions, backtick expressions, or direct execution of external programs during the sourcing phase. The `prepare()`, `build()`, `check()`, and `package()` functions are defined but not called during `makepkg --printsrcinfo`. The global scope is entirely declarative and contains no executable code beyond simple string/array assignments. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No executable code in global scope; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; sourcing is safe.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD Zero Clause License text. It contains no executable code, no commands, no network references, and no obfuscation. It is purely a legal document and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, README.Arch...
[1/7] Reviewing .SRCINFO, PKGBUILD, README.Arch...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no malicious content.
LLM auditresponse for README.Arch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a README file providing usage instructions and integration notes for the niri-fx package. It contains no executable code, no network requests, no obfuscated commands, and no unexpected file operations. The content is limited to documentation describing how to adopt the compositor session, manage configuration, and recover from changes — all of which are standard application functionality for a window-compositor package. No evidence of malicious or suspicious behavior was found.
</details>
<evidence></evidence>
<summary>Documentation file with no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, README.Arch, REUSE.toml...
[2/7] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed README.Arch. Status: SAFE -- Documentation file with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package metadata (`.SRCINFO`) file. It contains only declarative information: package name, description, version, dependencies, source URLs, and checksums. No executable code or scripts are present. The sources are well-defined git repositories pinned to specific tags or commits, which is a secure and reproducible packaging practice. The `SKIP` checksums are for VCS sources, which is standard and expected. There are no signs of malicious activity such as obfuscation, network requests, or system modifications.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security concerns.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, niri-fx-packaged.desktop...
[3/7] Reviewing PKGBUILD, REUSE.toml, niri-fx-packaged.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns.
LLM auditresponse for niri-fx-packaged.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard desktop entry for launching a window compositor session. The `Exec` line points to `/usr/bin/niri-fx-session`, which is the expected binary provided by the package. There is no obfuscation, network activity, or any unusual commands. The content is purely declarative and follows the freedesktop.org desktop entry specification. No security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content detected.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, REUSE.toml, niri-fx-packaged.desktop, niri-fx-studio.desktop...
[4/7] Reviewing PKGBUILD, REUSE.toml, niri-fx-studio.desktop...
+ Reviewed niri-fx-packaged.desktop. Status: SAFE -- Standard desktop entry, no malicious content detected.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file (REUSE.toml) that declares licensing metadata for packaging files. It contains no executable code, no network operations, no file modifications, and no obfuscation. It is a standard compliance file used to annotate copyright and license information. There are no security issues.
</details>
<evidence>
</evidence>
<summary>Standard REUSE compliance file, no security concerns.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, niri-fx-studio.desktop...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE compliance file, no security concerns.
LLM auditresponse for niri-fx-studio.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop .desktop launcher file for the niri-fx package. It defines a graphical application entry that executes `/usr/bin/niri-fx studio --active`, uses `TryExec` to check whether the binary exists, and declares standard metadata such as categories, icon, and keywords. There is no embedded scripting, no network access, no file manipulation, and no obfuscation. The file simply provides a menu entry for the packaged application and contains nothing beyond normal desktop-entry syntax. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed niri-fx-studio.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a well-structured build script that follows standard Arch Linux packaging practices for a Python/Rust project. No evidence of a supply chain attack, obfuscation, or malicious intent was found.

- **Source Integrity:** Both upstream sources are fetched from their official GitHub repositories. The `niri-fx` source is pinned to a tag (`v0.22.0`), and the `niri` source is pinned to a specific commit hash (`_niri_revision`), which is strong practice for reproducibility. Static files are verified by SHA-256 checksums.
- **Build Process:** The build is conducted entirely offline within `$srcdir` using standard tooling (`python -m build`, `cargo fetch --locked`, and custom scripts located in the project's own `scripts/` directory). All outputs are installed cleanly into `$pkgdir`.
- **Inline Python Script:** The heredoc in `prepare()` performs version/metadata validation before executing `runpy.run_path` on `scripts/build-niri-movement.py`, a script located inside the project's own source tree. This is a legitimate method for orchestrating complex multi-repository builds and is not obfuscated.
- **Network Activity:** `cargo fetch --locked` fetches Rust crate dependencies from the standard crates.io registry as determined by the project's `Cargo.lock` file. This is expected and standard behavior for Rust projects.

There are no dangerous commands (`eval`, `curl|bash`, base64 decoding), no data exfiltration, no backdoors, and no unexpected system modifications. All operations serve the stated packaging goal.
</details>
<evidence></evidence>
<summary>Safe PKGBUILD adhering to standard practices.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe PKGBUILD adhering to standard practices.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,922
  Completion Tokens: 5,560
  Total Tokens: 29,482
  Total Cost: $0.007203
  Execution Time: 90.37 seconds

Final Status: SAFE


No issues found.
