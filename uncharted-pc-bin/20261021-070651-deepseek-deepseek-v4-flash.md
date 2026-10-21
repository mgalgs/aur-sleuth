---
package: uncharted-pc-bin
pkgver: 0.3.6.linux.102
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18549
completion_tokens: 1517
total_tokens: 20066
cost: 0.001964053
execution_time: 21.97
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T07:06:50Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard GPL-2.0 license text; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and upstream GitHub source; no malicious behavior found.
  - file: uncharted-pc
    status: safe
    summary: Benign launcher script; sets data directory and executes package binary. No security issues found.
  - file: uncharted-pc.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
---

Materializing uncharted-pc-bin from local mirror...
Materialized uncharted-pc-bin
Analyzing uncharted-pc-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's top-level scope. This PKGBUILD contains only standard variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and a `package()` function whose body is not executed during `--printsrcinfo`. There is no top-level command substitution, no execution of downloaded content, no network access triggered at source time, and no obfuscated or encoded payload. The source URLs point to the project's own GitHub releases page, which is normal packaging practice and not relevant to this narrow gate since sources are not fetched during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD content is benign; only static variables are evaluated.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD content is benign; only static variables are evaluated.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing LICENSE...
[0/5] Reviewing LICENSE, .SRCINFO...
[0/5] Reviewing LICENSE, .SRCINFO, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard GNU General Public License version 2 text. It contains no executable code, no network requests, no obfuscated strings, and no file operations. It is a verbatim license document commonly shipped with software packages and presents no security concerns. No deviation from expected packaging content was found.
</details>
<evidence></evidence>
<summary>Standard GPL-2.0 license text; no malicious content found.</summary>
</security_assessment>

[0/5] Reviewing LICENSE, .SRCINFO, PKGBUILD, uncharted-pc...
[1/5] Reviewing .SRCINFO, PKGBUILD, uncharted-pc...
+ Reviewed LICENSE. Status: SAFE -- Standard GPL-2.0 license text; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package recipe. It downloads a release tarball from the project&apos;s own GitHub releases URL, verifies it with a pinned SHA-256 checksum, and additionally pins checksums for all local helper files. The `package()` function only installs files into `$pkgdir` using standard `install` and `cp` commands. There are no network requests at build/install time beyond the declared source download, no execution of fetched scripts, no obfuscated commands, and no writes outside the package staging directory. The `.desktop` file, launcher script, and LICENSE are normal packaging components. Nothing here deviates from legitimate AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, uncharted-pc...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious behavior found.
[2/5] Reviewing .SRCINFO, uncharted-pc, uncharted-pc.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file describes a standard AUR prebuilt binary package. It declares a source tarball from the project's own GitHub releases page, along with a LICENSE file, a launcher/executable file named `uncharted-pc`, and a desktop entry. All four sources have pinned sha256 checksums, which is good packaging hygiene.

There is no evidence of malicious behavior. The package downloads its prebuilt binary from the upstream project's official GitHub release URL, which is the expected distribution channel for this package. No suspicious network endpoints, encoded commands, file operations, or post-install tampering is present in this metadata file. The package's description clearly states it requires the user's own game dump, which is consistent with a native port of an existing game.

The only minor consideration is that the package is a prebuilt binary from a third-party port, so users should trust the upstream project and verify the binary themselves if desired. However, nothing in this file indicates a supply-chain attack or unsafe packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and upstream GitHub source; no malicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing uncharted-pc, uncharted-pc.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and upstream GitHub source; no malicious behavior found.
LLM auditresponse for uncharted-pc:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for a packaged game. It sets an environment variable to redirect the game's data directory from a root-owned install location to the user's home directory, then executes the game binary from the package's install prefix. There are no network requests, no encoded or obfuscated commands, and no file operations outside the expected runtime data scope for the application. The script only references the package's own installed binary and a user-local data directory, which is consistent with normal packaging practice.
</details>
<evidence></evidence>
<summary>
Benign launcher script; sets data directory and executes package binary. No security issues found.
</summary>
</security_assessment>

[4/5] Reviewing uncharted-pc.desktop...
+ Reviewed uncharted-pc. Status: SAFE -- Benign launcher script; sets data directory and executes package binary. No security issues found.
LLM auditresponse for uncharted-pc.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for launching a game. It defines the application name, comment, executable command, icon, and category. The `Exec=uncharted-pc` line simply launches the package's own binary from the user's PATH, which is normal behavior for a packaged application. The `NoDisplay=true` entry hides it from application menus, also a common packaging choice for games launched through other frontends. There are no network requests, downloads, obfuscated code, file operations, or any other suspicious behavior. No security issues found.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed uncharted-pc.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,549
  Completion Tokens: 1,517
  Total Tokens: 20,066
  Total Cost: $0.001964
  Execution Time: 21.97 seconds

Final Status: SAFE


No issues found.
