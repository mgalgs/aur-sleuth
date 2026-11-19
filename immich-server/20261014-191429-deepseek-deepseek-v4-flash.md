---
package: immich-server
pkgbase: immich
pkgver: 3.3.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 49243
completion_tokens: 6824
total_tokens: 56067
cost: 0.005723081
execution_time: 76.62
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-10-14T19:14:29Z
file_verdicts:
  - file: .git-blame-ignore-revs
    status: safe
    summary: File is a standard git blame ignore list, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard gitignore; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no signs of malicious behavior.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Plain documentation, no malicious content.
  - file: REUSE.toml
    status: safe
    summary: Static license metadata; no malicious content.
  - file: immich-server.install
    status: safe
    summary: Safe – standard installation notice script with no malicious behavior.
  - file: immich-server.service
    status: safe
    summary: Standard systemd service file; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior detected.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers config, no malicious content found.
  - file: immich.conf
    status: safe
    summary: Configuration file with no malicious code.
  - file: nest-cli.json.patch
    status: safe
    summary: Routine configuration patch, no malicious behavior detected.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration for Immich server.
  - file: nginx.immich.conf
    status: safe
    summary: Standard nginx proxy config, no malicious content.
  - file: postgres-path.patch
    status: safe
    summary: Patch adjusts PostgreSQL binary paths for Arch Linux.
  - file: sh-serverhome.patch
    status: safe
    summary: Standard packaging patch, no security threat.
  - file: sharp.patch
    status: safe
    summary: Standard patch for native module build.
---

immich-server is built from immich
Materializing immich-server from local mirror...
Materialized immich-server
Analyzing immich-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and comments at the global/top-level scope. No commands are executed outside of function definitions (`prepare`, `build`, `package_immich-server`, `package_immich-cli`). Running `makepkg --printsrcinfo` simply sources the file, which does not trigger any dangerous operations. The `source` array includes URLs for geodata files and patches, but these are just string literals and are not downloaded or executed during this step. There are no globally-invoked command substitutions, backticks, or `eval` statements that could execute code at parse time.</details>
<evidence></evidence>
<summary>No malicious top-level code found; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code found; safe to parse.
Note: 4 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://download.geonames.org/export/dump/cities500.zip, https://download.geonames.org/export/dump/admin1CodesASCII.txt, https://download.geonames.org/export/dump/admin2Codes.txt, https://download.geonames.org/export/dump/countryInfo.txt
Reviewing the 17 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/17] Reviewing .SRCINFO...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore...
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.git-blame-ignore-revs` contains only a single git commit hash. This is a standard Git mechanism used to instruct `git blame` to ignore certain commits (typically large formatting or refactoring changes). There is no executable code, no network requests, no file operations, and no obfuscated content. The file is entirely benign and presents no security risk.
</details>
<evidence></evidence>
<summary>File is a standard git blame ignore list, no security concerns.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- File is a standard git blame ignore list, no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard gitignore file for an AUR package. It lists common patterns to exclude from version control: built package archives (immich-*.tar.gz, immich-*.pkg.*), log files, geospatial data files (ne_10m_admin_0_countries.geojson, admin1CodesASCII.txt, admin2Codes.txt, cities500.zip), and a base-images/ directory. There are no commands, network operations, obfuscation, or any other suspicious content. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore; no malicious content.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for the `immich` package group on AUR. It defines metadata, dependencies, source URLs, and checksums for both the server and CLI subpackages.  

The sources point to the official upstream GitHub tag, official geonames data mirrors, and in-repo patches/config files – all expected for an AUR package. Several checksums are `SKIP` (for geonames datasets and patches), which is ordinary practice for VCS or large datasets and does not indicate malice. No base64, no eval, no hidden network commands, no obfuscation. The file contains only declarative metadata and package definitions. There is no evidence of any injected malicious code or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no signs of malicious behavior.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no signs of malicious behavior.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text license file (ISC-style) that grants permission to use, copy, modify, and distribute the software. No executable code, scripts, network requests, file operations, or any other potentially dangerous content is present. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing BREAKING CHANGELOG.md, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a changelog document containing only plain text. It describes breaking changes (currently none) for the immich-server application. There is no executable code, no shell commands, no network requests, and no references to external resources beyond a link to release notes. The content is benign and consistent with standard project documentation. No security concerns.
</details>
<evidence></evidence>
<summary>Plain documentation, no malicious content.</summary>
</security_assessment>

[4/17] Reviewing BREAKING CHANGELOG.md, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Plain documentation, no malicious content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`REUSE.toml`) is a configuration file for the REUSE tool, which manages software licensing and copyright annotations. It contains only metadata: path patterns with associated `SPDX-FileCopyrightText` and `SPDX-License-Identifier` fields. There are no executable commands, no network requests, no obfuscated content, and no file operations that could introduce malicious behavior. The file is entirely static and poses no supply-chain risk. All content is consistent with standard packaging practices for documenting license compliance.
</details>
<evidence>
</evidence>
<summary>Static license metadata; no malicious content.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, immich-server.install...
+ Reviewed REUSE.toml. Status: SAFE -- Static license metadata; no malicious content.
[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service...
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `immich-server.install` contains standard Arch Linux packaging scripts (pre_install, post_install, pre_upgrade, post_upgrade, pre_remove, post_remove). All commands are limited to `echo` statements that display informational messages to the user about required manual configuration steps after installation, such as setting up PostgreSQL, enabling nginx, and starting services. There are no network requests, file downloads, obfuscated code, or any system modifications beyond printing text. The version comparison in `post_upgrade` is a standard upgrade notification about a split package. No evidence of malicious or dangerous behavior is present.</details>
<evidence></evidence>
<summary>Safe – standard installation notice script with no malicious behavior.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service, immich.conf...
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
+ Reviewed immich-server.install. Status: SAFE -- Safe – standard installation notice script with no malicious behavior.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Immich server. It defines the service dependencies (redis, postgresql), execution environment, security hardening (ProtectHome, ProtectSystem, NoNewPrivileges, etc.), hardware transcoding device access, and bind mounts for Jellyfin FFmpeg. There is no evidence of malicious or obfuscated code, network requests, data exfiltration, or backdoors. All directives serve legitimate application purposes.
</details>
<evidence></evidence>
<summary>Standard systemd service file; no malicious content.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers...
+ Reviewed immich-server.service. Status: SAFE -- Standard systemd service file; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a Node.js application. It downloads the upstream source from GitHub (pinned to tag v3.3.3) and several geodata files from official sources (geonames.org, natural-earth-vector). All operations—patching, pnpm fetch/install, building, and installing—are routine for this type of package. The SYSUERS, tmpfiles, systemd service, and nginx config files are expected supporting files.

Several b2sums are set to `SKIP` (for geodata sources), but per the analysis guidelines this alone is not malicious—it is a hygiene concern, not a threat. There is no obfuscated code, no unexpected network requests (all URLs point to the package's own upstream or standard geographic data repositories), no execution of downloaded scripts other than the package's own build steps, and no evidence of data exfiltration or backdoor insertion.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing immich.conf, immich.sysusers, immich.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior detected.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `immich.sysusers` is a standard systemd sysusers configuration file that defines a system user `immich` with a home directory and nologin shell, and adds it to the supplementary groups `redis` and `valkey`. This is normal packaging practice for applications that need a dedicated service user and access to Redis/Valkey services. There is no malicious content, obfuscated code, or suspicious operations. The file serves its intended purpose without any security risks.
</details>
<evidence></evidence>
<summary>Standard sysusers config, no malicious content found.</summary>
</security_assessment>

[9/17] Reviewing immich.conf, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich.conf, immich.tmpfiles, nest-cli.json.patch...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers config, no malicious content found.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for the immich server, setting environment variables for database, Redis, media storage, and machine learning. It contains no executable code, no obfuscation, no network requests, and no malicious commands. The default password &#39;postgres&#39; is a weak default but that is a configuration concern, not a supply-chain attack. The file is consistent with standard packaging practices.
</details>
<evidence></evidence>
<summary>Configuration file with no malicious code.</summary>
</security_assessment>

[10/17] Reviewing immich.conf, immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
+ Reviewed immich.conf. Status: SAFE -- Configuration file with no malicious code.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file (unified diff) that modifies a NestJS CLI configuration entry. The change replaces the plugin name `@nestjs/swagger` with `@nestjs/swagger/plugin`. This is a typical adjustment made during packaging to reference a specific subpath within a package. There is no obfuscation, no network activity, no execution of arbitrary code, no exfiltration, and no deviation from normal packaging practices. The patch is purely a configuration change and does not introduce any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Routine configuration patch, no malicious behavior detected.</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing immich.tmpfiles, nginx.immich.conf, postgres-path.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Routine configuration patch, no malicious behavior detected.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd tmpfiles.d configuration for the immich-server package. It creates directories (`d`), a symbolic link (`L`), and sets restrictive permissions (`Z`) on the immich data directories. All operations are confined to the package's own application data paths (`/var/lib/immich`, `/var/lib/immich-revgeo`, `/usr/lib/immich/app/server/upload`). There is no obfuscated code, no network requests, no execution of external commands, and no actions that could exfiltrate data or compromise the system. The file is entirely benign and follows normal packaging practices for applications that need persistent runtime directories.

The permissions `0750` and ownership by `immich:immich` are appropriate for a service running under its own user. The `Z` lines restore default permissions, which is a typical systemd tmpfiles practice. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration for Immich server.</summary>
</security_assessment>

[12/17] Reviewing immich.tmpfiles, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration for Immich server.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nginx configuration for proxying requests to an Immich server running on localhost:2283. It includes common directives like gzip compression, proxy buffering settings, and WebSocket upgrade support. No executable code, network requests, obfuscation, or system modifications are present. The file follows expected packaging practices for distributing configuration templates via AUR.
</details>
<evidence>
</evidence>
<summary>Standard nginx proxy config, no malicious content.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing postgres-path.patch, sh-serverhome.patch, sharp.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard nginx proxy config, no malicious content.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts PostgreSQL binary paths from distribution-specific versioned directories (`/usr/lib/postgresql/...`) to the standard Arch Linux location (`/usr/bin/...`). This is a typical packaging adjustment to ensure the software finds PostgreSQL utilities at the correct path on the target distribution. There is no obfuscation, no network requests, no execution of arbitrary code, and no deviation from standard packaging practices. The change is purely cosmetic for path mapping and poses no security risk.
</details>
<evidence></evidence>
<summary>Patch adjusts PostgreSQL binary paths for Arch Linux.</summary>
</security_assessment>

[15/17] Reviewing sh-serverhome.patch, sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Patch adjusts PostgreSQL binary paths for Arch Linux.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies the Immich server start script to use hardcoded system paths (`/usr/lib/immich/app/server` and `/usr/lib/jellyfin-ffmpeg/lib`) instead of dynamically resolving the server home directory and preloading libmimalloc. This is typical for packages distributed through the AUR, where the installation paths are known and fixed. The addition of `jellyfin-ffmpeg` library path is normal for a package that depends on that library for video processing. There is no obfuscated code, no network requests, no file exfiltration, and no unusual system modifications. The changes are consistent with standard packaging practices and serve the application's stated purpose.
</details>
<evidence></evidence>
<summary>Standard packaging patch, no security threat.</summary>
</security_assessment>

[16/17] Reviewing sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Standard packaging patch, no security threat.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds an `install` script to the `sharp` package's `package.json` that runs `pnpm run build`, which in turn invokes `node install/build.js`. This is a standard and expected practice for native Node.js modules that require compilation during installation. There is no obfuscation, no suspicious network requests, no exfiltration of data, and no deviation from normal packaging workflows. The patch serves the legitimate purpose of ensuring the sharp native binary is built when the package is installed.
</details>
<evidence>
</evidence>
<summary>Standard patch for native module build.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sharp.patch. Status: SAFE -- Standard patch for native module build.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,243
  Completion Tokens: 6,824
  Total Tokens: 56,067
  Total Cost: $0.005723
  Execution Time: 76.62 seconds

Final Status: SAFE


No issues found.
