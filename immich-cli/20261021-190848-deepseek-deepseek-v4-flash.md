---
package: immich-cli
pkgbase: immich
pkgver: 3.3.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 49285
completion_tokens: 8099
total_tokens: 57384
cost: 0.005958953
execution_time: 74.5
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-10-21T19:08:47Z
file_verdicts:
  - file: .git-blame-ignore-revs
    status: safe
    summary: Non-executable git config, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: No malicious content; standard AUR metadata file.
  - file: LICENSE
    status: safe
    summary: A plain license file with no executable content or security concerns.
  - file: REUSE.toml
    status: safe
    summary: Declarative license metadata file; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with no signs of malice.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Safe changelog documentation file.
  - file: immich-server.install
    status: safe
    summary: File contains only informational echo statements; no malicious code.
  - file: immich-server.service
    status: safe
    summary: Service file with standard hardening, no malicious content.
  - file: immich.conf
    status: safe
    summary: Plain config file, no malicious content.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers configuration file; no security issues.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no security issues.
  - file: nest-cli.json.patch
    status: safe
    summary: Benign configuration patch, no security risk.
  - file: nginx.immich.conf
    status: safe
    summary: Standard nginx config, no malicious content.
  - file: postgres-path.patch
    status: safe
    summary: Routine path adjustment for Arch Linux packaging.
  - file: sh-serverhome.patch
    status: safe
    summary: Standard packaging patch; no malicious behavior.
  - file: sharp.patch
    status: safe
    summary: Standard npm install hook for native build.
---

immich-cli is built from immich
Materializing immich-cli from local mirror...
Materialized immich-cli
Analyzing immich-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgbase, pkgname, pkgver, source, checksums, etc.) and function definitions (prepare, build, package_immich-server, package_immich-cli). No command substitutions, backtick expansions, or dangerous commands (eval, curl, wget) exist outside of function bodies. All code that could perform network operations or system modifications is inside functions that are **not invoked** by `makepkg --printsrcinfo`. The source array includes URLs with variable expansions (`${pkgver}`) and some SKIP checksums, but these are inert strings at parse time—no fetching or execution occurs.
</details>
<evidence></evidence>
<summary>No malicious top-level code executes during parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code executes during parsing.
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
This file is a Git configuration file that lists a commit hash for `git blame` to ignore. It contains no executable code, no network requests, no obfuscated content, and no system modifications. It is a standard development convenience file with no security implications.
</details>
<evidence></evidence>
<summary>Non-executable git config, no security concerns.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Non-executable git config, no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard git ignore patterns for build artifacts (`.tar.gz`, `.pkg.*`), log files, geospatial data downloads, and a base images directory. There are no executable instructions, network requests, obfuscated code, or any other indicators of malicious behavior. This is a normal file used to prevent committing generated or temporary files to version control.</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a valid .SRCINFO metadata file for the `immich` package from the Arch User Repository. It lists package dependencies, sources (including geolocation data files from geonames.org and GitHub), and checksums—some of which are set to `SKIP`. SKIP checksums are standard practice for VCS sources and for externally maintained data files that may change; they do not indicate malice.

No executable code, obfuscation, suspicious network requests, or commands are present. All sources are either the package's own upstream (GitHub) or well-known public data repositories (geonames.org, naturalearthdata.com). The dependencies (postgresql, nodejs, ffmpeg, etc.) are typical for a self-hosted media server. There is no evidence of data exfiltration, backdoors, or any deviation from standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>No malicious content; standard AUR metadata file.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious content; standard AUR metadata file.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only a standard permissive software license (ISC-style). There is no code, network requests, file operations, or any functional content that could pose a security risk. It is purely a legal notice.
</details>
<evidence>
</evidence>
<summary>A plain license file with no executable content or security concerns.</summary>
</security_assessment>

[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing BREAKING CHANGELOG.md, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- A plain license file with no executable content or security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE configuration file (REUSE.toml) used to declare copyright and license metadata for files in the repository. It contains only declarative annotations mapping file paths to SPDX identifiers. No executable code, network requests, file operations, or any other potentially malicious behavior is present. This is a standard packaging metadata file with no security implications.
</details>
<evidence></evidence>
<summary>Declarative license metadata file; no security issues.</summary>
</security_assessment>

[4/17] Reviewing BREAKING CHANGELOG.md, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing BREAKING CHANGELOG.md, PKGBUILD, immich-server.install...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative license metadata file; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for building the immich application from its official upstream source. All source downloads come from the project's own GitHub repository (for the main source) or from legitimate, well-known geodata providers (geonames.org, naturalearthdata.com) that are explicitly mentioned in the Immich upstream Dockerfile for reverse-geocoding support.  

There is no obfuscated code, no eval statements, no unexpected network requests to unknown or unrelated hosts, no data exfiltration, and no execution of attacker-controlled code. The use of `SKIP` checksums for the geodata files is a standard practice for frequently-updated data sources and does not indicate malice. The build process uses `pnpm` in a conventional manner for Node.js monorepos.  

All operations (patch application, dependency fetching, pruning, deployment) serve the legitimate purpose of building and packaging the immich server and CLI. No supply-chain attack indicators were found.
</details>
<evidence>
</evidence>
<summary>Legitimate PKGBUILD with no signs of malice.</summary>
</security_assessment>

[5/17] Reviewing BREAKING CHANGELOG.md, PKGBUILD, immich-server.install, immich-server.service...
[6/17] Reviewing BREAKING CHANGELOG.md, immich-server.install, immich-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with no signs of malice.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a markdown changelog named "BREAKING CHANGELOG.md". Its content consists solely of a brief description of breaking changes (currently none) for immich-server. There are no executable scripts, network requests, obfuscated text, or any potentially dangerous operations. This is purely documentation and presents no security risk.
</details>
<evidence></evidence>
<summary>Safe changelog documentation file.</summary>
</security_assessment>

[6/17] Reviewing BREAKING CHANGELOG.md, immich-server.install, immich-server.service, immich.conf...
[7/17] Reviewing immich-server.install, immich-server.service, immich.conf...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Safe changelog documentation file.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `immich-server.install` contains only standard Arch Linux packaging hooks that print informational messages to the user. All actions are limited to `echo` statements with colored output providing setup instructions and upgrade notices. There are no network requests, file downloads, obfuscated code, or system modifications beyond normal package maintenance. The post_upgrade version comparison is a common pattern for displaying important upgrade notes. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>File contains only informational echo statements; no malicious code.</summary>
</security_assessment>

[7/17] Reviewing immich-server.install, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing immich-server.service, immich.conf, immich.sysusers...
+ Reviewed immich-server.install. Status: SAFE -- File contains only informational echo statements; no malicious code.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Immich server. It defines the service's execution environment, dependencies, security hardening (ProtectHome, ProtectSystem, ProtectKernelTunables, etc.), and runtime parameters. The `BindReadOnlyPaths` entries overlay the jellyfin-ffmpeg executables over the system ffmpeg and ffprobe; while unusual, this is a benign packaging technique to provide a specific FFmpeg version for the application. There is no obfuscation, no network downloads, no file exfiltration, and no execution of untrusted code. The file follows normal Arch packaging practices for a robust service definition.
</details>
<evidence></evidence>
<summary>Service file with standard hardening, no malicious content.</summary>
</security_assessment>

[8/17] Reviewing immich-server.service, immich.conf, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing immich.conf, immich.sysusers, immich.tmpfiles...
+ Reviewed immich-server.service. Status: SAFE -- Service file with standard hardening, no malicious content.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for the Immich self-hosted photo/video backup application. It sets environment variables for database connection, Redis, media storage location, and machine learning settings. The default credentials (DB_PASSWORD=postgres) are weak but are not evidence of a supply-chain attack; they are typical development defaults that users are expected to change. The file contains no executable code, no network requests, no obfuscation, and no unexpected file operations. It is purely declarative and safe.
</details>
<evidence>
</evidence>
<summary>Plain config file, no malicious content.</summary>
</security_assessment>

[10/17] Reviewing immich.sysusers, immich.tmpfiles...
+ Reviewed immich.conf. Status: SAFE -- Plain config file, no malicious content.
[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard sysusers.d configuration used by systemd to create a system user and group for the immich application. It defines a dedicated user `immich` with a non-login shell, a home directory, and membership in the `redis` and `valkey` supplementary groups (likely needed for database access). There is no obfuscation, unexpected network activity, or any behavior that deviates from normal packaging practices. The file is consistent with its purpose and contains no malicious or suspicious content.
</details>
<evidence>
</evidence>
<summary>Standard sysusers configuration file; no security issues.</summary>
</security_assessment>

[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers configuration file; no security issues.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet used to create runtime directories and a symlink for the Immich application. It defines directories under `/var/lib/immich/` with the `d` action, creates a symbolic link from `/usr/lib/immich/app/server/upload` to `/var/lib/immich/upload` with the `L` action, and recursively sets ownership and permissions on `/var/lib/immich` and `/var/lib/immich-revgeo` with the `Z` action. All paths are within the application's own data directories, and the operations are routine for setting up a service environment. There is no obfuscation, no network activity, no execution of arbitrary code, and no manipulation of files outside the application's scope. The content is entirely benign and follows expected packaging conventions.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no security issues.</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no security issues.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that modifies a `nest-cli.json` configuration. The change simply appends `/plugin` to the `@nestjs/swagger` plugin name, which is a common adjustment for NestJS projects to reference the correct plugin module. There is no suspicious code, no network requests, no file manipulation, or any other malicious behavior. The patch is consistent with normal AUR packaging practices for adjusting upstream source files.
</details>
<evidence>
</evidence>
<summary>Benign configuration patch, no security risk.</summary>
</security_assessment>

[12/17] Reviewing nest-cli.json.patch, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Benign configuration patch, no security risk.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nginx configuration template for the Immich self-hosted photo management application. It sets up a reverse proxy with standard settings: upstream server definition, compression directives, proxy buffering, and headers for WebSocket support. There are no network requests, no executable code, no obfuscation, and no system modifications. The configuration is entirely benign and follows typical nginx reverse proxy patterns. The `&apos;&apos;` is just XML escaping representing an empty string; in the actual config it would be `'' close;` which is valid nginx syntax for handling empty Upgrade headers. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard nginx config, no malicious content.</summary>
</security_assessment>

[14/17] Reviewing postgres-path.patch, sh-serverhome.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard nginx config, no malicious content.
[14/17] Reviewing postgres-path.patch, sh-serverhome.patch, sharp.patch...
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that adjusts PostgreSQL binary paths from a versioned subdirectory (`/usr/lib/postgresql/&lt;version&gt;/bin/`) to a flat location (`/usr/bin/`). This is a standard packaging adaptation for Arch Linux, where PostgreSQL binaries are typically located directly under `/usr/bin/` rather than in version-specific directories. The changes are consistent across both the main source file and its corresponding test spec file. There is no evidence of malicious behavior, network requests, obfuscation, or unexpected system modifications. The patch strictly modifies path strings to conform to the distribution&#x27;s filesystem layout.
</details>
<evidence></evidence>
<summary>Routine path adjustment for Arch Linux packaging.</summary>
</security_assessment>

[15/17] Reviewing sh-serverhome.patch, sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Routine path adjustment for Arch Linux packaging.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adjusts the Immich server start script for an Arch Linux package. It replaces a dynamic `LD_PRELOAD` of `libmimalloc.so.3` with a static `LD_LIBRARY_PATH` addition pointing to `/usr/lib/jellyfin-ffmpeg/lib`, and hardcodes `SERVER_HOME` to `/usr/lib/immich/app/server`. These are standard packaging modifications to integrate the application with system-provided libraries (jellyfin-ffmpeg) and a fixed installation path. There is no evidence of obfuscated code, suspicious network requests, file exfiltration, or execution of untrusted content. The changes serve the package's stated purpose and do not inject malicious behavior.
</details>
<evidence></evidence>
<summary>Standard packaging patch; no malicious behavior.</summary>
</security_assessment>

[16/17] Reviewing sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Standard packaging patch; no malicious behavior.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds an `install` script to the package.json of the `sharp` library, which runs `pnpm run build` during package installation. This is a standard practice for npm packages that compile native addons (such as sharp) to ensure the binary is built after installation. The patch does not introduce any obfuscated code, network requests, file exfiltration, or execution of untrusted content. The build script itself is part of the upstream source and is not shown to be malicious. There is no evidence of a supply-chain attack in this patch; it merely fixes a missing install hook for the package&#x27;s intended functionality.
</details>
<evidence></evidence>
<summary>Standard npm install hook for native build.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sharp.patch. Status: SAFE -- Standard npm install hook for native build.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,285
  Completion Tokens: 8,099
  Total Tokens: 57,384
  Total Cost: $0.005959
  Execution Time: 74.50 seconds

Final Status: SAFE


No issues found.
