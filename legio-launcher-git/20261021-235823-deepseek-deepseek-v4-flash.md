---
package: legio-launcher-git
pkgver: 0.2.2.r200.g2f22782
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10887
completion_tokens: 7251
total_tokens: 18138
cost: 0.002310399
execution_time: 136.48
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T23:58:22Z
file_verdicts:
  - file: legio-launcher
    status: safe
    summary: No malicious behavior; standard launcher.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD, no malicious activity found.
  - file: .SRCINFO
    status: safe
    summary: No malware; unconventional but not a threat.
---

Materializing legio-launcher-git from local mirror...
Materialized legio-launcher-git
Analyzing legio-launcher-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of the PKGBUILD. The global statements in this file consist entirely of standard shell variable assignments (strings and arrays). There are no top-level command substitutions, no `eval`/`source` of external files, no immediate network calls (`curl`/`wget`), and no obfuscated encoded blobs that would execute during sourcing. The function definitions (`pkgver()`, `build()`, `package()`) are declared but not invoked during this step, so any commands they contain (e.g., `pnpm install`, `pnpm tauri build`, git operations) do **not** execute. The structure is a well-formed AUR VCS PKGBUILD with no evidence of injected supply-chain attack code in the scope relevant to this gate.
</details>
<evidence></evidence>
<summary>Global scope only contains safe variable assignments.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope only contains safe variable assignments.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, legio-launcher...
LLM auditresponse for legio-launcher:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal shell launcher script. It sets an environment variable `LEGIO_AUR_PACKAGE=1` to indicate the package was installed from the AUR, then executes the main application binary `/usr/lib/legio/legio` with all passed arguments.  
No network requests, obfuscated code, dangerous commands (`eval`, `base64`, `curl`, `wget`), or unexpected file operations are present. The script conforms to standard AUR packaging practices and serves only to delegate execution to the actual application. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>No malicious behavior; standard launcher.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed legio-launcher. Status: SAFE -- No malicious behavior; standard launcher.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package: it clones the upstream Git repository (`git+https://github.com/fraa2a/Legio.git#branch=main`) and builds it with `pnpm` and `tauri`. All network operations target the project&#39;s own GitHub repository. The only checksum set to `SKIP` is for the VCS source, which is required and normal. The second source entry (`legio-launcher`) is a local file in the AUR directory (not a network fetch), and its checksum is provided, confirming it is pinned.

No obfuscated code, dangerous commands (`eval`, `curl|bash`, `base64`), exfiltration attempts, or modifications to system files outside the package&#39;s own install directories are present. The `build()` and `package()` functions perform only expected operations: installing the compiled binary, a wrapper script, desktop file, icons, and license files. This is a typical, safe PKGBUILD.
</details>
<evidence>
</evidence>
<summary>Standard VCS PKGBUILD, no malicious activity found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD, no malicious activity found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a metadata-only `.SRCINFO` file generated from a PKGBUILD. It contains no executable code, no scripts, and no commands. There are no network requests, obfuscated strings, or system modifications defined within it.  

One unusual element is the source entry `legio-launcher` with no URL prefix, which indicates a local file rather than a downloadable artifact. In a `-git` package this is uncommon and could suggest a pre‑built binary whose provenance is not transparent. However, without the PKGBUILD it is impossible to determine how this file is obtained or used, and the presence of a fixed SHA‑256 checksum at least allows verification if the source is known. This is a packaging hygiene concern, not evidence of a supply‑chain attack. All other fields (dependencies, VCS source with mutable branch, `SKIP` checksum) follow standard AUR conventions for development packages.  
</details>
<evidence>
</evidence>
<summary>No malware; unconventional but not a threat.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- No malware; unconventional but not a threat.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,887
  Completion Tokens: 7,251
  Total Tokens: 18,138
  Total Cost: $0.002310
  Execution Time: 136.48 seconds

Final Status: SAFE


No issues found.
