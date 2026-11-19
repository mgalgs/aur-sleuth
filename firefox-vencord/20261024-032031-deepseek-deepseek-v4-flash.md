---
package: firefox-vencord
pkgbase: vencord
pkgver: 1.15.13
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12937
completion_tokens: 5760
total_tokens: 18697
cost: 0.002225587
execution_time: 53.8
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T03:20:30Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard safe .SRCINFO metadata file.
  - file: vencord.install
    status: safe
    summary: Standard post-install user guidance, no malicious actions.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no suspicious behavior detected.
---

firefox-vencord is built from vencord
Materializing firefox-vencord from local mirror...
Materialized firefox-vencord
Analyzing firefox-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and function definitions at the global scope. There are no command substitutions, backticks, evals, or other executable expressions that would run during `makepkg --printsrcinfo`. All logic that could potentially be risky (downloading, building, installing) is confined to the `prepare()`, `build()`, `check()`, and `package_*()` functions, which are not invoked during this parsing step. The `makepkg --printsrcinfo` command will safely source the file and print metadata without executing any malicious code.
</details>
<evidence></evidence>
<summary>No top-level execution, safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution, safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, .SRCINFO...
[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch User Repository (AUR) package. It tells Git to ignore all files by default (`*`) and then explicitly un‑ignores only the files necessary to distribute the AUR package: `.SRCINFO`, `PKGBUILD`, `vencord.install`, and the `.gitignore` itself. There are no commands, network requests, encoded payloads, or any other potentially dangerous operations. The file is entirely declarative and harmless.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore; no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD, vencord.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only standard AUR metadata: package names, descriptions, source location (pinned to a tagged commit on the official `Vendicated/Vencord` GitHub repository), dependencies, and a checksum. No executable code, network requests, obfuscation, or system modifications are present. Nothing in this file deviates from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard safe .SRCINFO metadata file.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard safe .SRCINFO metadata file.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard post-installation script that only outputs user guidance on how to complete the setup for various platforms (Vesktop, Chromium, Firefox, Zen). There are no automated commands such as `eval`, `base64`, `curl`, `wget`, or any file manipulations. The `echo` statement simply displays text; it does not execute any dynamic content or accept external input. The instructions, including suggesting the user disable extension signature verification in the Zen browser, are informational and left to the user’s manual action. No malicious or supply‑chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard post-install user guidance, no malicious actions.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Standard post-install user guidance, no malicious actions.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging best practices. The source is fetched from the official Vencord GitHub repository pinned to a specific version tag (`v1.15.13`) via standard `git+` syntax. Build dependencies (`nodejs`, `pnpm`, `git`) and commands (`pnpm install --frozen-lockfile`, `pnpm buildStandalone`, `pnpm buildWeb`) are exactly what is expected for building a Node.js/TypeScript browser extension from source. All file installation operations (`install`, `cp`) are strictly scoped to the `$pkgdir` build directory, confirming standard packaging hygiene. The system-wide installation of the Firefox extension (`extension-firefox.zip` into `/usr/lib/firefox/browser/extensions/`) is the explicit, declared purpose of the `firefox-vencord` package and is a standard method for distributing browser extensions in Linux distributions. There is no obfuscated code, no unexpected network requests, no dangerous commands (`eval`, `curl`, `wget`), and no attempt to modify system files outside the package scope.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no suspicious behavior detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no suspicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,937
  Completion Tokens: 5,760
  Total Tokens: 18,697
  Total Cost: $0.002226
  Execution Time: 53.80 seconds

Final Status: SAFE


No issues found.
