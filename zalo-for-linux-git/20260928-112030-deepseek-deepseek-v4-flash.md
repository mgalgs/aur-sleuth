---
package: zalo-for-linux-git
pkgver: 26.8.20+26.2.1.r99.87b0696
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20582
completion_tokens: 7487
total_tokens: 28069
cost: 0.00497784
execution_time: 124.31
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T11:20:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: integrate-zadark.js
    status: safe
    summary: "Plain build helper: local writes, git rev-parse only, no malicious behavior."
  - file: zalo.sh
    status: safe
    summary: Standard Electron launcher, no malicious behavior.
  - file: zalo.desktop
    status: safe
    summary: Standard static .desktop launcher; no malicious or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard VCS package with upstream build steps.
---

Materializing zalo-for-linux-git from local mirror...
Materialized zalo-for-linux-git
Analyzing zalo-for-linux-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable declarations and function definitions at top-level scope. No command substitutions, `eval`, or similar dangerous constructs execute during sourcing. All potentially risky operations (git, npm, node, etc.) are confined to `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are **not** invoked by `makepkg --printsrcinfo`. There is no top-level code that downloads, runs, or exfiltrates data.
</details>
<evidence></evidence>
<summary>No top-level code executes; only variable/function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes; only variable/function definitions.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file contains standard ignore patterns for an AUR package repository: it excludes build directories (`pkg/`, `src/`), built package archives (`*.pkg.tar`, `*.pkg.tar.*`), and the upstream source checkout (`zalo-for-linux-git/`). There are no commands, network requests, obfuscated strings, or any other indicators of malicious behavior. It is a routine configuration file with no security implications.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
[1/6] Reviewing .SRCINFO, PKGBUILD, integrate-zadark.js...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file for an AUR package. It contains only declarative fields: package name, version, dependencies, source URLs, and checksums. No executable code, no network requests, no obfuscation, no dangerous commands are present. The `sha256sums = SKIP` for the VCS source is standard for `-git` packages and not a security concern. The three local files (`integrate-zadark.js`, `zalo.sh`, `zalo.desktop`) have pinned SHA256 checksums, ensuring their integrity. The listed `makedepends` (including `wget`, `rust`, etc.) are build tools and are normal for a project that compiles native modules; there is no indication they are used for malicious purposes. The package's upstream URL points to a legitimate GitHub repository. No evidence of a supply-chain attack or injected malicious code is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, integrate-zadark.js, zalo.desktop...
[2/6] Reviewing PKGBUILD, integrate-zadark.js, zalo.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for integrate-zadark.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build-integration helper for the Zalo desktop app packaging. It performs only local filesystem operations inside the project directory: it invokes the ZaDark PC build module's exported functions, records the current git short commit, writes a `build-info.json` under `app/pc-dist`, and rewrites `package.json` to stamp the version from `ZALO_VERSION`. There are no network requests, no downloads, no encoded or obfuscated commands, and no writes outside the project tree.

The only external command executed is `git rev-parse --short HEAD`, which is a standard read-only Git operation used to embed commit metadata. Modifying `package.json` to set the version is an ordinary build step mirroring the upstream `electron-builder` behavior. The loaded `plugins/zadark/build/pc/zadark-pc.js` module is not shown in this file, but invoking a declared upstream build module is normal packaging practice, not evidence of a supply-chain attack. No genuine red flags are present.
</details>
<evidence>
</evidence>
<summary>
Plain build helper: local writes, git rev-parse only, no malicious behavior.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, integrate-zadark.js, zalo.desktop, zalo.sh...
[3/6] Reviewing PKGBUILD, zalo.desktop, zalo.sh...
+ Reviewed integrate-zadark.js. Status: SAFE -- Plain build helper: local writes, git rev-parse only, no malicious behavior.
LLM auditresponse for zalo.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching an Electron-based application (Zalo) on Linux. It sets an environment variable to signal that Electron is running in a packaged environment and then executes the electron22 runtime with the application entry point. There are no network requests, obfuscation, or unexpected system modifications. The script follows normal AUR packaging practices for Electron apps.
</details>
<evidence></evidence>
<summary>Standard Electron launcher, no malicious behavior.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, zalo.desktop...
+ Reviewed zalo.sh. Status: SAFE -- Standard Electron launcher, no malicious behavior.
LLM auditresponse for zalo.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file used to register Zalo (a messaging application) in the desktop environment's application menu. The file contains only static metadata: a name, comment, icon reference, window-class hint, and an Exec line pointing to the conventional installed binary path `/usr/bin/zalo`. No executable logic is present in this file.

I found no network requests, obfuscated code, base64/hex-encoded data, shell expansion, environment-variable reads, or any ability to execute arbitrary commands. The desktop entry does exactly what a packaging script should do: it makes the installed application launchable from the desktop environment. There is nothing in this file that deviates from standard packaging practice or that could constitute a supply-chain attack.
</details>
<evidence>
<!-- No suspicious content to quote. File is a plain, static .desktop launcher. -->
</evidence>
<summary>
Standard static .desktop launcher; no malicious or suspicious content found.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed zalo.desktop. Status: SAFE -- Standard static .desktop launcher; no malicious or suspicious content found.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
PKGBUILD is a standard VCS AUR package for an unofficial Zalo Linux port. The SKIP checksum on the git source is normal and expected for VCS sources, while the local source files (integrate-zadark.js, zalo.sh, zalo.desktop) are pinned with SHA-256 checksums. The build uses the upstream repository's own scripts and tooling: `npm ci --ignore-scripts`, `npx prebuild-install` to fetch a prebuilt sqlite3 binary, `scripts/download-dmg.js` to fetch the official Zalo build, and `scripts/setup-zcall-bridge.js` for the Wine call bridge. These are ordinary upstream build steps for this application, not injected malicious commands.

No obfuscated or encoded commands are present. There is no use of `curl | bash`, no base64/hex payload assembly, no `eval`, no writes outside the package build/install scope, and no exfiltration of local data. The unpinned network downloads at build time are a supply-chain hygiene consideration, but they reflect the application's declared method of obtaining its own upstream dependencies, not evidence of malice. `git submodule update --init --recursive` is also standard behavior for a VCS package and is not a hidden fetch of unrelated remote content.
</details>
<evidence></evidence>
<summary>No malicious behavior; standard VCS package with upstream build steps.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard VCS package with upstream build steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,582
  Completion Tokens: 7,487
  Total Tokens: 28,069
  Total Cost: $0.004978
  Execution Time: 124.31 seconds

Final Status: SAFE


No issues found.
