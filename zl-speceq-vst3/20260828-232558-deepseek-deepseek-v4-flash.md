---
package: zl-speceq-vst3
pkgbase: zl-speceq
pkgver: 0.0.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12390
completion_tokens: 1560
total_tokens: 13950
cost: 0.00134192520
execution_time: 112.04
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 5169
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T23:25:57Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts; no malicious or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
---

zl-speceq-vst3 is built from zl-speceq
Cloning https://aur.archlinux.org/zl-speceq.git...
Cloned zl-speceq-vst3
Analyzing zl-speceq-vst3 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments and function definitions. There is no `pkgver()` function, and the global scope does not execute any dynamic code such as `eval`, `base64`, `curl`, `wget`, or similar payloads. The `source` array points to three pinned commits on github.com (the project’s own repository and two of its dependencies), each with a valid SHA‑256 checksum — no SKIP values. Both `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will source the PKGBUILD and download/extract the archives. Extraction writes files to disk but does not execute them, and `--nobuild`/`--noprepare` ensure that `prepare()`, `build()`, and `package()` are never invoked. No portion of the PKGBUILD that runs during these two commands can perform malicious actions.
</details>
<evidence></evidence>
<summary>Safe: no global code execution; pinned GitHub sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no global code execution; pinned GitHub sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 3 file(s) in the AUR repository. The 5169 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads the upstream source and its dependencies from the official GitHub repository (ZL-Audio) over HTTPS, with pinned commits and valid SHA256 checksums. No network requests are made to unexpected hosts. The `prepare()` function only renames directories and applies a `sed` substitution to use the system `highway` library instead of the bundled one—this is a routine packaging optimization, not malicious. There are no obfuscated commands, no execution of downloaded scripts, no base64 or eval usage, and no attempts to exfiltrate data or modify system files outside the package’s scope. The build and install steps are typical CMake/Ninja workflows. This file does not exhibit any signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .gitignore used in AUR package repositories. It ignores the local build directories (`pkg/`, `src/`) and generated package artifacts (`*.pkg.tar.zst`, `*.zip`), which is normal packaging practice to avoid committing build outputs. There is no executable code, no network activity, no file manipulation outside the build tree, and no obfuscation or suspicious content. It is benign.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR build artifacts; no malicious or suspicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts; no malicious or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only package metadata: name, version, description, licenses, dependencies, and source URLs with pinned SHA-256 checksums. All sources originate from the official ZL-Audio GitHub organization and are pinned to specific commits or tags. No executable code, network requests, obfuscation, or suspicious operations are present. The file conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,390
  Completion Tokens: 1,560
  Total Tokens: 13,950
  Total Cost: $0.001342
  Execution Time: 112.04 seconds

Final Status: SAFE


No issues found.
