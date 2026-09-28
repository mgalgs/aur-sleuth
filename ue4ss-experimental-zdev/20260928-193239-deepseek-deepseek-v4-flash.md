---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1151_g03dbd5c0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15853
completion_tokens: 10830
total_tokens: 26683
cost: 0.00222151986
execution_time: 284.71
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T19:32:38Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with upstream source and checksums; no signs of malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources and safe operations.
  - file: ue4ss-install
    status: safe
    summary: Benign UE4SS deploy/uninstall helper; local file operations only, no malicious code.
---

Materializing ue4ss-experimental-zdev from local mirror...
Materialized ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists only of variable assignments (strings, arrays), parameter expansions (e.g., `_verstr="${pkgver//_/-}"`), and function definitions (`latestver()`, `package()`). No command substitutions, backticks, or dangerous commands (curl, wget, eval) execute during sourcing. The source array uses a conventional GitHub URL, and checksums are pinned. There is no code that would run upon sourcing to exfiltrate data or download/execute arbitrary content. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR Git repository. It ignores all files by default, then whitelists only the essential package files (`.gitignore`, `.SRCINFO`, `PKGBUILD`), a helper script (`ue4ss-install`), and auxiliary files (`*.install`, `*.patch`, `*.diff`). There is no executable code, no network activity, no obfuscation, and no mechanism for data exfiltration or supply-chain compromise. It is a benign configuration file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It describes a package that downloads a release archive from the project's official GitHub releases page and references a local helper file (`ue4ss-install`). The URLs point to the legitimate upstream repository (`github.com/UE4SS-RE/RE-UE4SS`), and both source entries have pinned SHA-256 checksums rather than `SKIP`. No suspicious network endpoints, obfuscated commands, encoded payloads, or unusual system operations appear in this file. The use of `bash` and `wine` dependencies is consistent with the package's stated purpose of installing Windows Unreal Engine mod loader files for use under Wine/Proton.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with upstream source and checksums; no signs of malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with upstream source and checksums; no signs of malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `ue4ss-experimental-zdev` is a straightforward binary packaging script that presents no supply-chain security concerns. The source archive is fetched from the official GitHub repository of the UE4SS project (`github.com/UE4SS-RE/RE-UE4SS`) and both it and the bundled helper script (`ue4ss-install`) have their SHA256 checksums pinned in the PKGBUILD, ensuring integrity against tampering.

The only network-adjacent code is the `latestver()` helper function, which uses the GitHub CLI (`gh api`) to query the upstream release tags for version detection. This is a standard maintainer convenience function and poses no risk, as it neither downloads nor executes arbitrary content and is not invoked during the `package()` function. All operations in `package()` are limited to copying files into `$pkgdir`, installing the license, and cleaning up unwanted documentation from the upstream archive — standard packaging practices. There is no obfuscated code, no unexpected network calls, and no execution of downloaded payloads on the host system.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources and safe operations.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources and safe operations.
LLM auditresponse for ue4ss-install:
<security_assessment>
  <decision>SAFE</decision>
  <details>
This script is a deployment helper for the UE4SS mod loader: it copies the package-shipped payload under /usr/share/ue4ss (DLL proxy, UE4SS.dll, Mods/, config files) into a game's Binaries/Win64 directory for native Windows or Proton/Wine. All operations are local file operations (`cp`, `ln -sfn`, `install`, `find`, `rm -rf`) scoped to the user-supplied target directory and the package-owned payload directory. There is no network access, no download-from-remote, no `eval`, no base64/hex encoding, and no obfuscation anywhere in the file. Config files are deliberately preserved across re-deploys, and the script prints helpful usage, Proton launch-option, and post-deploy instructions.

The only destructive path is `--uninstall`, which collects the basenames of top-level payload entries that exist in the target, prints a clear warning that removal is recursive and will also delete user-added mods/config under those entries, and then `rm -rf`s exactly those target-joined paths. This is normal, user-invoked uninstaller behavior for a mod loader, not a supply-chain attack. The only minor hygiene concern is that pointing `--uninstall` at a broad directory (e.g. `$HOME`) could remove same-named subdirectories, but the script lists victims before deleting and requires an explicit target argument; this is a safety caveat, not evidence of malice. Overall the file is consistent with its stated purpose and shows no injected or hidden malicious behavior.
  </details>
  <evidence></evidence>
  <summary>Benign UE4SS deploy/uninstall helper; local file operations only, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Benign UE4SS deploy/uninstall helper; local file operations only, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,853
  Completion Tokens: 10,830
  Total Tokens: 26,683
  Total Cost: $0.002222
  Execution Time: 284.71 seconds

Final Status: SAFE


No issues found.
