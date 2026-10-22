---
package: cursor-bin
pkgver: 3.27.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13211
completion_tokens: 4426
total_tokens: 17637
cost: 0.002007733
execution_time: 46.61
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T03:04:16Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore containing only build artifact exclusion patterns; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Pure package metadata with pinned checksums and official sources; no malicious behavior.
  - file: rg.sh
    status: safe
    summary: Safe wrapper script for ripgrep argument substitution.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging of official pinned Cursor binary; no malicious behavior found.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and a function definition at the top level. No command substitutions, backticks, `eval`, `source`, or any other executable statements are present in the global scope. The `source` array uses variable expansion for the download URL, but that is standard and does not execute commands. The `sha512sums` array includes a `SKIP` entry, which is not executable code. Therefore, running `makepkg --printsrcinfo` (which only sources the top-level scope) is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code found.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used by an AUR maintainer to exclude build artifacts (downloaded AppImage, built package tarball, extracted staging files, sources) from version control. It contains only plain file and directory path patterns, with no executable code, no commands, no network operations, no obfuscation, and no file modification logic. The content is entirely consistent with routine packaging workflow and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore containing only build artifact exclusion patterns; no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore containing only build artifact exclusion patterns; no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file for `cursor-bin`. It contains only package metadata: name, version, description, URL, dependencies, architecture, license, build options, source URLs, and SHA-512 checksums.

All remote sources point to expected upstream locations: the official Cursor download domain (`downloads.cursor.com`) and the official Arch Linux packaging repository (`gitlab.archlinux.org`). The remaining source is a local `rg.sh` script. SHA-512 checksums are provided for every source entry, so the downloaded artifacts are pinned and expected to be verified during the build.

There is no embedded code, no network exfiltration, no obfuscated content, and no unexpected command execution in this file. The presence of the `code.sh` and `code.mjs` files from the official Arch packaging repository is consistent with normal packaging practice for repackaging upstream binaries. No injective or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Pure package metadata with pinned checksums and official sources; no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Pure package metadata with pinned checksums and official sources; no malicious behavior.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `rg.sh` is a minimal shell wrapper that replaces the argument `--cursor-ignore` with `--ignore-file` before invoking `/usr/bin/rg`. No network requests, obfuscation, dangerous commands, or unexpected system modifications are present. The script performs a simple string substitution and exec, which is a standard packaging practice for adjusting tool behavior. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence>

</evidence>
<summary>Safe wrapper script for ripgrep argument substitution.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Safe wrapper script for ripgrep argument substitution.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practice for a prebuilt binary application. It downloads a pinned `.deb` from the official Cursor downloads domain (`downloads.cursor.com`) and two helper scripts from the Arch Linux GitLab, then extracts files into `$pkgdir` and adapts them to use the system Electron, Node, xdg-open, and a ripgrep wrapper. The operations used (`bsdtar`, `tar`, `sed`, `install`, `ln`, `mv`) are all standard for packaging and do not perform any unexpected network requests, downloads, or code execution outside the normal build/install flow.

There is no obfuscated code, no `eval`/`base64`/`curl|bash`, no tampering with user files, and no exfiltration. The checksum handling is slightly unusual (`SKIP` followed by an explicit `sha512sums[0]` override), and the helper `rg.sh` is a local file not visible in this snippet, but these are at most hygiene/reproducibility considerations, not evidence of malicious behavior. The package stays within its own application scope.
</details>
<evidence></evidence>
<summary>Standard packaging of official pinned Cursor binary; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging of official pinned Cursor binary; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,211
  Completion Tokens: 4,426
  Total Tokens: 17,637
  Total Cost: $0.002008
  Execution Time: 46.61 seconds

Final Status: SAFE


No issues found.
