---
package: dsh-tui-bin
pkgver: 0.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 15912
completion_tokens: 4181
total_tokens: 20093
cost: 0.00118602764
execution_time: 82.97
files_reviewed: 2
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-23T18:43:51Z
file_verdicts:
  - file: dsh-tui-0.9.0.tgz
    status: skipped
    summary: "Skipping binary file: dsh-tui-0.9.0.tgz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/package/bin/dsh-tui.js
    status: safe
    summary: Standard AUR launcher, no malicious behavior.
---

Cloning https://aur.archlinux.org/dsh-tui-bin.git...
Cloned dsh-tui-bin
Analyzing dsh-tui-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations for `prepare()` and `package()`. No code executes in the global scope beyond assigning variables, and no `pkgver()` function is present. The source is a single tarball from the official npm registry with a valid checksum. The `--nobuild` and `--noprepare` flags ensure that neither `prepare()` nor `package()` run during the source fetch and PKGBUILD sourcing steps. Therefore, executing `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No global-scope or pkgver() malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-scope or pkgver() malicious code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, dsh-tui-0.9.0.tgz...
[1/2] Reviewing PKGBUILD...
! Reviewed dsh-tui-0.9.0.tgz. Status: SKIPPED -- Skipping binary file: dsh-tui-0.9.0.tgz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Node.js binary package. It downloads a tarball from the official npm registry with a pinned SHA-256 checksum, ensuring integrity. The `prepare()` function performs a standard `npm install --global` with the tarball, using `--prefix` and `--cache` inside the build directory. The `package()` function copies the installed files into the package directory and installs the license. There are no suspicious network requests (the only download is from `registry.npmjs.org`, which is the expected upstream source), no obfuscated code, no dangerous commands like `eval`, `base64`, `curl`, or `wget`, and no modification of system files outside the intended scope. The use of `npm install` may execute lifecycle scripts bundled with the upstream package, but that is standard for npm-based packages and is not indicative of a supply-chain attack in the AUR packaging itself. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 1247 files available for selection; offering the 50 highest-priority to the model. 953 lower-priority file(s) were not offered.
LLM response for file selection:
src/package/bin/dsh-tui.js
Decided to review 1 additional files: src/package/bin/dsh-tui.js
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing src/package/bin/dsh-tui.js...
LLM auditresponse for dsh-tui.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a well-structured Node.js launcher for the `dsh-tui` tool. It follows a standard pattern of either delegating to a profile copy (thin shell) or running the full launch logic itself. The script performs only expected operations:
- Checks for required dependencies (`dsh`, `pnpm`) via local spawn calls.
- Bootstraps its own profile by invoking `dsh plugin add` with a hardcoded package name and version from its own `package.json`.
- Spawns the `dsh` CLI with `--profile dsh-tui` and passes user arguments.
- Reads only tool-specific state files from the user's home directory (`~/.dsh-tui/`, `~/.dsh-cc/`).
- Sets environment variables for configuration, with no obfuscation, network requests, or data exfiltration.

No malicious behavior is present. All subprocess invocations use controlled arguments; the version string is self-derived and not user-controlled. The script does not download, execute, or install arbitrary code from untrusted sources. It is a legitimate, well-documented launcher with no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR launcher, no malicious behavior.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed src/package/bin/dsh-tui.js. Status: SAFE -- Standard AUR launcher, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: dsh-tui-0.9.0.tgz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,912
  Completion Tokens: 4,181
  Total Tokens: 20,093
  Total Cost: $0.001186
  Execution Time: 82.97 seconds

Final Status: SAFE


No issues found.


Audit Skips:

dsh-tui-0.9.0.tgz: [SKIPPED] Skipping binary file: dsh-tui-0.9.0.tgz
