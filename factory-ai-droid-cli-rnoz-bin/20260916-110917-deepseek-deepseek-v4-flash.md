---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.220.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 30894
completion_tokens: 18636
total_tokens: 49530
cost: 0.006039916596
execution_time: 265.96
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T11:09:17Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file with no malicious content.
  - file: LICENSE
    status: safe
    summary: "Safe license file: standard Apache-2.0 text, no code, no suspicious behavior."
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Install script contains only echo messages; no dangerous operations or external access.
  - file: PKGBUILD
    status: safe
    summary: No malicious code found; standard binary packaging.
  - file: patch_keybindings.py
    status: safe
    summary: Legitimate keybinding-rotation patch utility; no malicious behavior identified.
  - file: patch_title.py
    status: safe
    summary: Binary patcher with explicit, documented purpose; no malicious behavior visible.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD and does not execute `pkgver()`, `prepare()`, `build()`, or `package()`. The visible global scope consists of standard metadata assignments: `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `install`, `source`, and `sha256sums`. None of these contain command substitution, eval, curl/wget, or any other executable statement that would run while the file is sourced. The network download, checksum verification, and binary-install logic (curl to downloads.factory.ai, ripgrep download/verification, chmod/mv/install into `$pkgdir`) is all inside the `package()` function, which is not invoked by `--printsrcinfo`. That content is out of scope for this narrow gate and will be reviewed in the full PKGBUILD audit that follows. No genuinely malicious top-level execution risk exists for this command.
</details>
<evidence></evidence>
<summary>SAFE: `makepkg --printsrcinfo` only sources the global scope; all downloading and checksum logic lives inside `package()`, which does not run during this step.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- SAFE: `makepkg --printsrcinfo` only sources the global scope; all downloading and checksum logic lives inside `package()`, which does not run during this step.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a metadata file used by Arch Linux AUR helpers to describe package sources, dependencies, and checksums. It does not contain any executable code. The listed sources (`patch_title.py`, `patch_keybindings.py`, etc.) and their checksums are all explicitly provided; no checksums are set to `SKIP`. The dependencies (e.g., `curl`) and package conflicts/provides are standard for this type of package. There are no suspicious entries, network requests, or obfuscated commands. The source URLs point to the package&#39;s own upstream repository (`github.com/rNoz/factory-ai-droid-cli-rnoz`), which is expected. This file exhibits no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Metadata file with no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
[1/6] Reviewing LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file with no malicious content.
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text copy of the Apache License, Version 2.0, with an additional note clarifying that the packaging scripts are Apache-2.0 licensed while the upstream "Factory AI droid" binary remains property of Factory AI. No executable code, network operations, file manipulation, obfuscation, or suspicious instructions are present. The presence of HTML entities like `&quot;` is simply a serialization artifact in the provided text and does not indicate obfuscation. This file is standard licensing material found in a software package and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Safe license file: standard Apache-2.0 text, no code, no suspicious behavior.</summary>
</security_assessment>

[1/6] Reviewing LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
[2/6] Reviewing PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
+ Reviewed LICENSE. Status: SAFE -- Safe license file: standard Apache-2.0 text, no code, no suspicious behavior.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`.install` file) that only contains the expected functions `post_install`, `post_upgrade`, and `post_remove`. Each function only prints informational messages to the terminal using `echo`. There are no commands that download, execute, or modify files at the system or user level.

The only potentially attention-grabbing text is the post-remove message advising the user they can manually delete `~/.factory` with `rm -rf ~/.factory`. This is purely a displayed reminder in output text -- it is not executed by the script and contains no dynamic path construction or command substitution. No environment variables, secret files, network endpoints, or system paths are accessed. The script is completely benign and consistent with ordinary packaging practice.
</details>
<evidence></evidence>
<summary>Install script contains only echo messages; no dangerous operations or external access.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py, patch_title.py...
[3/6] Reviewing PKGBUILD, patch_keybindings.py, patch_title.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Install script contains only echo messages; no dangerous operations or external access.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads pre-built binaries from an upstream HTTPS server (downloads.factory.ai) and verifies checksums fetched from the same server. Patch scripts (patch_title.py, patch_keybindings.py) are included with pinned sha256sums and are applied conditionally based on user input. There is no obfuscated code, no eval/curl|bash, no exfiltration of sensitive data, no unexpected file operations outside the package directory, and no evidence of backdoors or reverse shells. The download approach does not pin checksums in the PKGBUILD itself but that is a reproducibility concern, not malicious behavior. Overall, the file exhibits standard binary packaging patterns for an AUR package that tracks upstream releases.
</details>
<evidence>
</evidence>
<summary>
No malicious code found; standard binary packaging.
</summary>
</security_assessment>

[4/6] Reviewing patch_keybindings.py, patch_title.py...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code found; standard binary packaging.
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a binary-patching utility that rotates keybindings (Ctrl-G, Ctrl-P, Ctrl-I) inside a prebuilt application binary from the factory-ai-droid-cli-rnoz package. It locates serialized keymap records using byte-level regular expressions, validates that exactly one unambiguous target exists (raising `PatchError` on mismatches or ambiguous matches), applies a length-preserving binary patch, and optionally writes the patched file (mode `0o755`) and runs a smoke test against it. The patched file written is the package's own binary, and the smoke test executes only that locally patched output — expected behavior for a patch tool, not a supply-chain attack.

No network requests, no obfuscated or encoded payloads, no eval/base64 tricks, no reads of sensitive system files, and no writes outside the patched destination/temp file are present. The guards and consistency checks (disjoint spans, action-guard verification, unique-match enforcement, byte-length preservation) indicate a deliberately careful tool rather than a script attempting a hidden side effect. The visible code is consistent with its stated purpose of failing safely when it cannot confidently patch the keymap.
</details>
<evidence></evidence>
<summary>Legitimate keybinding-rotation patch utility; no malicious behavior identified.</summary>
</security_assessment>

[5/6] Reviewing patch_title.py...
+ Reviewed patch_keybindings.py. Status: SAFE -- Legitimate keybinding-rotation patch utility; no malicious behavior identified.
LLM auditresponse for patch_title.py:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a binary patching utility. Its stated purpose is to locate the LLM session-titling guard in the Factory Droid CLI binary and replace it with an equal-length unconditional return (`if(true)return null;/**/`), preserving byte size and offset alignment. The implementation is consistent with that purpose: a regex scan for the `isNonInteractiveCLIMode()` guard, validation against surrounding context markers (`formatTitle`, `isSessionTitleManuallySet`, `firstUserText`), byte-level replacement, atomic write with permission preservation, and optional smoke testing with `--version`. The `--check`, `--dry-run`, and `--test` flags show the tool is designed for cautious, user-invoked use.

No genuinely malicious behavior is visible. There are no network requests or downloads, no obfuscated/encoded payloads, no credential or key access, no environment variable exfiltration, and no file reads or writes outside the user-specified binary and its destination. The AVX2 host check reads `/proc/cpuinfo` or invokes `sysctl` locally with fixed arguments; this is read-only CPU feature detection. The smoke test executes the patched binary, but only when the user explicitly passes `--test`, which is normal patcher functionality.

Two limitations are noted: (1) the provided content is truncated with `[...]` markers, so a full line-by-line audit of every branch was not possible; the visible portions, however, show no evidence of injected malicious behavior. (2) Binary patching inherently alters application behavior and thus carries supply-chain risk, but the patch here is explicit, documented, and limited to the described titling guard; nothing indicates it operates outside its stated scope.
</details>
<evidence></evidence>
<summary>Binary patcher with explicit, documented purpose; no malicious behavior visible.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed patch_title.py. Status: SAFE -- Binary patcher with explicit, documented purpose; no malicious behavior visible.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 30,894
  Completion Tokens: 18,636
  Total Tokens: 49,530
  Total Cost: $0.006040
  Execution Time: 265.96 seconds

Final Status: SAFE


No issues found.
