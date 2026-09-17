---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.221.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 31594
completion_tokens: 4725
total_tokens: 36319
cost: 0.003636744664
execution_time: 120.86
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T03:21:32Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with checksum verification; no malicious indicators.
  - file: patch_keybindings.py
    status: safe
    summary: Legitimate binary patcher with no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file, no malicious content.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: No malicious code; only informational echo statements.
  - file: patch_title.py
    status: safe
    summary: Benign binary patcher with no malicious behavior.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
  <decision>SAFE</decision>
  <details>
    Sourcing this PKGBUILD with `makepkg --printsrcinfo` only executes top-level/global statements. The visible top-level content consists only of standard metadata assignments (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `source`, `sha256sums`, `install`) and function definitions. No top-level command substitution, `eval`, `base64`, `curl`, `wget`, or mutable external download-and-execute pattern is present at global scope.

    The download/checksum/installation code involving `curl`, `downloads.factory.ai`, `rg`, `droid`, and `chmod` appears inside `package()`, which is not executed by `makepkg --printsrcinfo`. That code should be reviewed in the full PKGBUILD audit because it will run during actual package creation, but it is out of scope for this narrow gate.

    A missing or skipped checksum would not be grounds for an UNSAFE decision here, and no sources are downloaded or verified during `--printsrcinfo`.
  </details>
  <evidence></evidence>
  <summary>No malicious or dangerous code executes at source/parse time. Dangerous-looking download and installation logic is confined to `package()`, which does not run during `makepkg --printsrcinfo`.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious or dangerous code executes at source/parse time. Dangerous-looking download and installation logic is confined to `package()`, which does not run during `makepkg --printsrcinfo`.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Apache License 2.0 text with a brief note clarifying the licensing of the packaging scripts and the upstream binary. There is no executable code, no network requests, no system modifications, and no obfuscation. It is purely a legal document and presents no security concerns.</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the upstream binary from the official Factory.ai domain, verifies its checksum via a separate .sha256 file, applies optional patches via included Python scripts (with pinned checksums), and installs to standard paths. No obfuscation, no unexpected network destinations, no system-level backdoors. The interactive prompt for patching is unusual but not malicious. The package follows standard AUR practices for a precompiled binary with verification.
</details>
<evidence></evidence>
<summary>Standard binary package with checksum verification; no malicious indicators.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with checksum verification; no malicious indicators.
[2/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a custom patcher that modifies keybinding assignments inside a pre-built binary of the Factory Droid application. It performs targeted byte‑pattern replacements using regular expressions, carefully checking for size invariance to avoid corrupting the binary. The script only operates on a local file supplied as a command‑line argument, does not make any network requests, does not read or exfiltrate sensitive system data, and does not execute arbitrary code from external sources. All imports are from the Python standard library. The optional `--test` flag runs the patched binary with `--version` as a smoke test, which is explicit and transparent. The overall behavior is consistent with a legitimate AUR maintainer helper for adjusting keyboard shortcuts at the binary level.
</details>
<evidence></evidence>
<summary>Legitimate binary patcher with no malicious behavior.</summary>
</security_assessment>

[3/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed patch_keybindings.py. Status: SAFE -- Legitimate binary patcher with no malicious behavior.
[3/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install, patch_title.py...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file. It lists the package name, version, dependencies, and source files. All sources are local files within the AUR repository (`patch_title.py`, `patch_keybindings.py`, `factory-ai-droid-cli-rnoz-bin.install`, `LICENSE`), each accompanied by a SHA256 checksum. No external network downloads, obfuscated code, or suspicious operations are present. The only external dependency is `curl`, which is a common tool and likely used by the upstream application. There are no encoded commands, backdoors, or data exfiltration indicators. The file simply describes the package structure and is safe.
</details>
<evidence></evidence>
<summary>AUR metadata file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing factory-ai-droid-cli-rnoz-bin.install, patch_title.py...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file, no malicious content.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `PKGBUILD` install script (`factory-ai-droid-cli-rnoz-bin.install`). It contains three hook functions: `post_install`, `post_upgrade`, and `post_remove`. Each function only prints informational messages to the user (via `echo`). There are no dangerous commands (no `eval`, `curl`, `wget`, `base64`, `chmod`, `cp`, `rm` on non-standard paths, network requests, obfuscation, or any file operations outside the packaging norm). The content is benign and consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>No malicious code; only informational echo statements.</summary>
</security_assessment>

[5/6] Reviewing patch_title.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- No malicious code; only informational echo statements.
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `patch_title.py` is a binary patcher that replaces a specific non-interactive guard in the Factory Droid CLI with an unconditional return, preserving exact byte length. The code is straightforward and performs no network requests, no obfuscated payloads, no data exfiltration, and no dangerous command execution beyond running the patched binary with `--version` for a smoke test. It reads `/proc/cpuinfo` and runs `sysctl` locally to check CPU features, which is normal system introspection. The file operations are limited to reading, writing, and atomic replacement of the target binary. No malicious behavior is present; the script serves its stated purpose of eliminating LLM session-titling token waste.
</details>
<evidence></evidence>
<summary>Benign binary patcher with no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed patch_title.py. Status: SAFE -- Benign binary patcher with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,594
  Completion Tokens: 4,725
  Total Tokens: 36,319
  Total Cost: $0.003637
  Execution Time: 120.86 seconds

Final Status: SAFE


No issues found.
