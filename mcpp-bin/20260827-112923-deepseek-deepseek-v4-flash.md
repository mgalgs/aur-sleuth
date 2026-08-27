---
package: mcpp-bin
pkgver: 2026.8.27.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 10828
completion_tokens: 2303
total_tokens: 13131
cost: 0.00122731168
execution_time: 38.28
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 7
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-27T11:29:20Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Standard launcher script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content found.
---

Cloning https://aur.archlinux.org/mcpp-bin.git...
Cloned mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions (`pkgname`, `pkgver`, `source` arrays, etc.) and function definitions (`package()`). No code in the global/top-level scope or `pkgver()` function (which is not defined, so default behavior applies) performs any dangerous operations. The `source` entries point to official GitHub releases of the `mcpp` project, which is the expected upstream. Downloading and extracting these archives is the intended purpose of the `makepkg` commands and does not execute any untrusted code. There are no top-level command substitutions, network requests beyond the declared sources, or obfuscated code. The `sha256sums` array has `SKIP` for the generic entry, but the arch-specific entries have valid checksums. This is acceptable for this narrow safety gate, which only evaluates whether running the two specified commands is dangerous. They are not.
</details>
<evidence></evidence>
<summary>Safe; no top-level malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe; no top-level malicious code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/mcpp-2026.8.27.1-linux-x86_64/bin/mcpp, src/mcpp-2026.8.27.1-linux-x86_64/registry/bin/xlings); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, mcpp.sh...
[0/3] Reviewing .SRCINFO, mcpp.sh, PKGBUILD...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `mcpp.sh` is a standard launcher wrapper for an application installed under `/opt/mcpp`. It sets environment variables `MCPP_HOME` and `MCPP_VENDORED_XLINGS` to per-user writable locations (defaulting to `~/.mcpp` and the bundled xlings path), then executes the main binary. There is no obfuscation, no network activity, no file operations beyond reading environment variables, and no execution of untrusted code. The behavior is entirely consistent with expected AUR packaging practices for self-contained applications that require runtime writable directories. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for mcpp-bin is a straightforward packaging script for prebuilt binaries from the official GitHub releases of the mcpp-community/mcpp project. It downloads tarballs from the project&#x27;s own release URLs (`https://github.com/mcpp-community/mcpp/releases/download/...`) and provides SHA256 checksums for both architecture-specific sources, with only the shared launcher script (`mcpp.sh`) having `SKIP`—which is a common packaging choice and not malicious by itself. The `package()` function performs standard file installations into `/opt/mcpp` and `/usr/bin`, with no unexpected network operations, obfuscated code, or system modifications outside the package&#x27;s own scope. All operations are consistent with normal AUR packaging practices for a binary release.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file. It declares sources for prebuilt binaries from the official GitHub releases of the `mcpp` project, with pinned SHA256 checksums for both `x86_64` and `aarch64` architectures. The only source without a checksum is `mcpp.sh`, which is likely a helper script bundled with the package; `sha256sums = SKIP` is not uncommon for such auxiliary files and does not by itself indicate malicious intent. No obfuscated commands, unexpected network requests, or other red flags are present. The file is purely declarative and contains no executable code.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,828
  Completion Tokens: 2,303
  Total Tokens: 13,131
  Total Cost: $0.001227
  Execution Time: 38.28 seconds

Final Status: SAFE


No issues found.
