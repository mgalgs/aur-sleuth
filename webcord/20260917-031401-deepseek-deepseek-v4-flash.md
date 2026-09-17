---
package: webcord
pkgver: 4.14.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16757
completion_tokens: 7866
total_tokens: 24623
cost: 0.002878720334
execution_time: 200.87
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T03:14:00Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file for AUR package maintenance.
  - file: .SRCINFO
    status: safe
    summary: Clean AUR metadata, pinned sources, no threats.
  - file: buildInfo.json
    status: safe
    summary: Benign JSON configuration file.
  - file: webcord.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: webcord.sh
    status: safe
    summary: Standard Electron app launcher, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard PKGBUILD with pinned checksums, official upstream source, and no malicious operations."
---

Materializing webcord from local mirror...
Materialized webcord
Analyzing webcord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions at the global scope. No command substitutions, dangerous functions (eval, curl, wget), or any other code that would execute during sourcing are present. The `makepkg --printsrcinfo` command will only parse these declarations and the function definitions (without executing the functions). Therefore, running this command poses no security risk.
</details>
<evidence></evidence>
<summary>No top-level malicious code; only safe variable assignments.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only safe variable assignments.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR git repositories to track only essential packaging files (PKGBUILD, desktop file, shell wrapper, etc.) and ignore everything else. It contains no executable code, no network requests, no obfuscation, and no system modification commands. This is a normal part of AUR package maintenance and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Benign .gitignore file for AUR package maintenance.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, buildInfo.json...
[1/6] Reviewing .SRCINFO, PKGBUILD, buildInfo.json...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file for AUR package maintenance.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard package metadata for an Arch User Repository (AUR) package. It defines the package name, version, dependencies, and four source files—three local static files (buildInfo.json, webcord.desktop, webcord.sh) and a tarball from the official upstream GitHub release at https://github.com/SpacingBat3/WebCord/archive/v4.14.0/WebCord-4.14.0.tar.gz. All checksums are SHA-256 hashes (none are SKIP or missing), ensuring the downloaded archive is verified. There are no network requests to unexpected hosts, no obfuscated code, no system modifications, and no dangerous commands. The file is purely descriptive; it does not contain or execute any code. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Clean AUR metadata, pinned sources, no threats.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, buildInfo.json, webcord.desktop...
[2/6] Reviewing PKGBUILD, buildInfo.json, webcord.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Clean AUR metadata, pinned sources, no threats.
LLM auditresponse for buildInfo.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `buildInfo.json` is a simple JSON configuration file. It defines the release type as `"release"` and disables update notifications. There is no code execution, no network requests, no obfuscation, and no system modifications. It is a standard, benign configuration file consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Benign JSON configuration file.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, buildInfo.json, webcord.desktop, webcord.sh...
[3/6] Reviewing PKGBUILD, webcord.desktop, webcord.sh...
+ Reviewed buildInfo.json. Status: SAFE -- Benign JSON configuration file.
LLM auditresponse for webcord.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry for the WebCord application. It contains only metadata fields (Name, Comment, GenericName, Exec, Icon, Type, StartupNotify, Categories) and no executable code, network requests, or obfuscated content. The `Exec=webcord %U` line simply invokes the `webcord` binary with optional URL arguments, which is normal for a desktop launcher. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, webcord.sh...
+ Reviewed webcord.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for webcord.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Electron application launcher script. It executes the Electron runtime with the application directory and passes any command-line arguments. The `@ELECTRON@` and `@APP_DIR@` placeholders are replaced during the build/install process with actual paths. No suspicious behavior, network requests, or obfuscation is present. The script follows typical AUR packaging conventions for Electron apps.
</details>
<evidence></evidence>
<summary>Standard Electron app launcher, no security concerns.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed webcord.sh. Status: SAFE -- Standard Electron app launcher, no security concerns.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages WebCord 4.14.0 from the project's own upstream GitHub repository (SpacingBat3/WebCord) as a tagged release tarball. All four sources (the tarball, buildInfo.json, webcord.desktop, and webcord.sh) are pinned with explicit sha256 checksums — no SKIP hashes and no unexpected download hosts.

The build steps are ordinary Node.js packaging practice: `npm ci --omit=dev --ignore-scripts --no-bin-links` installs only production dependencies while refusing to run package install scripts (good hygiene), esbuild compiles the TypeScript sources, and the `package()` function installs the app, a launcher script (a standard sed placeholder substitution of webcord.sh piped through `install -Dm755 /dev/stdin`), a desktop entry, an icon symlink, and the license into `$pkgdir`. The `rm` calls inside `prepare()` are scoped to the extracted source tree (`sources/code/build` and platform-specific icon files) and match the project's build layout; no system paths outside `$srcdir`/`$pkgdir` are touched.

No obfuscation, no `eval`/`base64`, no curl/wget pipelines, no runtime network fetches, and no writes to or reads from credential, key, or system configuration files were found. The file is consistent with a legitimate AUR packaging workflow.
</details>
<evidence></evidence>
<summary>
Safe: standard PKGBUILD with pinned checksums, official upstream source, and no malicious operations.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard PKGBUILD with pinned checksums, official upstream source, and no malicious operations.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,757
  Completion Tokens: 7,866
  Total Tokens: 24,623
  Total Cost: $0.002879
  Execution Time: 200.87 seconds

Final Status: SAFE


No issues found.
