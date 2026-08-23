---
package: eden-nightly-bin
pkgver: 1787422604.df05d3de23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 6597
completion_tokens: 1245
total_tokens: 7842
cost: 0.00048215622
execution_time: 28.25
files_reviewed: 1
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-23T04:45:47Z
file_verdicts:
  - file: Eden-Linux-df05d3de23-amd64-clang-pgo.AppImage
    status: skipped
    summary: "Skipping binary file: Eden-Linux-df05d3de23-amd64-clang-pgo.AppImage"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious behavior found.
---

Cloning https://aur.archlinux.org/eden-nightly-bin.git...
Cloned eden-nightly-bin
Analyzing eden-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable assignments and string expansions with no command substitutions, backticks, evals, or other dangerous operations. The `pkgver()` function is not defined, so sourcing the PKGBUILD and running `makepkg --printsrcinfo` will not execute any code beyond variable resolution. The `source` array downloads a single AppImage file from the project's own official nightly server (`nightly.eden-emu.dev`) with a fixed SHA-256 checksum. During this gate, `--noprepare` and `--nobuild` prevent the `prepare()`, `build()`, and `package()` functions from executing, so the AppImage is not executed or extracted. Therefore, fetching the source and parsing the PKGBUILD poses no risk of code execution or data exfiltration.
</details>
<summary>
Top-level code safe; source download from official server.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code safe; source download from official server.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Eden-Linux-df05d3de23-amd64-clang-pgo.AppImage...
[1/2] Reviewing PKGBUILD...
! Reviewed Eden-Linux-df05d3de23-amd64-clang-pgo.AppImage. Status: SKIPPED -- Skipping binary file: Eden-Linux-df05d3de23-amd64-clang-pgo.AppImage
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for a prebuilt binary package. It downloads an AppImage from the project's own upstream over HTTPS with a pinned sha256sum. The extraction and installation steps are routine: the AppImage is extracted, desktop files are patched (only the application's own .desktop entries), and files are placed into standard system directories (`/opt`, `/usr/share`, `/usr/bin`). The post-install hooks run only system cache refresh commands (`update-mime-database`, `update-desktop-database`) which is normal. There is no obfuscated code, no unexpected network requests, no exfiltration, and no execution of untrusted content beyond the declared source. No supply-chain attack indicators are present.</details>
<summary>Standard AUR binary package, no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Decided to review 0 additional files: 
Reviewing additional files...
Reviewing additional files...
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Eden-Linux-df05d3de23-amd64-clang-pgo.AppImage)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 6,597
  Completion Tokens: 1,245
  Total Tokens: 7,842
  Total Cost: $0.000482
  Execution Time: 28.25 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xvcll0y7/Eden-Linux-df05d3de23-amd64-clang-pgo.AppImage: [SKIPPED] Skipping binary file: Eden-Linux-df05d3de23-amd64-clang-pgo.AppImage
