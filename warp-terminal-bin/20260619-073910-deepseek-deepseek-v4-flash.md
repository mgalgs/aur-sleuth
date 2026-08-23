---
package: warp-terminal-bin
pkgver: 0.2026.06.17.09.49.stable_01
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 9500
completion_tokens: 1069
total_tokens: 10569
cost: 0.00104742
execution_time: 19.37
files_reviewed: 3
files_skipped: 0
date: 2026-06-19T07:39:10Z
file_verdicts:
  - file: LICENSE.txt
    status: safe
    summary: Plain text license notice, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; no signs of malicious code.
  - file: src/opt/warpdotdev/warp-terminal/resources/bundled/skills/create-skill/scripts/__init__.py
    status: safe
    summary: Empty file, no security concerns.
---

Cloning https://aur.archlinux.org/warp-terminal-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-oywgw70v...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-oywgw70v
Analyzing warp-terminal-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-oywgw70v) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments and source definitions in its global scope. There is no `pkgver()` function or any top-level command substitution that could execute code during sourcing. The source array points to the official Warp releases domain (`releases.warp.dev`) with pinned checksums (no SKIP). Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will simply fetch the listed sources and parse the PKGBUILD, with no risk of executing malicious code. The `package()` function is not invoked during these commands, so its contents are out of scope for this gate.
</details>
<summary>No dangerous code during sourcing or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous code during sourcing or source fetching.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE.txt...
LLM auditresponse for LICENSE.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text license notice stating that Warp is currently closed-source and directing readers to a GitHub discussion about potential open-sourcing. It contains no executable code, no network requests, no file operations, and no obfuscation. There is no evidence of malicious behavior or supply-chain attack.
</details>
<summary>Plain text license notice, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE.txt. Status: SAFE -- Plain text license notice, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads prebuilt packages from the official Warp releases domain (`releases.warp.dev`) and includes valid SHA-256 checksums for all sources. The `package()` function performs standard installation operations: extracting the downloaded archive with `bsdtar`, copying files to `$pkgdir`, installing the license file, and conditionally creating a symlink for the `warp-terminal` binary. There is no obfuscated code, no unexpected network requests, no dangerous commands (eval, curl|bash, etc.), and no manipulation of data outside the application's own scope. This is a straightforward binary repackaging with proper checksum verification—entirely consistent with normal AUR practices.
</details>
<summary>Standard AUR binary package; no signs of malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; no signs of malicious code.
Reviewed all required files.
Deciding which files to review next...
Decided to review 1 additional files: src/opt/warpdotdev/warp-terminal/resources/bundled/skills/create-skill/scripts/__init__.py
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing src/opt/warpdotdev/warp-terminal/resources/bundled/skills/create-skill/scripts/__init__.py...
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `__init__.py` is empty, containing no code or content. There are no instructions, network requests, file operations, or any other potentially malicious actions to analyze. The absence of any content means there is nothing that could pose a security risk.
</details>
<summary>Empty file, no security concerns.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed src/opt/warpdotdev/warp-terminal/resources/bundled/skills/create-skill/scripts/__init__.py. Status: SAFE -- Empty file, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,500
  Completion Tokens: 1,069
  Total Tokens: 10,569
  Total Cost: $0.001047
  Execution Time: 19.37 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-warp-terminal-bin.txt
Final Status: SAFE


No issues found.
