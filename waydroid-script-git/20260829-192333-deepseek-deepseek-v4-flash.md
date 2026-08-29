---
package: waydroid-script-git
pkgver: r189.d5289cf
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 16032
completion_tokens: 2604
total_tokens: 18636
cost: 0.00174847680
execution_time: 39.97
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 68
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T19:23:33Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: LICENSE
    status: safe
    summary: License file with no security issues.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file, no security risks.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: REUSE.toml
    status: safe
    summary: Standard licensing metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/waydroid-script-git.git...
Cloned waydroid-script-git
Analyzing waydroid-script-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and a `pkgver()` function that runs standard git commands (`git rev-list --count HEAD` and `git rev-parse --short HEAD`) after cloning the upstream repository. There is no global-scope code that downloads or executes external payloads, no obfuscated or encoded commands, and no network requests beyond the declared `git+https://github.com/casualsnek/waydroid_script.git` source. The `sha256sums` entry is `SKIP`, which is normal for VCS sources and does not pose a risk for the source-fetching phase. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only clone the repository and source the PKGBUILD; no malicious code will execute during these steps. The suspicious-looking content in the `package()` function (e.g., `rm -rf`) will not run because `--nobuild` stops before that phase. All operations are consistent with standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; no dangerous code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD; no dangerous code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/waydroid_script/main.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 68 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style software license, containing no executable code, network requests, obfuscation, or system operations. It is purely a legal text file and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[1/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style license text. It contains no executable code, no network requests, no file operations, and no instructions. It is simply a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>License file with no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[2/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` configuration file used by Git to exclude certain files and directories from version control. It contains patterns to ignore build artifacts (`src/`, `pkg/`), the `waydroid_script/` directory, and common temporary files (`*.log`, `*.tar*`). There is no executable code, network requests, obfuscation, or any other behavior that could indicate a security threat. This file is completely benign and follows normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Benign .gitignore file, no security risks.</summary>
</security_assessment>

[3/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file, no security risks.
[3/6] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `waydroid-script-git` AUR package. It contains only package metadata (name, version, dependencies, source URL, etc.) and no executable code. The `sha256sums = SKIP` entry is expected for VCS (git) sources and is not a security concern. The dependencies (`python-requests`, `python-tqdm`, `dbus-python`, `waydroid`, etc.) align with the stated purpose of adding OpenGApps/Magisk/libhoudini to Waydroid. No suspicious network requests, obfuscated content, or dangerous commands are present. The file is purely declarative and performs no actions on its own.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard REUSE configuration file (REUSE.toml) used to declare copyright and licensing metadata for files in the repository. It contains no executable code, no network requests, no system operations, and no obfuscated content. The file simply associates a list of file patterns with the copyright statement "Arch Linux contributors" and the license "0BSD". There is no evidence of malicious behavior or any deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard licensing metadata file, no security issues.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Standard licensing metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch User Repository (AUR) package for a git-based Python script. It clones the upstream repository from the official GitHub URL (`https://github.com/casualsnek/waydroid_script`), copies files to `/opt/waydroid-script`, creates a symlink, and compiles Python bytecode. Apart from the typical `SKIP` checksum (required for VCS sources) and the use of an unpinned git branch (normal for `-git` packages), there are no signs of obfuscated code, unexpected network requests, data exfiltration, or execution of untrusted third-party content. All operations serve the package&#x27;s stated purpose of installing helper scripts for Waydroid.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,032
  Completion Tokens: 2,604
  Total Tokens: 18,636
  Total Cost: $0.001748
  Execution Time: 39.97 seconds

Final Status: SAFE


No issues found.
