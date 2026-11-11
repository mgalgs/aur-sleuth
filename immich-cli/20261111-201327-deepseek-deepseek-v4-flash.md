---
package: immich-cli
pkgbase: immich
pkgver: 3.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 49579
completion_tokens: 11215
total_tokens: 60794
cost: 0.00648081
execution_time: 82.37
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-11-11T20:13:26Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Documentation file with no security concerns.
  - file: .git-blame-ignore-revs
    status: safe
    summary: Standard git config file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Declarative REUSE metadata file, no security concerns.
  - file: immich-server.install
    status: safe
    summary: Standard install script with only informational messages.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior detected; standard AUR packaging.
  - file: immich-server.service
    status: safe
    summary: Standard systemd service file, no malicious code.
  - file: immich.conf
    status: safe
    summary: Standard configuration file; no malicious code found.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers file, no security concerns.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration for immich application state directories.
  - file: nest-cli.json.patch
    status: safe
    summary: Safe, trivial patch to plugin path.
  - file: nginx.immich.conf
    status: safe
    summary: Standard nginx config; no security issues.
  - file: postgres-path.patch
    status: safe
    summary: Standard packaging path fix, no security issues.
  - file: sharp.patch
    status: safe
    summary: Benign patch for upstream dependency build.
  - file: sh-serverhome.patch
    status: safe
    summary: Patch contains no malicious behaviors; standard packaging adjustments.
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
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgbase, pkgname, pkgver, source, b2sums, etc.) with no command substitutions, eval calls, or any other code that would execute when the file is sourced. The `source` array includes URLs, but these are simply string definitions — they are not fetched or executed during `makepkg --printsrcinfo`. All potentially interesting code resides within `prepare()`, `build()`, and `package_*()` functions, which are not invoked by this command. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution during sourcing.
Note: 4 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://download.geonames.org/export/dump/cities500.zip, https://download.geonames.org/export/dump/admin1CodesASCII.txt, https://download.geonames.org/export/dump/admin2Codes.txt, https://download.geonames.org/export/dump/countryInfo.txt
Reviewing the 17 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/17] Reviewing .SRCINFO...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file containing patterns to exclude build artifacts, log files, and data files from version control. No executable code, network requests, or system modifications are present. This is a normal practice in package repositories and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain Markdown document providing a summary of breaking changes for the immich-server project. It contains no executable code, no network requests, no system operations, and no obfuscated content. There is no evidence of malicious behavior or supply-chain attack indicators. It is purely documentation.
</details>
<evidence>
</evidence>
<summary>Documentation file with no security concerns.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, .git-blame-ignore-revs, LICENSE...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Documentation file with no security concerns.
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Git configuration file (`.git-blame-ignore-revs`) that lists a single commit hash. It instructs `git blame` to ignore that commit when attributing changes, typically used for large formatting or refactoring commits. The content is a plain SHA-1 hash with no executable code, network operations, or any other suspicious behavior. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard git config file, no security issues.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, .git-blame-ignore-revs, LICENSE, PKGBUILD...
[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Standard git config file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard software license (ISC-style) attributed to Arch Linux Contributors. It contains only legal text granting permission to use, copy, modify, and distribute the software. There is no executable code, no network requests, no obfuscated instructions, and no system modifications. No security issues are present.</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `REUSE.toml` configuration file for the REUSE compliance tool. It merely declares SPDX license and copyright annotations for various files in the repository. It contains no executable code, no network operations, no file system modifications, and no obfuscated content. The file is purely declarative metadata and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Declarative REUSE metadata file, no security concerns.</summary>
</security_assessment>

[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing .SRCINFO, PKGBUILD, immich-server.install...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative REUSE metadata file, no security concerns.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script for the immich-server package. It contains only informational `echo` statements during `post_install` and `post_upgrade`, guiding the user on manual configuration steps (PostgreSQL setup, nginx, service enabling) and notifying about a package split for `immich-machine-learning`. No dangerous commands (eval, curl, wget, base64, file operations, or network requests) are present. All functions are benign and follow normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script with only informational messages.</summary>
</security_assessment>

[6/17] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed immich-server.install. Status: SAFE -- Standard install script with only informational messages.
[6/17] Reviewing .SRCINFO, PKGBUILD, immich-server.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata descriptor. It defines the package name, version, dependencies, and source URLs for the immich application (server and CLI). The sources include the main source tarball from GitHub, local patches, systemd service/tmpfiles/sysusers configs, and several geographic data files (from geonames.org and a natural-earth-vector GeoJSON file) used by the application for geo-tagging features. All external URLs point to well-known, legitimate upstream hosts (github.com, download.geonames.org, raw.githubusercontent.com).  

Several of the geographic data files have checksums set to `SKIP`. Per the analysis instructions, SKIP checksums are a trust/hygiene concern but do not constitute malicious behavior and are common for frequently-updated upstream datasets. The main source tarball and all patches have verifiable BLAKE2 hashes. There is no obfuscated code, no dangerous commands (the file contains only declarative key-value pairs), and no evidence of exfiltration, backdoors, or unexpected network destinations. The file adheres to standard AUR packaging practices and does not introduce any supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[6/17] Reviewing .SRCINFO, PKGBUILD, immich-server.service, immich.conf...
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for immich-cli/immich-server follows standard AUR packaging practices for a complex, self-hosted application. It fetches its source from the official upstream GitHub repository and includes several local patches that adapt paths and build steps for Arch Linux. The build process uses pnpm (Node.js package manager) and mise (tool version manager), both listed in makedepends. All network activity (cloning the upstream repo, fetching npm dependencies via pnpm, downloading geodata files from geonames.org and GitHub) is expected for this application's build and data requirements. The geodata files have SKIP checksums, which is not a sign of malice; it is a reproducibility concern but does not constitute malicious behavior. No obfuscated code, eval, base64, curl|bash patterns, backdoors, or data exfiltration commands are present. The patches and helper scripts serve legitimate packaging purposes. The package may lack full reproducibility due to unpinned geodata sources, but no evidence of injected malicious code was found.
</details>
<evidence></evidence>
<summary>No malicious behavior detected; standard AUR packaging.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing immich-server.service, immich.conf, immich.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior detected; standard AUR packaging.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Immich server. It configures the service with typical dependencies, environment variables, user/group settings, and security hardening (ProtectHome, ProtectSystem, etc.). The `ExecStart=node dist/main` is normal for a Node.js application. The `BindReadOnlyPaths` directive binds a specific ffmpeg variant into the unit's filesystem namespace, which is a legitimate operational choice for hardware transcoding compatibility. There are no network requests, obfuscated code, or unexpected system modifications. The file follows conventional packaging practices and does not contain any malicious code.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious code.</summary>
</security_assessment>

[8/17] Reviewing immich-server.service, immich.conf, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing immich.conf, immich.sysusers, immich.tmpfiles...
+ Reviewed immich-server.service. Status: SAFE -- Standard systemd service file, no malicious code.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain configuration file for the Immich application. It sets environment variables for database connection, Redis, media storage paths, and machine learning settings. All values are standard defaults or localhost addresses; there are no commands, executable code, obfuscation, or unusual operations. The credentials shown (postgres/postgres) are default placeholders commonly used for local development, not hardcoded secrets intended for production. No evidence of a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard configuration file; no malicious code found.</summary>
</security_assessment>

[10/17] Reviewing immich.sysusers, immich.tmpfiles...
+ Reviewed immich.conf. Status: SAFE -- Standard configuration file; no malicious code found.
[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-sysusers configuration file for the immich-cli package. It defines a system user `immich` with a home directory at `/var/lib/immich` and a nologin shell, then adds that user to the `redis` and `valkey` supplementary groups. These operations are routine for a service that needs to communicate with Redis or Valkey key-value stores. No network operations, obfuscated commands, or unusual system modifications are present. The file follows normal packaging conventions and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard sysusers file, no security concerns.</summary>
</security_assessment>

[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers file, no security concerns.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file for the immich application. It defines directories, a symbolic link, and recursive permission/ownership settings under `/var/lib/immich` and `/var/lib/immich-revgeo`. These operations are typical for setting up application state directories during package installation. There is no evidence of malicious behavior – no network requests, obfuscation, data exfiltration, or execution of untrusted code. The file is harmless and follows normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles configuration for immich application state directories.</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration for immich application state directories.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies a configuration file (nest-cli.json) to correct the plugin name for the NestJS Swagger plugin from "@nestjs/swagger" to "@nestjs/swagger/plugin". This is a simple, legitimate change that aligns with standard NestJS configuration practices. There is no obfuscated code, no execution of commands, no network requests, and no suspicious file operations. The change is purely a string substitution in a JSON configuration file and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Safe, trivial patch to plugin path.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Safe, trivial patch to plugin path.
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nginx configuration file for the Immich application. It defines a reverse proxy setup that listens on port 8080 and forwards requests to a local server on port 2283. It includes common directives for WebSocket support, gzip compression, and proxy buffering. The file contains only static configuration and no executable code, network requests, or obfuscation. The commented lines reference an official upstream template and are harmless. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard nginx config; no security issues.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing postgres-path.patch, sh-serverhome.patch, sharp.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard nginx config; no security issues.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts the path where the application expects PostgreSQL binaries (pg\_dump, psql) from the upstream default `/usr/lib/postgresql/&lt;version&gt;/bin/` to `/usr/bin/`, which is the standard location for PostgreSQL binaries on Arch Linux. This is a common distribution packaging adjustment and does not introduce any security concerns. There is no obfuscation, network activity, code execution outside the application's scope, or exfiltration of data. The change is transparent and serves only to align the application with the Arch Linux filesystem hierarchy.
</details>
<evidence></evidence>
<summary>Standard packaging path fix, no security issues.</summary>
</security_assessment>

[15/17] Reviewing sh-serverhome.patch, sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Standard packaging path fix, no security issues.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file modifies the `package.json` of the `sharp` library to add an `install` script that runs `pnpm run build`. This is a standard and completely benign packaging practice for native Node.js modules like `sharp`, ensuring the C++ compilation step runs during installation. The patch does not introduce any network requests to unexpected hosts, obfuscated commands, data exfiltration, or any other behavior indicative of a supply chain attack.
</details>
<evidence></evidence>
<summary>Benign patch for upstream dependency build.</summary>
</security_assessment>

[16/17] Reviewing sh-serverhome.patch...
+ Reviewed sharp.patch. Status: SAFE -- Benign patch for upstream dependency build.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts the Immich server start script for the Arch Linux environment. The changes replace a libmimalloc preload with an `LD_LIBRARY_PATH` entry pointing to the Jellyfin ffmpeg library, and hardcode `SERVER_HOME` to the expected installation path. These are typical distribution packaging modifications — no unexpected network requests, obfuscation, or execution of untrusted code. There is no evidence of supply-chain injection, data exfiltration, or backdoor behavior. The patch adheres to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Patch contains no malicious behaviors; standard packaging adjustments.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Patch contains no malicious behaviors; standard packaging adjustments.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,579
  Completion Tokens: 11,215
  Total Tokens: 60,794
  Total Cost: $0.006481
  Execution Time: 82.37 seconds

Final Status: SAFE


No issues found.
