---
package: ryzenadj
pkgver: 0.19.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 15095
completion_tokens: 1987
total_tokens: 17082
cost: 0.0015217062
execution_time: 92.92
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 37
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T11:11:00Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard LGPL-3.0 license text, no security issues.
  - file: README.md
    status: safe
    summary: Simple README file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: "Safe: standard .SRCINFO with pinned source and checksum."
---

Cloning https://aur.archlinux.org/ryzenadj.git...
Cloned ryzenadj
Analyzing ryzenadj AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and standard function definitions (build, package). There is no top-level command execution, no `pkgver()` function, no obfuscation, and no network requests beyond the declared GitHub source tarball which has a valid SHA-256 checksum. Running `makepkg --nobuild --nodeps --noprepare` will only fetch and extract that tarball; no malicious code executes during sourcing or source acquisition.
</details>
<evidence></evidence>
<summary>PKGBUILD is clean; no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD is clean; no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/RyzenAdj-0.19.0/lib/ryzenadj.h); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 37 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for a project built with `makepkg`, ignoring the `src/` and `pkg/` build directories and the compiled binary `ryzenadj*`. There is no executable code, no network requests, no obfuscation, and no system modifications. The content is entirely benign and consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the GNU Lesser General Public License version 3 (LGPL-3.0) text. It contains only standard license boilerplate and no executable code, network requests, file operations, obfuscation, or any other potentially malicious content. It is a normal license file included with many open-source projects and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard LGPL-3.0 license text, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, README.md...
[2/5] Reviewing .SRCINFO, PKGBUILD, README.md...
+ Reviewed LICENSE. Status: SAFE -- Standard LGPL-3.0 license text, no security issues.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard README.md containing only a title and a short description of the AUR package. It contains no executable code, no scripts, no network requests, and no commands. There is no evidence of malicious or suspicious activity.
</details>
<evidence>
</evidence>
<summary>Simple README file, no security concerns.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed README.md. Status: SAFE -- Simple README file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard build recipe for the RyzenAdj tool. It fetches a tagged release tarball from the official GitHub repository using HTTPS, verifies it with a SHA256 checksum, then builds and installs using cmake and standard install commands. No suspicious network requests, obfuscated code, or system tampering is present. All operations are within the expected scope of packaging an application from its upstream source.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It defines a package called `ryzenadj` with a source tarball from the official GitHub repository (https://github.com/FlyGoat/RyzenAdj). The source is pinned to version v0.19.0 and has a valid SHA256 checksum. There are no obfuscated commands, no network requests beyond the expected source download, and no references to suspicious hosts or encoded operations. The optdepends field suggests a kernel module from the AUR, which is a normal dependency for this type of hardware-access tool. The file contains no executable code and follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Safe: standard .SRCINFO with pinned source and checksum.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Safe: standard .SRCINFO with pinned source and checksum.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,095
  Completion Tokens: 1,987
  Total Tokens: 17,082
  Total Cost: $0.001522
  Execution Time: 92.92 seconds

Final Status: SAFE


No issues found.
