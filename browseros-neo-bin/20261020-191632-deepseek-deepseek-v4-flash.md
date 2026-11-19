---
package: browseros-neo-bin
pkgver: 0.51.1.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17033
completion_tokens: 5287
total_tokens: 22320
cost: 0.002512237
execution_time: 51.33
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T19:16:32Z
file_verdicts:
  - file: browseros-neo.install
    status: safe
    summary: Standard package install script; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD fetches upstream GitHub binaries and runs smoke test; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR manifest, no executable code, safe.
---

Materializing browseros-neo-bin from local mirror...
Materialized browseros-neo-bin
Analyzing browseros-neo-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions at the top level. No command substitutions, backtick expansions, or dangerous commands (curl, wget, eval, base64, exec) appear in the global scope that would execute when the file is sourced for `makepkg --printsrcinfo`. The `pkgver()`, `prepare()`, and `package()` functions are defined but not invoked during this step, so their content is out of scope for this gate. The `sha256sums` set to `SKIP` is standard and harmless. There is no evidence of malicious code that would execute during sourcing.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code found during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, browseros-neo.install...
LLM auditresponse for browseros-neo.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script. It performs the normal post-install actions of setting the setuid bit on a Chrome-compatible sandbox helper (`/usr/lib/browserclaw/chrome_sandbox`), refreshing desktop database and icon caches, and printing informational messages. The `curl ... | jq` line is only printed as a suggestion for the user to check releases; it is not executed by the script. No obfuscation, unexpected downloads, data exfiltration, or execution of remote code is present. The setuid `chmod 4755` on the sandbox helper is conventional for Chromium-based browsers and is not evidence of malice.
</details>
<evidence>
</evidence>
<summary>
Standard package install script; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed browseros-neo.install. Status: SAFE -- Standard package install script; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is an auto-rolling AUR package that fetches a prebuilt `.deb` from the upstream project's own GitHub releases (`browseros-ai/BrowserOS`), extracts it with `bsdtar`, and installs it. The `curl` calls in `pkgver()` and `prepare()` target GitHub endpoints belonging to the package's declared upstream; the only executable launched during the build is the package's own browser binary in a `--headless --version` smoke test. The embedded helper scripts (`browseros-neo-doctor.sh` and the `browserclaw` wrapper) operate only on the application's own state under `~/.browserclaw` and `~/.config/browser-claw`, plus a standard `exec` of the installed browser. The `chmod 4755` on `chrome_sandbox` is normal for Chromium-based browsers.

The main concerns are hygiene/reproducibility, not malice: the `.deb` is downloaded at build time without a checksum, `pkgver()` resolves the latest upstream tag dynamically, and the `source` entry is a dummy AUR git checkout used to trigger `pkgver()`. These are common AUR patterns and are not evidence of a supply-chain attack. One minor robustness note: the doctor script interpolates a value read from `seaql_migrations` into a `sqlite3` command without shell quoting, which is a local code-quality issue but not a threat in this packaging context. No obfuscation, unexpected network destinations, data exfiltration, or injected backdoor behavior was found.
</details>
<evidence>
</evidence>
<summary>
PKGBUILD fetches upstream GitHub binaries and runs smoke test; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD fetches upstream GitHub binaries and runs smoke test; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata manifest. It contains no executable code, shell commands, network requests, or obfuscated content. All entries (depends, makedepends, source, sha256sums) conform to normal packaging practices for a pre-built binary (-bin) package. The SKIP checksum and self-referencing VCS source are expected for this package class. The duplicate 'provides' entry is a minor hygiene issue but not a security threat. No evidence of malicious or dangerous behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>Standard AUR manifest, no executable code, safe.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR manifest, no executable code, safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,033
  Completion Tokens: 5,287
  Total Tokens: 22,320
  Total Cost: $0.002512
  Execution Time: 51.33 seconds

Final Status: SAFE


No issues found.
