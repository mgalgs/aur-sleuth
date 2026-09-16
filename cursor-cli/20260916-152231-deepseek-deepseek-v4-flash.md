---
package: cursor-cli
pkgver: 2026.09.10.1.fd3934a
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 36682
completion_tokens: 20554
total_tokens: 57236
cost: 0.00677395320
execution_time: 448.83
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T15:22:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository; no security concerns.
  - file: Cursor-TOS
    status: safe
    summary: Plain text legal document, no executable content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative .SRCINFO with official sources and pinned checksums; no malicious behavior.
  - file: LICENSES/LicenseRef-Cursor.txt
    status: inconclusive
    summary: "Audit error: LLMResponseError: LLM response message content is empty or missing"
  - file: REUSE.toml
    status: safe
    summary: Metadata-only REUSE manifest; no executable or malicious behavior present.
  - file: LICENSE
    status: safe
    summary: Standard ISC license text; no executable or malicious content found.
  - file: auto-update-block.patch
    status: safe
    summary: Non-malicious local patch blocking cursor-agent auto-updates via its own data directory.
  - file: cursor-cli.install
    status: safe
    summary: Safe; install script only prints an informational cleanup message.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no evidence of malicious code.
  - file: nvchecker.toml
    status: safe
    summary: Safe nvchecker config; only queries official Cursor page for version info.
  - file: update-pkgver.sh
    status: safe
    summary: Safe maintainer helper; fetches version string only; no malicious behavior.
---

Materializing cursor-cli from local mirror...
Materialized cursor-cli
Analyzing cursor-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. In this file, that scope consists exclusively of plain variable assignments (pkgname, pkgver, epoch, arch, depends, source arrays, checksums) and simple shell parameter expansions used to derive `_upstream_ver` from the literal `pkgver` string. There are no command substitutions (`$(...)`), no backtick execution, no top-level calls to curl/wget/eval/base64, and no network or file activity that could run while the file is sourced.

The `prepare()` and `package()` functions contain the build/install logic (applying a patch against auto-updates, copying files into `$pkgdir`, creating a symlink, installing a license), but these functions are defined, not invoked, during `--printsrcinfo`, so they are out of scope for this narrow gate and will be covered in the full PKGBUILD audit. The source URLs point to the package's own upstream domain (downloads.cursor.com), which is expected.
</details>
<evidence>
</evidence>
<summary>Sourcing PKGBUILD is safe; no top-level commands execute during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no top-level commands execute during printsrcinfo.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, Cursor-TOS...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR package repositories. It contains only ignore patterns for common build artifacts and local tooling state: makepkg build trees (`src/`, `pkg/`), built package archives (`*.pkg.tar*`), downloaded upstream tarballs, build logs, and nvchecker's local version cache files (`oldver.json`, `newver.json`).

There is no executable code, no network activity, no obfuscation, and no file-manipulation logic. The patterns are limited to telling Git which local files should not be committed, which is ordinary repository hygiene. Nothing in this file deviates from standard packaging practices or poses a security risk.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR package repository; no security concerns.</summary>
</security_assessment>

[1/12] Reviewing .SRCINFO, Cursor-TOS...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository; no security concerns.
[1/12] Reviewing .SRCINFO, Cursor-TOS, LICENSE...
LLM auditresponse for Cursor-TOS:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text Terms of Service document for the Cursor software platform. It contains no executable code, no scripts, no commands, and no encoded or obfuscated content. The document describes legal terms, payment policies, disclaimers, and dispute resolution procedures. There are no network requests, file operations, system modifications, or any other indicators of malicious activity. The file is entirely textual and serves no purpose other than informing users of the legal agreement governing the service.
</details>
<evidence>
</evidence>
<summary>Plain text legal document, no executable content.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, LICENSE...
+ Reviewed Cursor-TOS. Status: SAFE -- Plain text legal document, no executable content.
[2/12] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style license notice. It contains no executable code, no network requests, no file operations, and no obfuscation. There is nothing to indicate any security concern.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, LICENSE, LICENSE, LICENSES/LicenseRef-Cursor.txt...
[3/12] Reviewing .SRCINFO, LICENSE, LICENSES/LicenseRef-Cursor.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a declarative `.SRCINFO` metadata file for the AUR `cursor-cli` package. It contains no executable code, no shell commands, no network fetch logic beyond declaring the package sources, and no obfuscated or encoded payloads.

The sources point to `downloads.cursor.com`, which is the official upstream distribution host for Cursor, consistent with the package's stated purpose. Both the generic sources (`Cursor-TOS`, `auto-update-block.patch`) and the architecture-specific tarballs have pinned `b2sums`, so the declared artifacts are checksum-verified. An `auto-update-block.patch` is a normal maintainer practice for packaging applications that attempt self-updates, and `Cursor-TOS` is a license file reference.

There is no evidence of data exfiltration, execution of remotely fetched code, tampering with system files, or any other behavior that would indicate a supply-chain attack. The file simply declares version, dependencies, sources, and checksums.
</details>
<evidence>

</evidence>
<summary>
Declarative .SRCINFO with official sources and pinned checksums; no malicious behavior.</summary>
</security_assessment>

[3/12] Reviewing .SRCINFO, LICENSE, LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
[4/12] Reviewing LICENSE, LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative .SRCINFO with official sources and pinned checksums; no malicious behavior.
LLM audit error for LicenseRef-Cursor.txt: Audit error: LLMResponseError: LLM response message content is empty or missing

[5/12] Reviewing LICENSE, PKGBUILD...
? Reviewed LICENSES/LicenseRef-Cursor.txt. Status: INCONCLUSIVE -- Audit error: LLMResponseError: LLM response message content is empty or missing
[5/12] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE software reuse metadata manifest. It declares copyright and license annotations for package source files, including upstream license details for the Cursor Terms of Service. There are no executable instructions, network operations, obfuscated content, file downloads, or system-modifying behavior. The content is purely descriptive metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>
Metadata-only REUSE manifest; no executable or malicious behavior present.</summary>
</security_assessment>

[5/12] Reviewing LICENSE, PKGBUILD, REUSE.toml, auto-update-block.patch...
[6/12] Reviewing LICENSE, PKGBUILD, auto-update-block.patch...
+ Reviewed REUSE.toml. Status: SAFE -- Metadata-only REUSE manifest; no executable or malicious behavior present.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain ISC-style license text. It contains no executable code, no URLs, no network operations, no file system manipulation, and no obfuscated or encoded content. It is exactly what it appears to be: a standard permissive software license granting rights to use, copy, modify, and distribute the software, accompanied by the usual disclaimer of warranty.

The only mildly unusual aspect is the copyright line reading "Arch Linux Contributors" and the use of typographic quotation marks around "AS IS". Neither is malicious: this license most plausibly covers the AUR packaging scripts (PKGBUILD and related helper files) rather than the upstream cursor-cli application, which may be licensed separately. At most this raises a low-severity packaging-hygiene concern about license file provenance, but it is not evidence of a supply-chain attack or any dangerous behavior.

No injected malicious code, data exfiltration, backdoors, or unexpected network destinations were found. The file is consistent with ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard ISC license text; no executable or malicious content found.</summary>
</security_assessment>

[6/12] Reviewing LICENSE, PKGBUILD, auto-update-block.patch, cursor-cli.install...
[7/12] Reviewing PKGBUILD, auto-update-block.patch, cursor-cli.install...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license text; no executable or malicious content found.
LLM auditresponse for auto-update-block.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This patch adds two lines to the `cursor-agent` launcher script that attempt to block the agent's automatic updates by creating `$HOME/.local/share/cursor-agent/versions` and removing the execute permission from that directory. The behavior is limited to the application's own user-level data directory under the current user's home; it does not touch system files, does not modify unrelated users' data, and involves no network activity, downloads, code execution, or obfuscation. The `[[ -n "${HOME:-}" ]]` guard and trailing `|| true` make the operation fail safely if `HOME` is unset or the directory cannot be created.

While forcing a directory to be non-executable is an unusual way to block updates and may break normal update behavior, it is not malicious. It is an intentional local configuration workaround for the package's own application data, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Non-malicious local patch blocking cursor-agent auto-updates via its own data directory.</summary>
</security_assessment>

[7/12] Reviewing PKGBUILD, auto-update-block.patch, cursor-cli.install, nvchecker.toml...
[8/12] Reviewing PKGBUILD, cursor-cli.install, nvchecker.toml...
+ Reviewed auto-update-block.patch. Status: SAFE -- Non-malicious local patch blocking cursor-agent auto-updates via its own data directory.
LLM auditresponse for cursor-cli.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script contains only a `post_install` function that delegates to `post_upgrade`, and a `post_upgrade` function that prints an informational message to the terminal with `cat &lt;&lt; &apos;EOF&apos;`. No commands from the message are executed by the script. It performs no file modifications, no network access, no downloads, no privilege changes, and no obfuscated or encoded code.

The message merely suggests that the user may manually clean up leftover self-update files under `~/.local/share/cursor-agent/`. Even though it includes a suspicious-looking `chmod +x` line aimed at a directory path, it is only printed text and is not run. There is no behavior that exfiltrates data, installs a backdoor, or executes attacker-controlled code.
</details>
<evidence></evidence>
<summary>Safe; install script only prints an informational cleanup message.</summary>
</security_assessment>

[8/12] Reviewing PKGBUILD, cursor-cli.install, nvchecker.toml, update-pkgver.sh...
[9/12] Reviewing PKGBUILD, nvchecker.toml, update-pkgver.sh...
+ Reviewed cursor-cli.install. Status: SAFE -- Safe; install script only prints an informational cleanup message.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD retrieves the prebuilt binary from the official Cursor downloads domain over HTTPS with BLAKE2 checksums verified. The prepare step applies a local patch to disable auto-updates, which is benign. The package function installs the binary into /opt/cursor-agent and creates a symlink in /usr/bin. No suspicious network requests, obfuscation, or unexpected system modifications are present. The file follows standard AUR packaging practices for a prebuilt binary package.
</details>
<evidence></evidence>
<summary>Standard AUR package, no evidence of malicious code.</summary>
</security_assessment>

[10/12] Reviewing nvchecker.toml, update-pkgver.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no evidence of malicious code.
LLM auditresponse for nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration file used to detect new releases of the cursor-agent CLI. It performs no code execution, no file tampering, and no suspicious network activity beyond making an HTTP request to the official Cursor install page (`https://cursor.com/install`) and extracting a version-like token from the page's HTML using a regular expression. The regex only matches strings that appear under `downloads.cursor.com/lab/` and does not download, execute, or exfiltrate anything. The `oldver`/`newver` entries are standard nvchecker cache paths. There is no obfuscation, encoded payload, external script, or any behavior outside ordinary version-checking tooling.

The configuration is consistent with normal AUR maintainer workflow for tracking upstream releases. It relies on the official vendor domain, and there is no evidence of injected or malicious behavior.
</details>
<evidence></evidence>
<summary>
Safe nvchecker config; only queries official Cursor page for version info.
</summary>
</security_assessment>

[11/12] Reviewing update-pkgver.sh...
+ Reviewed nvchecker.toml. Status: SAFE -- Safe nvchecker config; only queries official Cursor page for version info.
LLM auditresponse for update-pkgver.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a PKGBUILD version-bump helper for the cursor-cli AUR package. It parses the current `pkgver`, fetches the latest version string from the project&#39;s official site (`https://cursor.com/install`) with `curl -fsSL`, and extracts a `YYYY.MM.DD-&lt;hash&gt;` token using `grep`/`sed`. The fetched page content is never executed or piped to a shell — it is only used as a string, validated by regexes that restrict the components to digits, dots, and alphanumerics, then substituted into the `pkgver=`/`pkgrel=` lines. There is no eval, no base64/hex encoding, no `curl|bash`, and no exfiltration. The only network destination is the application&#39;s official upstream (`cursor.com`/`downloads.cursor.com`), which is normal for version-checking.

The script&#39;s file operations stay inside the package repo being maintained: it backs up the PKGBUILD (and `.SRCINFO`) via `mktemp`/`cp`, edits the PKGBUILD with `sed -i`, refreshes checksums with the standard `updpkgsums` tool, and regenerates `.SRCINFO` with `makepkg --printsrcinfo`. It provides an error-restore rollback and removes only the temporary backups it created. The dynamic upstream version is an unpinned/fragile source of truth, but the script fails closed if the page format changes and never runs fetched content. This is ordinary, well-structured AUR maintenance tooling; no genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Safe maintainer helper; fetches version string only; no malicious behavior.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed update-pkgver.sh. Status: SAFE -- Safe maintainer helper; fetches version string only; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: Inconclusive -- NO VERDICT
(Inconclusive 1 file: LicenseRef-Cursor.txt)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,682
  Completion Tokens: 20,554
  Total Tokens: 57,236
  Total Cost: $0.006774
  Execution Time: 448.83 seconds

Final Status: INCONCLUSIVE



Inconclusive Results:

LICENSES/LicenseRef-Cursor.txt: [INCONCLUSIVE] Audit error: LLMResponseError: LLM response message content is empty or missing
