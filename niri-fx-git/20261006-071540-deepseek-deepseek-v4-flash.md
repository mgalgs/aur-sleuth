---
package: niri-fx-git
pkgver: 0.22.0.r80.g1e715c7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24316
completion_tokens: 5279
total_tokens: 29595
cost: 0.0068446576
execution_time: 55.9
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T07:15:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with upstream sources; no malicious behavior found.
  - file: LICENSE
    status: safe
    summary: Standard BSD Zero Clause license text. No executable or malicious content found.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE metadata, no security concerns.
  - file: README.Arch
    status: safe
    summary: Documentation file, no malicious code found.
  - file: niri-fx-studio.desktop
    status: safe
    summary: Standard desktop entry, no security concerns.
  - file: niri-fx-packaged.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
---

Materializing niri-fx-git from local mirror...
Materialized niri-fx-git
Analyzing niri-fx-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable assignments (pkgname, pkgver, depends, source, sha256sums, etc.) and function definitions (pkgver, prepare, build, check, package). There are no command substitutions, backticks, or any other code that executes during sourcing. All string definitions are static, with the exception of `${pkgver%%.r*}` in `provides` and a quoted variable in the source array — these are safe parameter expansions on existing variables. No malicious top-level code was found.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `niri-fx-git`. It declares sources pointing to the project's own upstream GitHub repositories (`jturbide/niri-fx` and `niri-wm/niri`), normal build/run dependencies, and local auxiliary files (desktop entries, README, LICENSE) with valid SHA-256 checksums. The `sha256sums = SKIP` entries apply only to the two git sources, which is required and normal for VCS packages.

No executable code, network exfiltration, obfuscation, or unexpected file operations are present. The `main` branch source is unpinned, which is a supply-chain hygiene consideration, but it is a standard `-git` packaging pattern and does not by itself constitute malicious behavior. Overall, this file shows no signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with upstream sources; no malicious behavior found.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, README.Arch...
[1/7] Reviewing LICENSE, PKGBUILD, README.Arch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with upstream sources; no malicious behavior found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License text. It contains only the license grant, disclaimer, and copyright notice for the package. There is no executable code, no network requests, no file operations, no obfuscation, and no system modifications. It is a routine license file that accompanies the package and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard BSD Zero Clause license text. No executable or malicious content found.</summary>
</security_assessment>

[1/7] Reviewing LICENSE, PKGBUILD, README.Arch, REUSE.toml...
[2/7] Reviewing PKGBUILD, README.Arch, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard BSD Zero Clause license text. No executable or malicious content found.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a standard REUSE configuration file used to declare copyright and license information for specific files in the repository. It contains no executable code, no network requests, no obfuscation, and no system operations. The content is purely declarative metadata (TOML format) with no potential for malicious behavior. It follows expected packaging practices for licensing compliance.
</details>
<evidence></evidence>
<summary>Standard REUSE metadata, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, README.Arch...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE metadata, no security concerns.
[3/7] Reviewing PKGBUILD, README.Arch, niri-fx-packaged.desktop...
LLM auditresponse for README.Arch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (README.Arch) is purely documentation. It contains no executable code, no embedded scripts, no network requests originating from the file itself, and no obfuscated commands. It serves solely to describe the package's features, the installer session structure, the adoption workflow for the upstream niri-fx compositor, and the build/acceptance scope. No supply chain attack indicators (exfiltration, backdoors, unexpected downloads, credential theft) are present within this file.
</details>
<evidence></evidence>
<summary>Documentation file, no malicious code found.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, README.Arch, niri-fx-packaged.desktop, niri-fx-studio.desktop...
[4/7] Reviewing PKGBUILD, niri-fx-packaged.desktop, niri-fx-studio.desktop...
+ Reviewed README.Arch. Status: SAFE -- Documentation file, no malicious code found.
LLM auditresponse for niri-fx-studio.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry used by the system's desktop environment to present "NiriFX Studio" in the application menu. It contains no executable logic, network requests, obfuscated strings, or file operations beyond specifying the command to launch (`/usr/bin/niri-fx studio --active`) and metadata such as categories and keywords. The `Exec` line references a binary in `/usr/bin`, which is normal for an installed package. There is no evidence of supply-chain compromise, data exfiltration, or any behavior deviating from a standard desktop launcher.
</details>
<evidence>

</evidence>
<summary>Standard desktop entry, no security concerns.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, niri-fx-packaged.desktop...
+ Reviewed niri-fx-studio.desktop. Status: SAFE -- Standard desktop entry, no security concerns.
LLM auditresponse for niri-fx-packaged.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop` entry for a display manager session. It contains only metadata fields (Name, Comment, Exec, Type, DesktopNames) and no executable code, network requests, obfuscation, or dangerous commands. The `Exec` line points to `/usr/bin/niri-fx-session`, a binary installed by the package itself, which is normal packaging practice. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed niri-fx-packaged.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR VCS package that fetches the main branch of `niri-fx` and a pinned commit of the upstream `niri` compositor. It patches `niri` using scripts from the `niri-fx` repository, then builds a custom session. All operations (git clone, Python build, cargo fetch, patch application, installation) are routine for this type of project.  

- SKIP checksums on git sources are normal for VCS packages.  
- The inline Python in `prepare()` loads and runs the project's own `build-niri-movement.py` script as part of the patching workflow; it does not fetch or execute untrusted remote code.  
- No obfuscation, network requests to unexpected hosts, exfiltration of data, or backdoors are present.  
- The package's purpose—modifying Niri with additional features—is fully consistent with the operations performed.

No genuinely malicious behavior is observed.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,316
  Completion Tokens: 5,279
  Total Tokens: 29,595
  Total Cost: $0.006845
  Execution Time: 55.90 seconds

Final Status: SAFE


No issues found.
