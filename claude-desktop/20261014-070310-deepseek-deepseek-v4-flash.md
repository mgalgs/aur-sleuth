---
package: claude-desktop
pkgver: 2.37337.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16889
completion_tokens: 2882
total_tokens: 19771
cost: 0.002061423
execution_time: 53.28
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T07:03:09Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned official sources; no malicious behavior found.
  - file: claude-desktop.sh
    status: safe
    summary: Standard Electron launcher wrapper; reads user flags and executes the intended binary. No malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD repackages official Anthropic deb with pinned checksums; no malicious behavior found.
---

Materializing claude-desktop from local mirror...
Materialized claude-desktop
Analyzing claude-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the global/top-level scope. No command substitutions, backtick executions, `eval` invocations, or any other code that would execute during sourcing. The `package()` function is defined but its body is not executed by `makepkg --printsrcinfo`. All source URLs and checksums are declared as simple string arrays. There is no top-level code that downloads, runs, or exfiltrates data. Running `makepkg --printsrcinfo` on this file poses no execution risk.
</details>
<evidence></evidence>
<summary>No top-level code execution, safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution, safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR git repository. It only excludes build artifacts and local working directories such as `*.deb`, `*.pkg.tar*`, `src/`, and `pkg/` from version control. There is no executable code, no network access, no file manipulation outside of normal git ignore behavior, and no obfuscated content. The comments accurately describe standard makepkg behavior and are consistent with routine AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, claude-desktop.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, claude-desktop.sh...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file; no malicious or suspicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains standard AUR packaging metadata for the claude-desktop package. Sources are fetched from the official Anthropic download host (`downloads.claude.ai`) as `.deb` packages, with pinned SHA-256 checksums for both x86_64 and aarch64 variants. Dependencies are typical runtime libraries for an Electron-based desktop application, and the optional dependencies (keyring, portals, SSH, virtual machine support) are consistent with the stated application purpose. No suspicious network endpoints, obfuscated content, unusual commands, or unexpected file operations are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned official sources; no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned official sources; no malicious behavior found.
LLM auditresponse for claude-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for an Electron application. It reads optional user-defined flags from a config file, detects a Wayland session, and passes the resulting arguments to the packaged binary at `/usr/lib/claude-desktop/claude-desktop`. The config parsing uses only shell word splitting (`read -r -a`) and does not evaluate or execute any content from the config file. No network requests, downloads, obfuscated code, encoded payloads, or writes to system locations are present. The script performs no operation outside the intended application launch workflow. Reading a user-supplied flags file and passing the flags to the program is a common and benign packaging pattern.

The only minor note is that flags in the config file are passed directly to the Electron process, but this is expected launcher functionality and the file is under the user's own control. There is no evidence of injected malicious code or supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>
Standard Electron launcher wrapper; reads user flags and executes the intended binary. No malicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed claude-desktop.sh. Status: SAFE -- Standard Electron launcher wrapper; reads user flags and executes the intended binary. No malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD repackages Anthropic's official Debian package: sources are downloaded from the vendor's own `downloads.claude.ai` domain, and both the x86_64 and aarch64 `.deb` archives have pinned SHA-256 checksums. The `package()` function only extracts the `.deb` payload (`data.tar.xz`), swaps a symlink for a launcher script, and creates compatibility symlinks for the Cowork VM stack (virtiofsd and OVMF firmware). No network requests or command execution happen at build time beyond fetching the declared upstream sources, and there is no obfuscated code, no `eval`/`base64`/`curl|bash`, and no access to system credentials or unrelated files.

The `chmod 4755` on Chrome's `chrome-sandbox` is standard for Chromium-based packages and matches upstream behavior; Arch enables unprivileged user namespaces so this is only a fallback. The symlinks under `/usr/bin` and `/usr/share/edk2` are compatibility shims that map Debian paths to Arch's package layout and are consistent with the declared `depends`. The one local source file, `claude-desktop.sh`, is not visible here, but nothing in the PKGBUILD treats it in a dangerous way; it is installed as a launcher, which is normal packaging practice. No injected or supply-chain behavior was found.
</details>
<evidence>
</evidence>
<summary>
PKGBUILD repackages official Anthropic deb with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD repackages official Anthropic deb with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,889
  Completion Tokens: 2,882
  Total Tokens: 19,771
  Total Cost: $0.002061
  Execution Time: 53.28 seconds

Final Status: SAFE


No issues found.
