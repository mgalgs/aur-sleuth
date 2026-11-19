---
package: immich-server
pkgbase: immich
pkgver: 3.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 49798
completion_tokens: 12834
total_tokens: 62632
cost: 0.00679194
execution_time: 74.69
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-11-11T20:11:09Z
file_verdicts:
  - file: .git-blame-ignore-revs
    status: safe
    summary: Non-executable git config, no risk.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Static changelog, no executable content.
  - file: REUSE.toml
    status: safe
    summary: License metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard Arch packaging for upstream immich; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security issues.
  - file: immich-server.install
    status: safe
    summary: No malicious code; standard install script.
  - file: immich-server.service
    status: safe
    summary: Safe systemd service file for Immich server.
  - file: immich.conf
    status: safe
    summary: Standard config file, no malicious content.
  - file: nest-cli.json.patch
    status: safe
    summary: Routine config patch, no malicious content.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no malicious content.
  - file: nginx.immich.conf
    status: safe
    summary: Standard nginx config file, no malicious content.
  - file: postgres-path.patch
    status: safe
    summary: Legitimate path adaptation for Arch Linux.
  - file: sh-serverhome.patch
    status: safe
    summary: Standard packaging path adjustments, no malicious behavior.
  - file: immich.sysusers
    status: safe
    summary: Declarative sysusers configuration; no malicious content.
  - file: sharp.patch
    status: safe
    summary: Standard npm install lifecycle patch. No malicious indicators.
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
The PKGBUILD contains only top-level variable assignments (pkgbase, pkgname, pkgver, source, b2sums, etc.) and function definitions (prepare, build, package_*). There are no command substitutions, variable expansions that execute commands, or any code in the global scope that would run during `makepkg --printsrcinfo`. The source URLs are simple strings; the b2sums include SKIP entries but that is not a concern at this gate. All potentially suspicious operations (patching, building, installing) are contained within functions that are not executed during `makepkg --printsrcinfo`. Therefore, sourcing the PKGBUILD to print metadata is safe.
</details>
<evidence></evidence>
<summary>Top-level scope is safe for metadata parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe for metadata parsing.
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
This is a .git-blame-ignore-revs file, a standard Git configuration file used to list commit hashes that git blame should ignore (typically formatting or refactoring commits). The file contains a single commit hash (`986fb2326d4a1cf235804f85bbf1d79bae1777a5`). There is no executable content, no network requests, file operations, or obfuscated code. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Non-executable git config, no risk.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Non-executable git config, no risk.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file contains only standard patterns for ignoring build artifacts (`immich-*.tar.gz`, `immich-*.pkg.*`), log files (`*.log`), and upstream data files (`ne_10m_admin_0_countries.geojson`, `admin1CodesASCII.txt`, `admin2Codes.txt`, `cities500.zip`, `base-images/`). There are no executable commands, network requests, obfuscation, or any deviation from normal packaging or version control practices. The content is entirely benign and serves only to prevent certain files from being tracked by git.
</details>
<evidence>
</evidence>
<summary>Standard gitignore file, no malicious content.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a standard ISC-style license file attributed to "Arch Linux Contributors". It contains only a copyright notice and the permissive license text. There is no executable code, no network requests, no obfuscation, no system modifications, or any other malicious activity. This file is a typical license file found in many open-source packages and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[3/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, PKGBUILD...
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain Markdown changelog containing only static text. It does not contain any executable code, scripts, commands, network requests, file operations, or any other form of programmatic content. It simply states there are currently no breaking changes for the package. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>Static changelog, no executable content.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, PKGBUILD, REUSE.toml...
[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Static changelog, no executable content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file, used to declare copyright and license information for files in the repository. It contains no executable code, no network requests, no obfuscation, and no suspicious operations. It simply maps file paths to SPDX copyright and license identifiers. There is nothing in this file that could constitute a supply-chain attack or any security threat.
</details>
<evidence></evidence>
<summary>License metadata file, no security concerns.</summary>
</security_assessment>

[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing .SRCINFO, PKGBUILD, immich-server.install...
+ Reviewed REUSE.toml. Status: SAFE -- License metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for the immich-server package. All source downloads point to the official immich GitHub repository and legitimate geodata sources (geonames.org and naturalearthdata). The patches are local files shipped with the PKGBUILD and modify paths or build scripts to work on Arch Linux. The `mise install` and `mise //:plugins` commands are part of the upstream plugin build workflow. There is no obfuscated code, no unexpected network requests beyond the declared sources, no exfiltration of data, and no execution of attacker-controlled code. The use of `SKIP` checksums for some geodata files is not unusual for frequently-updated data files and is not a supply-chain attack indicator.
</details>
<evidence></evidence>
<summary>Standard Arch packaging for upstream immich; no malicious behavior found.</summary>
</security_assessment>

[5/17] Reviewing .SRCINFO, PKGBUILD, immich-server.install, immich-server.service...
[6/17] Reviewing .SRCINFO, immich-server.install, immich-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Arch packaging for upstream immich; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for an AUR package; it contains no executable code. All sources point to the package's official upstream (immich GitHub releases) and legitimate external geographical datasets (geonames, natural-earth). Checksums are either explicit or set to SKIP, which is ordinary AUR practice and not an indicator of malice. Dependencies are appropriate for a photo/video management server (ffmpeg, libvips, image libraries, etc.). There are no suspicious commands (curl, wget, eval), no obfuscated content, no data exfiltration, and no backdoor indicators.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with no security issues.
</summary>
</security_assessment>

[6/17] Reviewing .SRCINFO, immich-server.install, immich-server.service, immich.conf...
[7/17] Reviewing immich-server.install, immich-server.service, immich.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security issues.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script. It contains only informational messages printed to the terminal, advising the user on post-installation steps (database setup, nginx configuration, service management) and a version-based upgrade notice. There are no network requests, file manipulations, execution of downloaded content, obfuscated code, or any other indicators of malicious behavior. The script does exactly what a packaging `.install` file is expected to do: provide instructions and handle upgrade notes.
</details>
<evidence></evidence>
<summary>No malicious code; standard install script.</summary>
</security_assessment>

[7/17] Reviewing immich-server.install, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing immich-server.service, immich.conf, immich.sysusers...
+ Reviewed immich-server.install. Status: SAFE -- No malicious code; standard install script.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Immich server. It configures the service to run as a non-root user (`immich`) with strong security hardening options (`ProtectHome=yes`, `ProtectSystem=strict`, `NoNewPrivileges=yes`, etc.). The `BindReadOnlyPaths` directive mounts the jellyfin-ffmpeg binaries as `ffmpeg` and `ffprobe`; this is a known packaging dependency for Immich's hardware transcoding support, not a supply-chain attack. There are no network requests, obfuscated code, or unexpected system modifications. The file follows standard Arch packaging practices and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>Safe systemd service file for Immich server.</summary>
</security_assessment>

[8/17] Reviewing immich-server.service, immich.conf, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing immich.conf, immich.sysusers, immich.tmpfiles...
+ Reviewed immich-server.service. Status: SAFE -- Safe systemd service file for Immich server.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for the immich application. It contains only configuration variables (database connection, Redis host, media path, ML settings). There are no commands, scripts, or operations that would execute code or make network requests. It does not contain any obfuscated content, unexpected file operations, or references to external hosts for downloading code. The use of default credentials and plaintext password is an upstream design consideration, not a supply-chain attack. Therefore this file presents no security risk within the context of the AUR package audit.
</details>
<evidence>
</evidence>
<summary>Standard config file, no malicious content.</summary>
</security_assessment>

[9/17] Reviewing immich.conf, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
+ Reviewed immich.conf. Status: SAFE -- Standard config file, no malicious content.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard diff/patch that modifies a configuration file (nest-cli.json). It changes a single line: the NestJS swagger plugin name from `@nestjs/swagger` to `@nestjs/swagger/plugin`. This is a routine upstream configuration fix, with no network activity, obfuscation, system modifications, or execution of untrusted code. The patch file itself does not introduce any security concerns.
</details>
<evidence></evidence>
<summary>Routine config patch, no malicious content.</summary>
</security_assessment>

[11/17] Reviewing immich.sysusers, immich.tmpfiles...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Routine config patch, no malicious content.
[11/17] Reviewing immich.sysusers, immich.tmpfiles, nginx.immich.conf...
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd-tmpfiles configuration snippet for the immich-server AUR package. It defines standard, static directories and symlinks required by the application at runtime. The lines create runtime data directories, a symbolic link from the application directory to the variable data store, and enforce recursive permissions/ownership on the data directories. There is no executable code, network interaction, obfuscation, or any mechanism to exfiltrate data or execute untrusted content. This is standard FHS-compliant packaging practice for web applications that need to separate immutable application files from mutable user data.
</details>
<evidence>

</evidence>
<summary>Standard tmpfiles configuration, no malicious content.</summary>
</security_assessment>

[11/17] Reviewing immich.sysusers, immich.tmpfiles, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing immich.sysusers, nginx.immich.conf, postgres-path.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no malicious content.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an nginx configuration snippet for the Immich application. It defines HTTP server settings, upstream server, and reverse proxy directives. All content is standard nginx syntax with no executable code, network requests, or obfuscated strings. The use of `&apos;` is just the XML/HTML entity for a single quote, which is a normal way to represent an empty string in the nginx `map` directive. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard nginx config file, no malicious content.</summary>
</security_assessment>

[13/17] Reviewing immich.sysusers, postgres-path.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard nginx config file, no malicious content.
[13/17] Reviewing immich.sysusers, postgres-path.patch, sh-serverhome.patch...
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that adjusts PostgreSQL binary paths from a Debian/Ubuntu-style location (`/usr/lib/postgresql/{version}/bin/`) to a simpler `/usr/bin/` path. This is a standard packaging adaptation for Arch Linux, where PostgreSQL utilities (pg_dump, psql) are installed directly under `/usr/bin/`. The patch modifies both the main service source and corresponding test files. There is no obfuscated code, no network activity, no execution of untrusted content, and no data exfiltration. It is a straightforward, legitimate path adjustment for the target distribution.
</details>
<evidence></evidence>
<summary>Legitimate path adaptation for Arch Linux.</summary>
</security_assessment>

[13/17] Reviewing immich.sysusers, postgres-path.patch, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing immich.sysusers, sh-serverhome.patch, sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Legitimate path adaptation for Arch Linux.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adjusts library paths and the server home directory to match the expected Arch Linux installation layout. It removes the libmimalloc preloading and adds `LD_LIBRARY_PATH` to include `/usr/lib/jellyfin-ffmpeg/lib`. `SERVE_HOME` is set to an absolute path. These are standard packaging modifications to integrate the upstream application with the distribution's file system and dependencies. There is no obfuscated code, no network requests, no file exfiltration, and no execution of untrusted content. The changes are transparent and serve only to adapt the start script to the packaging context.
</details>
<evidence></evidence>
<summary>Standard packaging path adjustments, no malicious behavior.</summary>
</security_assessment>

[15/17] Reviewing immich.sysusers, sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Standard packaging path adjustments, no malicious behavior.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd sysusers configuration file used to create a system user (`immich`) and assign it to supplementary groups (`redis`, `valkey`). The file contains no executable code, no network requests, no file operations, and no obfuscated or encoded commands. It is a purely declarative configuration file, fully consistent with normal packaging practices for services that require a dedicated system user. The `&amp;quot;` entity is simply an XML-escaped double quote and has no security significance.
</details>
<evidence>
</evidence>
<summary>Declarative sysusers configuration; no malicious content.</summary>
</security_assessment>

[16/17] Reviewing sharp.patch...
+ Reviewed immich.sysusers. Status: SAFE -- Declarative sysusers configuration; no malicious content.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds an `install` script to the `sharp` package&#39;s `package.json` that executes `pnpm run build`. This is a standard npm/pnpm lifecycle hook that ensures the native build step (already defined as `node install/build.js`) is automatically triggered during dependency installation. 

There is no evidence of malicious behavior: no obfuscation, no unexpected network requests, no data exfiltration, no execution of code from untrusted sources, and no backdoors. The change adheres to standard AUR packaging practices by ensuring the upstream build system runs correctly during the package build process.
</details>
<evidence></evidence>
<summary>Standard npm install lifecycle patch. No malicious indicators.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sharp.patch. Status: SAFE -- Standard npm install lifecycle patch. No malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,798
  Completion Tokens: 12,834
  Total Tokens: 62,632
  Total Cost: $0.006792
  Execution Time: 74.69 seconds

Final Status: SAFE


No issues found.
