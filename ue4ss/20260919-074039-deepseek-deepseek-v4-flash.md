---
package: ue4ss
pkgver: 3.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15077
completion_tokens: 12488
total_tokens: 27565
cost: 0.00187287828
execution_time: 292.62
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:40:38Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: PKGBUILD
    status: safe
    summary: "Benign PKGBUILD: pinned upstream sources, standard install steps, no malicious behavior."
  - file: ue4ss-install
    status: safe
    summary: Safe local deployment helper; no malicious or obfuscated behavior found.
---

Materializing ue4ss from local mirror...
Materialized ue4ss
Analyzing ue4ss AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and two function definitions (`latestver()` and `package()`). No commands execute at top-level scope when the file is sourced, because no command substitutions, eval, or direct function calls appear outside of function bodies. The `source()` array and associated `checksum` entries are static strings, not evaluated command results. Therefore running `makepkg --printsrcinfo` is safe — it will never trigger any malicious action.
</details>
<evidence>
</evidence>
<summary>No top-level code execution, safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution, safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file. It defines package metadata (name, version, description, dependencies, sources) with pinned checksums for all upstream files. There are no executable instructions, no network requests, no obfuscation, and no dangerous operations. The file simply declares the package structure for the AUR build system. No supply-chain attack or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, ue4ss-install...
[1/4] Reviewing .gitignore, PKGBUILD, ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard Git configuration file that ignores all files by default and then whitelists specific files needed for an AUR package (e.g., `PKGBUILD`, `.SRCINFO`, install scripts, patches, and a deploy helper). It contains no executable code, no network requests, no obfuscation, and no instructions that could be followed. It is a passive text file used solely for version control tracking.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD fetches the UE4SS v3.0.1 release zip, its upstream LICENSE file, and a local helper script `ue4ss-install` from the AUR repository. All three source entries are pinned with sha256 checksums, so the downloaded artifacts are verified. The `latestver()` function only queries the upstream GitHub API and is not called during the build; it is a standard maintainer helper for refreshing the version and does not affect reproducibility or execute attacker-controlled code.

The `package()` function copies the DLL payload and data files into `/usr/share/ue4ss/`, installs the helper wrapper into `/usr/bin/`, and normalizes permissions. There are no dangerous commands, no network operations at build time, no encoding/obfuscation, and no access to data outside the package&#39;s own install paths. The file is consistent with ordinary packaging practice and contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Benign PKGBUILD: pinned upstream sources, standard install steps, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Benign PKGBUILD: pinned upstream sources, standard install steps, no malicious behavior.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a local deployment helper for the UE4SS payload. It performs only local file-system operations: copying files, creating symlinks, listing payload contents, and removing previously deployed files. No network requests, downloads, base64 decoding, eval usage, or execution of fetched code are present.

The `rm -rf` in the uninstall path is expected for removing a previously deployed UE4SS installation, and the script lists the affected entries before deleting them. While careless use of `--uninstall` could be destructive if pointed at an unusual directory, the behavior is consistent with a normal uninstall routine and shows no evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>Safe local deployment helper; no malicious or obfuscated behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Safe local deployment helper; no malicious or obfuscated behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,077
  Completion Tokens: 12,488
  Total Tokens: 27,565
  Total Cost: $0.001873
  Execution Time: 292.62 seconds

Final Status: SAFE


No issues found.
