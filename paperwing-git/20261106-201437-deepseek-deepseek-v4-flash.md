---
package: paperwing-git
pkgver: 1.2.4.r5.g1b3f52f
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16678
completion_tokens: 2729
total_tokens: 19407
cost: 0.002014376
execution_time: 45.61
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T20:14:36Z
file_verdicts:
  - file: paperwing.js
    status: safe
    summary: Legitimate Electron app helper; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR Electron package, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious content.
  - file: paperwing.sh
    status: safe
    summary: Standard Electron launcher, no security issues.
---

Materializing paperwing-git from local mirror...
Materialized paperwing-git
Analyzing paperwing-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable declarations, array definitions, and function definitions at the top level. No command substitutions, `eval`, `curl`, `wget`, or any other immediate execution constructs are present in the global scope. The function bodies (including `pkgver()`, `prepare()`, `build()`, `package()`) are not executed during `makepkg --printsrcinfo` — they are only defined. Therefore, sourcing this file to print metadata poses no security risk.</details>
<evidence></evidence>
<summary>No dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, paperwing.js...
LLM auditresponse for paperwing.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`paperwing.js`) is a standard Electron app entry‑point helper that handles application directory resolution and filesystem path redirection. It reads the `--app` command‑line argument to determine the application&#39;s directory, sets `process.resourcesPath`, and then wraps certain `fs` functions (e.g. `readFileSync`, `existsSync`, `statSync`) to redirect paths from the default Electron resources directory to the actual application directory. No network requests, no obfuscated code, no eval or base64 decoding, and no execution of untrusted code are present. The code is typical for Electron packages distributed via AUR and does not exhibit any supply‑chain attack indicators.
</details>
<evidence></evidence>
<summary>Legitimate Electron app helper; no malicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, paperwing.js, paperwing.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, paperwing.sh...
+ Reviewed paperwing.js. Status: SAFE -- Legitimate Electron app helper; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for packaging an Electron application from a Git repository in the Arch User Repository. It fetches the upstream source via `git`, uses `SKIP` checksums (expected for VCS sources), sets up a local Node version manager (`nvm`), installs dependencies via `npm`, builds the application with `electron-builder`, and installs files into the package directory. No malicious code, obfuscation, exfiltration, or unexpected network requests are present. All operations are within the scope of building and installing the application from its legitimate upstream.
</details>
<evidence>
</evidence>
<summary>Standard AUR Electron package, no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, paperwing.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR Electron package, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `paperwing-git` package. It contains no executable code. The source references the project's own GitHub repository (`github.com/rohanvijaykumar/paperwing.git`) and two helper scripts (`paperwing.js`, `paperwing.sh`) with pinned SHA-256 checksums. The VCS source uses `SKIP` for its checksum, which is normal and required for `-git` packages. There is no evidence of malicious behavior—no suspicious URLs, obfuscation, or unexpected commands. The inclusion of `nvm` as a build dependency is a best-practice concern (pinning a specific Node version), but does not constitute a supply-chain attack. The file is safe.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no malicious content.</summary>
</security_assessment>

[3/4] Reviewing paperwing.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious content.
LLM auditresponse for paperwing.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Electron application launcher script. It sets environment variables, locates the application bundle (app.asar or app directory), configures sandbox and Ozone platform arguments, then launches the Electron runtime with the appropriate flags. There are no network requests, no execution of untrusted code, no obfuscation, and no attempts to exfiltrate data. The placeholders (@appname@, @electronversion@) are typical for AUR packaging and are substituted at build time. No malicious patterns are present.
</details>
<evidence></evidence>
<summary>Standard Electron launcher, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed paperwing.sh. Status: SAFE -- Standard Electron launcher, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,678
  Completion Tokens: 2,729
  Total Tokens: 19,407
  Total Cost: $0.002014
  Execution Time: 45.61 seconds

Final Status: SAFE


No issues found.
