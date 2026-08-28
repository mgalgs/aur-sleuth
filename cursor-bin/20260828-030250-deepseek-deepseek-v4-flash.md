---
package: cursor-bin
pkgver: 3.18.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13375
completion_tokens: 2733
total_tokens: 16108
cost: 0.001669425646
execution_time: 36.77
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 4
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T03:02:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore listing standard packaging artifacts; no malicious behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: rg.sh
    status: safe
    summary: Benign argument substitution wrapper for ripgrep.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
---

Cloning https://aur.archlinux.org/cursor-bin.git...
Cloned cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope only defines package metadata, dependency lists, and a `source` array. There are no top-level command substitutions, `eval`, encoded payloads, or code that downloads and executes anything while the PKGBUILD is sourced. `pkgver` is a literal string, so `makepkg --printsrcinfo` and the source-fetch/extract phase do not execute untrusted code.

All network sources are the application&apos;s own upstream (`downloads.cursor.com`) and the Arch Linux GitLab packaging repository, which are expected locations for this package. The `SKIP` checksum on the cursor `.deb` is not a safety failure for this narrow gate: fetching and extracting an unverified artifact is precisely what these `makepkg` commands are designed to do, and `--nobuild`/`--noprepare` prevent `prepare()`, `build()`, and `package()` from running. The `package()` function contains only packaging/install logic and is out of scope for this step.
</details>
<evidence></evidence>
<summary>Source fetching and PKGBUILD sourcing are safe; no malicious execution paths.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Source fetching and PKGBUILD sourcing are safe; no malicious execution paths.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 4 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file listing build artifacts and intermediate outputs produced during packaging (the downloaded AppImage, the built `.pkg.tar.zst` package, and extracted files under `pkg/` and `src/`). It contains only file path patterns and no commands, no network requests, no encoded content, and no executable logic of any kind.

There is no evidence of malicious or dangerous behavior. The file performs no operations whatsoever; it only instructs git to ignore ordinary packaging artifacts, which is standard AUR maintenance practice.
</details>
<evidence>

</evidence>
<summary>
Benign .gitignore listing standard packaging artifacts; no malicious behavior present.
</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore listing standard packaging artifacts; no malicious behavior present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches the official Cursor binary from the project's own downloads URL and helper scripts from the Arch Linux packaging repository. No suspicious network requests, obfuscated code, or dangerous commands are present. The operations in `package()` are standard: extracting the deb, installing files, creating symlinks, and adjusting paths with sed. The `sha512sums[0]` override provides a checksum for the main binary, and the source array includes one SKIP (for the deb) but a specific hash is assigned immediately after, so the source is actually pinned. There are no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that replaces `--cursor-ignore` with `--ignore-file` in arguments passed to `/usr/bin/rg` (ripgrep). It does not perform any network operations, obfuscation, file manipulations, or execute untrusted code. The replacement is a straightforward string substitution, likely intended to adapt ripgrep's behavior for the cursor editor. There is no evidence of malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>Benign argument substitution wrapper for ripgrep.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed rg.sh. Status: SAFE -- Benign argument substitution wrapper for ripgrep.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only package metadata for the cursor-bin AUR package. All sources point to official domains (cursor.com for the binary, gitlab.archlinux.org for helper scripts, and a local file `rg.sh`). Checksums are provided for all sources (none set to SKIP). There is no obfuscated code, no dangerous command execution, no unexpected network requests, and no indication of supply-chain injection. The file is a standard AUR metadata file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,375
  Completion Tokens: 2,733
  Total Tokens: 16,108
  Total Cost: $0.001669
  Execution Time: 36.77 seconds

Final Status: SAFE


No issues found.
