---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.227.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 37868
completion_tokens: 5208
total_tokens: 43076
cost: 0.002365916
execution_time: 115.14
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-25T11:15:40Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with upstream downloads and local patches.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no malicious content found.
  - file: patch_title.py
    status: safe
    summary: Benign binary patching script with no malicious behavior.
  - file: patch_keybindings.py
    status: safe
    summary: Legitimate keybinding rotation helper script.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Safe install script with only echo messages.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgname, pkgver, source, sha256sums, etc.) and a `package()` function definition. No command substitutions, function calls, or executable code appear outside of function bodies. When sourced for `makepkg --printsrcinfo`, no malicious code executes. The `package()` function's content (including downloads, checksum verification, and patching) is not invoked during this step and will be reviewed in the full audit.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution possible.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution possible.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Apache License 2.0 text with an additional note clarifying licensing for packaging scripts and the upstream binary. There is no executable code, no obfuscation, no network requests, and no file operations. The content is purely informational and follows standard packaging practices. No security issues are present.
</details>
<evidence></evidence>
<summary>License file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, LICENSE, factory-ai-droid-cli-rnoz-bin.install...
[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed LICENSE. Status: SAFE -- License file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the application binary and a bundled ripgrep from the package's own upstream domain (`https://downloads.factory.ai`) and verifies each download using a SHA-256 checksum fetched from the same domain. While fetching the checksum from the same server as the binary is a trust-on-first-use model (not ideal, but not malicious), the pattern is consistent with standard binary AUR packaging. All local patch scripts (`patch_title.py`, `patch_keybindings.py`, the install script, and the license) have pinned SHA-256 checksums. The `has_user_noconfirm()` function probes `/proc` to detect interactive AUR helpers and reads `/dev/tty` for user prompts; this is an unusual but non-malicious mechanism to avoid auto-applying patches in headless builds. No obfuscated code, unexpected network destinations, or dangerous commands (eval, base64, curl|bash) are present. The package's operations are confined to downloading its own upstream assets, verifying them, optionally applying local patches, and installing files into `$pkgdir` – all standard packaging activities.
</details>
<evidence></evidence>
<summary>Standard binary package with upstream downloads and local patches.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
[2/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with upstream downloads and local patches.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file describing the package. It contains no executable code, no network requests, no obfuscated content, and no suspicious file operations. All listed sources have pinned SHA256 checksums (none set to SKIP). The sources are local files (patch scripts, install script, license), which is typical for AUR packages that either build from in-tree patches or include helper scripts. The dependency on `curl` and optional `ripgrep` is consistent with a CLI tool. The URL points to an expected GitHub repository. There is no evidence of supply-chain attack in this file. Note that the actual content of the referenced scripts and install file would need separate auditing, but this metadata file itself is safe.
</details>
<evidence>
</evidence>
<summary>Metadata file, no malicious content found.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py, patch_title.py...
[3/6] Reviewing factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py, patch_title.py...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no malicious content found.
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward binary patcher that modifies a specific byte sequence in the Factory Droid CLI binary to disable a non-interactive check in session title generation. It operates entirely on local files, performing no network requests, no data exfiltration, and no arbitrary code execution beyond running the patched binary&#8217;s own `--version` as a smoke test. The replacement string is constructed deterministically with exact byte-length preservation, and all file operations use safe atomic write patterns. The only external data read is `/proc/cpuinfo` and `sysctl` for CPU feature detection, which is benign local system introspection. No obfuscation, encoded payloads, or unexpected system modifications are present. The behavior matches its documented purpose and is consistent with ordinary end-user customization rather than a supply-chain attack.
</details>
<evidence></evidence>
<summary>Benign binary patching script with no malicious behavior.</summary>
</security_assessment>

[4/6] Reviewing factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
+ Reviewed patch_title.py. Status: SAFE -- Benign binary patching script with no malicious behavior.
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `patch_keybindings.py` is a maintainer-provided tool that patches keybinding strings inside a precompiled binary (likely a Bun standalone executable) to rotate editor/model/queue shortcuts. Its logic is fully transparent: it uses standard Python regex and binary operations to replace byte sequences without changing binary size, and it invalidates Bun bytecode caches for modified modules so the application recompiles from the patched JavaScript source.  

The script does **not** perform any network operations, exfiltrate data, fetch or execute code from external hosts, use obfuscation, or tamper with system files outside the target binary. The only `subprocess` call runs the patched binary with `--version` when the `--test` flag is explicitly passed, which is a legitimate smoke-test pattern. All patches are applied in-place or to a specified destination file, and the script refuses to proceed if the binary layout is unknown or ambiguous (failing closed).  

There is no evidence of supply-chain attack, backdoor, credential theft, or other malicious behavior. The tool does exactly what its documentation and comments describe.
</details>
<evidence></evidence>
<summary>Legitimate keybinding rotation helper script.</summary>
</security_assessment>

[5/6] Reviewing factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed patch_keybindings.py. Status: SAFE -- Legitimate keybinding rotation helper script.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script containing only `post_install`, `post_upgrade`, and `post_remove` functions. Each function simply prints informational messages via `echo` statements. There are no dangerous commands (e.g., `curl`, `wget`, `eval`, `base64`), no file modifications, no network requests, and no obfuscated code. The script does nothing beyond displaying text to the user during package installation, upgrade, and removal. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Safe install script with only echo messages.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Safe install script with only echo messages.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,868
  Completion Tokens: 5,208
  Total Tokens: 43,076
  Total Cost: $0.002366
  Execution Time: 115.14 seconds

Final Status: SAFE


No issues found.
