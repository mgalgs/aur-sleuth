---
package: opencode-desktop-bin
pkgver: 2.0.15
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15588
completion_tokens: 1930
total_tokens: 17518
cost: 0.001723209488
execution_time: 162.27
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-23T11:03:41Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR repackaging; no malicious behavior found.
---

Materializing opencode-desktop-bin from local mirror...
Materialized opencode-desktop-bin
Analyzing opencode-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable assignments and function definitions. No commands are executed at global scope—no `eval`, `curl`, `wget`, or other dangerous invocations. The `latestver()` function is defined but never called, and `package()` is a packaging function that will not run during `makepkg --printsrcinfo`. Therefore, sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level execution, sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution, sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no suspicious operations. It is purely a legal document and does not pose any security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default, then explicitly allows essential packaging files (PKGBUILD, .SRCINFO), auxiliary files (install scripts, patches, systemd units, desktop entries, icons, configs, licenses, readme, etc.). There is no executable code, no network activity, no obfuscation, and no deviation from expected AUR repository practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repository.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It declares the package name, version, description, architecture-specific sources, dependencies, and checksums. All source URLs point to the official upstream project (opencode.ai and GitHub raw content). All SHA-256 checksums are provided and non-SKIP, indicating pinned, verified sources. There are no executable instructions, no network requests beyond source declarations, and no suspicious or obfuscated content. The file conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads official upstream `.deb` packages from `https://opencode.ai/files/bin/` with provided SHA‑256 checksums (no `SKIP`). The `package()` function extracts the archive, prunes bundled Electron and musl artifacts, replaces them with the system‑side `electron44`, and creates a small shim entry point (`main.mjs`) via a heredoc embedded in the PKGBUILD itself—not from a remote source. The shim only adjusts `process.resourcesPath` and seeds a CLI symlink under the app’s user data directory; it performs no network access, no file exfiltration, and no execution of uncontrolled code. The launcher script is likewise generated locally and simply forwards user‑defined flags. No `curl|bash`, no obfuscated commands, no unpinned `git pull`, and no unexpected external destinations. All operations are standard for repackaging a pre‑built Electron application against the system runtime.
</details>
<evidence></evidence>
<summary>Standard AUR repackaging; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR repackaging; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,588
  Completion Tokens: 1,930
  Total Tokens: 17,518
  Total Cost: $0.001723
  Execution Time: 162.27 seconds

Final Status: SAFE


No issues found.
