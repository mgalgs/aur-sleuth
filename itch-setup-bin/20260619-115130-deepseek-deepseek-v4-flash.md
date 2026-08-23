---
package: itch-setup-bin
pkgver: 1.29.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 33389
completion_tokens: 7427
total_tokens: 40816
cost: 0.00434187
execution_time: 87.58
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:51:30Z
file_verdicts:
  - file: itch.sh
    status: safe
    summary: Simple argument-forwarding wrapper; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious code detected.
  - file: src/itch-26.13.0/release/package-all.js
    status: safe
    summary: Standard build script, no malicious code detected.
  - file: itch.desktop
    status: safe
    summary: Standard desktop entry file with no malicious content.
  - file: src/itch-26.13.0/release/build.js
    status: safe
    summary: Standard build script, no malicious content.
  - file: src/itch-26.13.0/release/sign-macos.js
    status: safe
    summary: Standard macOS signing script, no malicious behavior.
  - file: src/itch-26.13.0/release/common.js
    status: safe
    summary: Standard build helper with no malicious behavior.
  - file: src/itch-26.13.0/release/deploy.js
    status: safe
    summary: Standard deployment script for itch.io, no malicious behavior found.
  - file: src/itch-26.13.0/src/common/constants/urls.ts
    status: safe
    summary: File defines only legitimate URLs for the itch.io project; no malicious code.
  - file: src/itch-26.13.0/release/packaging/do-package.js
    status: safe
    summary: Standard Electron packaging script, no malicious behavior.
  - file: src/itch-26.13.0/esbuild.config.mjs
    status: safe
    summary: Standard build configuration, no malicious code detected.
  - file: src/itch-26.13.0/build.mjs
    status: safe
    summary: Build script for itch-setup; no malicious behavior.
---

Cloning https://aur.archlinux.org/itch-setup-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-m0e49out...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-m0e49out
Analyzing itch-setup-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-m0e49out) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous top-level code or `pkgver()` function. The only command substitution is `$(date +%F-%H)` in the `source_x86_64` URL, which generates a timestamp string and is benign. All source URLs point to official project repositories (GitHub and itch.io). No obfuscation, exfiltration, or unexpected system commands are present at the global scope. Since `prepare()`, `build()`, and `package()` are not executed during the requested commands, they are out of scope for this gate.
</details>
<summary>Safe; no dangerous top-level code or source execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe; no dangerous top-level code or source execution.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, itch.sh...
LLM auditresponse for itch.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `itch.sh` is a minimal shell wrapper that calls the `itch-setup` binary with a fixed argument `--prefer-launch` and forwards all script arguments via `"$@"`. It contains no obfuscation, no network requests, no file manipulation outside of running the intended application, and no use of dangerous commands (eval, base64, curl, etc.). This is standard packaging practice for a launcher script.
</details>
<summary>Simple argument-forwarding wrapper; no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed itch.sh. Status: SAFE -- Simple argument-forwarding wrapper; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. It downloads release tarballs and a binary from the official itch.io GitHub repository and website. The only slightly unusual element is the use of `$(date +%F-%H)` in the local filename for the binary source, but the remote URL is fixed (`https://itch.io/app/download?platform=linux`) and the checksum is pinned, so the build remains deterministic. No obfuscated code, unexpected network destinations, or file manipulation outside the package scope is present. The script performs routine installation steps (installing binaries, desktop file, license, and icons).
</details>
<summary>
Standard AUR package, no malicious code detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious code detected.
Reviewed all required files.
Deciding which files to review next...
Note: 561 files available for selection; offering the 50 highest-priority to the model. 417 lower-priority file(s) were not offered.
LLM response for file selection:
itch.desktop
src/itch-26.13.0/build.mjs
src/itch-26.13.0/esbuild.config.mjs
src/itch-26.13.0/release/build.js
src/itch-26.13.0/release/common.js
src/itch-26.13.0/release/deploy.js
src/itch-26.13.0/release/package-all.js
src/itch-26.13.0/release/packaging/do-package.js
src/itch-26.13.0/release/sign-macos.js
src/itch-26.13.0/src/common/constants/urls.ts
Decided to review 10 additional files: itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js, src/itch-26.13.0/release/deploy.js, src/itch-26.13.0/release/package-all.js, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/sign-macos.js, src/itch-26.13.0/src/common/constants/urls.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing itch.desktop...
[0/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs...
[0/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js...
[0/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js...
[0/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs...
[0/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js...
[0/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/deploy.js...
[0/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/deploy.js, src/itch-26.13.0/release/package-all.js...
[0/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/deploy.js, src/itch-26.13.0/release/package-all.js, src/itch-26.13.0/release/sign-macos.js...
[0/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/deploy.js, src/itch-26.13.0/release/package-all.js, src/itch-26.13.0/release/sign-macos.js, src/itch-26.13.0/src/common/constants/urls.ts...
LLM auditresponse for package-all.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward build/packaging script that imports functions from local modules and executes them sequentially. No network requests, obfuscation, dangerous commands, or system modifications beyond standard packaging operations are present. The use of `process.env.SKIP_TESTS` for conditional test execution is normal. The file does not contain any malicious code; it solely orchestrates a build, package, and test pipeline.
</details>
<summary>Standard build script, no malicious code detected.</summary>
</security_assessment>

[1/10] Reviewing itch.desktop, src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/deploy.js, src/itch-26.13.0/release/sign-macos.js, src/itch-26.13.0/src/common/constants/urls.ts...
+ Reviewed src/itch-26.13.0/release/package-all.js. Status: SAFE -- Standard build script, no malicious code detected.
LLM auditresponse for itch.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (`.desktop`). It defines the itch.io game client application with basic metadata: name, icon, executable, categories, MIME types, and a GNOME autostart flag. There are no embedded scripts, obfuscated commands, network requests, or file operations. The content is entirely declarative and follows the freedesktop.org specification. The autostart setting is a standard feature, not a security concern. No supply-chain attack indicators are present.
</details>
<summary>Standard desktop entry file with no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/build.js, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/deploy.js, src/itch-26.13.0/release/sign-macos.js, src/itch-26.13.0/src/common/constants/urls.ts...
+ Reviewed itch.desktop. Status: SAFE -- Standard desktop entry file with no malicious content.
LLM auditresponse for build.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `build.js` is a minimal build script that imports two modules from a local `./packaging/` directory and executes a build function. No network requests, obfuscated code, dangerous commands (e.g., `eval`, `base64`, `curl`, `wget`), or unusual file operations are present. The behavior is consistent with standard packaging practices for an AUR package. There is no evidence of malicious or dangerous activity.
</details>
<summary>Standard build script, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/deploy.js, src/itch-26.13.0/release/sign-macos.js, src/itch-26.13.0/src/common/constants/urls.ts...
+ Reviewed src/itch-26.13.0/release/build.js. Status: SAFE -- Standard build script, no malicious content.
LLM auditresponse for sign-macos.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard CI workflow helper for signing and notarizing a macOS app bundle. It reads environment variables Apple ID, app-specific password, and team ID — required by Apple's notarization service — and uses trusted npm packages (`@electron/osx-sign`, `@electron/notarize`, `@itchio/bob`) to perform codesigning and notarization. The entitlements file grants only standard permissions (unsigned executable memory, network client, user-selected file read/write). There are no suspicious network requests, obfuscated code, file exfiltration, or deviations from expected packaging/CI behavior. The script is entirely inline with the upstream project's build process and poses no security threat.
</details>
<summary>Standard macOS signing script, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/itch-26.13.0/build.mjs, src/itch-26.13.0/release/common.js, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/deploy.js, src/itch-26.13.0/src/common/constants/urls.ts...
+ Reviewed src/itch-26.13.0/release/sign-macos.js. Status: SAFE -- Standard macOS signing script, no malicious behavior.
LLM auditresponse for common.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `common.js` contains standard build helper functions for the itch.io application. It defines constants for operating systems and architectures, a timing utility using `@itchio/bob`, and helper functions to derive build tags, version numbers, app names, and bundle identifiers from environment variables (`GITHUB_REF_TYPE`, `GITHUB_REF_NAME`). There is no obfuscated code, no network requests, no execution of untrusted commands, and no file system modifications beyond normal packaging/CI patterns. The code is transparent and performs no operations outside the expected build logic.
</details>
<summary>
Standard build helper with no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/itch-26.13.0/build.mjs, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/release/deploy.js, src/itch-26.13.0/src/common/constants/urls.ts...
+ Reviewed src/itch-26.13.0/release/common.js. Status: SAFE -- Standard build helper with no malicious behavior.
LLM auditresponse for deploy.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The `deploy.js` script is a standard CI/CD deployment script for the itch.io application. It downloads the official `butler` tool from the trusted `broth.itch.zone` domain, extracts it, and uses it to push pre-built artifacts to itch.io channels. All operations are consistent with normal application deployment: reading local artifact directories, constructing artifact paths, and invoking `butler` with the correct channel and version. There is no obfuscated code, no unusual network requests to unknown hosts, no exfiltration of sensitive data, and no execution of untrusted content. The script performs exactly the actions expected for a build pipeline targeting the itch.io platform.
</details>
<summary>
Standard deployment script for itch.io, no malicious behavior found.
</summary>
</security_assessment>

[6/10] Reviewing src/itch-26.13.0/build.mjs, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js, src/itch-26.13.0/src/common/constants/urls.ts...
+ Reviewed src/itch-26.13.0/release/deploy.js. Status: SAFE -- Standard deployment script for itch.io, no malicious behavior found.
LLM auditresponse for urls.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `urls.ts` defines a collection of URL constants used by the itch.io application. All URLs point to legitimate domains owned by the itch.io project (itch.io, github.com/itchio, weblate.itch.zone, broth.itch.zone, locales.itch.zone, etc.). The use of `process.env.WHEN_IN_ROME` to optionally override the base itch.io URL is a standard development and customization pattern, not a malicious feature. The file contains no executable logic, no obfuscation, no network calls, and no system operations. It is a straightforward configuration module.
</details>
<summary>
File defines only legitimate URLs for the itch.io project; no malicious code.
</summary>
</security_assessment>

[7/10] Reviewing src/itch-26.13.0/build.mjs, src/itch-26.13.0/esbuild.config.mjs, src/itch-26.13.0/release/packaging/do-package.js...
+ Reviewed src/itch-26.13.0/src/common/constants/urls.ts. Status: SAFE -- File defines only legitimate URLs for the itch.io project; no malicious code.
LLM auditresponse for do-package.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a build script from the itch.io desktop application's own source code. It uses the @electron/packager tool to package the Electron app and standard Node.js modules (path, fs). The only shell commands executed via `$()` are `rm -rf`, `mkdir -p`, and `mv`, which are routine operations for cleaning and moving build artifacts. There are no network requests, obfuscated code, dangerous functions (eval, base64, curl, wget), or any operations beyond normal packaging. The file does not exhibit any characteristics of a supply-chain attack.
</details>
<summary>Standard Electron packaging script, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/itch-26.13.0/build.mjs, src/itch-26.13.0/esbuild.config.mjs...
+ Reviewed src/itch-26.13.0/release/packaging/do-package.js. Status: SAFE -- Standard Electron packaging script, no malicious behavior.
LLM auditresponse for esbuild.config.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard esbuild configuration file for building an Electron application (the itchio desktop app). It defines entry points, aliases, loaders, and build options for both the main and renderer processes. There are no network requests, obfuscated code, eval statements, unexpected file operations, or any deviation from normal build tooling configuration. The only external references are to standard Node.js modules (path, url) and local source files. The `inject: ["./esbuild-shims.js"]` line refers to a local shim file, which is a common practice. No evidence of supply-chain attack or malicious behavior.
</details>
<summary>
Standard build configuration, no malicious code detected.</summary>
</security_assessment>

[9/10] Reviewing src/itch-26.13.0/build.mjs...
+ Reviewed src/itch-26.13.0/esbuild.config.mjs. Status: SAFE -- Standard build configuration, no malicious code detected.
LLM auditresponse for build.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard build script for an Electron application using esbuild. It performs routine tasks: cleaning output directories, building main and renderer processes, writing metafiles, and injecting a Content-Security-Policy meta tag into HTML. The CSP includes URLs belonging to the application&#39;s own upstream (itch.zone, dale.itch.zone) and localhost for development, which is expected. There are no network requests, no obfuscated code, no dangerous commands like eval/curl/wget, and no access to sensitive system files. The script does exactly what a build step should do and shows no evidence of malicious or injected code.
</details>
<summary>Build script for itch-setup; no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/itch-26.13.0/build.mjs. Status: SAFE -- Build script for itch-setup; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 33,389
  Completion Tokens: 7,427
  Total Tokens: 40,816
  Total Cost: $0.004342
  Execution Time: 87.58 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-itch-setup-bin.txt
Final Status: SAFE


No issues found.
