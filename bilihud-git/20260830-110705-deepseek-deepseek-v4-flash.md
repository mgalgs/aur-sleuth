---
package: bilihud-git
pkgver: 0.7.0.r152.g71e14ee
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8897
completion_tokens: 1579
total_tokens: 10476
cost: 0.0009619890
execution_time: 39.84
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 252
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T11:07:05Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/bilihud-git.git...
Cloned bilihud-git
Analyzing bilihud-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable declarations and a `pkgver()` function. The `pkgver()` function reads a local `pyproject.toml` file using Python and runs `git rev-list` and `git rev-parse` — all local operations with no network access or downloads. The `source` array consists of two git repositories from the project's own upstream and a declared dependency repository, which is normal for AUR packages. There is no obfuscated code, no `eval`, `curl`, `wget`, or any command that could exfiltrate data or execute untrusted payloads during the `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` steps. The `prepare()`, `build()`, and `package()` functions contain standard build operations but are not executed by these commands, so they are out of scope for this gate.
</details>
<evidence></evidence>
<summary>PKGBUILD safe for source fetch and parsing</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD safe for source fetch and parsing
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bilihud/src/bilihud/assets/icon.png); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 252 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an AUR package. It contains no executable code, scripts, or commands. The sources point to two legitimate GitHub repositories (`locez/bilihud` and `xfgryujk/blivedm`), which is the expected upstream for this package. Checksums are set to `SKIP`, which is standard for VCS (`-git`) packages and does not indicate malice. The file lists dependencies, build tools, and other packaging metadata—all of which are normal. There is no evidence of injected malicious behavior, such as data exfiltration, code execution, or unexpected network requests.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR git package for `bilihud`. It fetches two upstream git repositories, handles a submodule by pointing it to a local dependency copy in `$srcdir`, and builds/installs a Python wheel with CMake options. All operations are consistent with normal packaging conventions:
- `SKIP` checksums are required for VCS sources.
- The submodule manipulation (`git config submodule.vendor/blivedm.url "$srcdir/blivedm"`) is a common technique to use a pre‑fetched local checkout instead of re‑cloning from the network at build time. The URL is set to a maintainer‑controlled path (`$srcdir/blivedm`), not an external or unknown host.
- No `curl|bash`, base64 decoding, `eval`, or any other obfuscation is present.
- The file only runs the project’s own build system (`python -m build`, `python -m installer`) and installs desktop files and licenses.
There is no evidence of exfiltration, backdoors, or execution of untrusted code from unexpected sources. The package behaves as expected for a git‑based AUR application.
</details>
<evidence></evidence>
<summary>Standard AUR git package, no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,897
  Completion Tokens: 1,579
  Total Tokens: 10,476
  Total Cost: $0.000962
  Execution Time: 39.84 seconds

Final Status: SAFE


No issues found.
