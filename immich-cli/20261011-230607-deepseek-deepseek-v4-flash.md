---
package: immich-cli
pkgbase: immich
pkgver: 3.3.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 49355
completion_tokens: 7574
total_tokens: 56929
cost: 0.01117537
execution_time: 55.99
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-10-11T23:06:06Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: .git-blame-ignore-revs
    status: safe
    summary: "Safe: contains only a git blame ignore commit hash."
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Documentation file, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file with no executable content.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file with standard sources and SKIP checksums on data files.
  - file: REUSE.toml
    status: safe
    summary: Declarative license metadata; no risk.
  - file: immich-server.install
    status: safe
    summary: Standard .install script with only informational messages.
  - file: immich.conf
    status: safe
    summary: Static configuration file with no malicious content.
  - file: immich-server.service
    status: safe
    summary: Standard systemd service unit, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious elements.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers file, no malicious content.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration; no malicious content.
  - file: nest-cli.json.patch
    status: safe
    summary: Innocuous configuration patch for NestJS plugin.
  - file: nginx.immich.conf
    status: safe
    summary: Standard Nginx config file for Immich proxy.
  - file: sharp.patch
    status: safe
    summary: A routine patch adding a build hook. No security issues.
  - file: postgres-path.patch
    status: safe
    summary: Standard path adaptation for Arch packaging; no malice.
  - file: sh-serverhome.patch
    status: safe
    summary: Standard packaging patch; no malicious behavior detected.
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
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this PKGBUILD, the top-level scope contains only standard variable definitions (`pkgbase`, `pkgname`, `pkgver`, `pkgdesc`, `depends`, `source`, checksums) and function definitions for `prepare()`, `build()`, and the package split functions. None of these functions are executed during `makepkg --printsrcinfo`, and no top-level command substitution, `eval`, `curl`, `wget`, encoding/obfuscation, or other executable payload is present.

The `source` array includes several remote HTTPS URLs for the upstream Immich tarball and geodata files, but these are merely metadata strings during this step and are not downloaded or executed by `makepkg --printsrcinfo`. The `SKIP` checksums are not grounds for concern at this stage. No genuinely malicious behavior exists at the top level.
</details>
<evidence>
</evidence>
<summary>
No top-level dangerous code; printsrcinfo safely parses standard PKGBUILD metadata.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; printsrcinfo safely parses standard PKGBUILD metadata.
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
The file is a standard `.gitignore` for the immich-cli AUR package. It lists build artifacts (`immich-*.tar.gz`, `immich-*.pkg.*`), log files, geospatial data files (`ne_10m_admin_0_countries.geojson`, `admin1CodesASCII.txt`, `admin2Codes.txt`, `cities500.zip`), and a directory (`base-images/`). There is no executable code, network requests, or any malicious content. The patterns are typical for ignoring generated or downloaded files in a packaging repository. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.git-blame-ignore-revs` contains a single commit hash. This is a standard Git configuration file used to suppress specific commits from `git blame` output, typically for large formatting or refactoring changes. There is no executable code, no network requests, no system modifications, and no obfuscation. The content is benign and serves only a development workflow purpose.
</details>
<evidence>

</evidence>
<summary>Safe: contains only a git blame ignore commit hash.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Safe: contains only a git blame ignore commit hash.
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain markdown changelog documenting breaking changes for the immich-server project. It contains no code, no commands, no network operations, and no system modifications. It is purely informational text with no executable or script content. There are no security concerns.
</details>
<evidence></evidence>
<summary>Documentation file, no security concerns.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Documentation file, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text. It contains no code, no commands, no network requests, no obfuscation, and no instructions that could be executed. It is a normal license file distributed with software packages. There are no security issues.</details>
<evidence></evidence>
<summary>Standard license file with no executable content.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no executable content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the `immich` package (including `immich-cli`). It lists sources, dependencies, and build-time data files. All sources point to expected upstream locations: the main code from GitHub via a pinned tag (`v3.3.1`), and geographic data files from `geonames.org`, `raw.githubusercontent.com`, and `naturalearthdata.com` for the application's geocoding functionality. These are standard upstream data feeds for the immich application, not injected malicious resources.  

Several checksums are set to `SKIP` — this is a common practice for large or frequently-updated data files and is not, by itself, evidence of malice. No obfuscation, encoded commands, suspicious network destinations, or operations beyond normal packaging metadata are present. The file is consistent with ordinary AUR packaging practices for a self-hosted photo backup tool.
</details>
<evidence></evidence>
<summary>AUR metadata file with standard sources and SKIP checksums on data files.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file with standard sources and SKIP checksums on data files.
[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE compliance configuration (REUSE.toml) that maps file paths to SPDX copyright and license identifiers. It contains no executable code, no network requests, no file manipulation, and no obfuscation. The content is purely declarative metadata used by the REUSE tool to track licensing. There is no security risk.
</details>
<evidence></evidence>
<summary>Declarative license metadata; no risk.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install, immich-server.service...
[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative license metadata; no risk.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script for the immich-server package. It contains only no‑op functions (`pre_install`, `pre_upgrade`, `pre_remove`, `post_remove`) and two functions that output informational text to the console (`post_install` and `post_upgrade`).  
- `post_install`: prints setup instructions (PostgreSQL initialisation, nginx config, service start, etc.).  
- `post_upgrade`: checks if the previously installed version is &lt; 1.142.0 and, if so, prints a notice about a separate `immich-machine-learning` package.  

There are no network requests, no file writes outside the package’s own scope, no use of dangerous commands (`eval`, `curl`, `wget`, base64 decode), no obfuscation, and no injection of untrusted code. The version comparison uses standard shell utilities and is benign. Everything is consistent with a legitimate AUR packaging script.
</details>
<evidence>
</evidence>
<summary>Standard .install script with only informational messages.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service...
+ Reviewed immich-server.install. Status: SAFE -- Standard .install script with only informational messages.
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for the Immich application. It contains environment variable definitions for database connection, Redis hostname, media storage location, and machine learning settings. There is no executable code, no obfuscation, no network requests, and no suspicious operations. The content is entirely static and intended for configuration purposes only. No supply chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Static configuration file with no malicious content.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers...
+ Reviewed immich.conf. Status: SAFE -- Static configuration file with no malicious content.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd service unit file defines how the Immich server runs as a service. It includes standard security hardening directives (ProtectHome, ProtectSystem, ProtectKernelTunables, etc.), environment configuration, and hardware transcoding access via DeviceAllow and BindReadOnlyPaths for ffmpeg. The ExecStart runs `node dist/main` in the application directory. There is no evidence of malicious behavior such as obfuscated code, unexpected network requests, data exfiltration, or backdoors. The file follows typical packaging practices for a self-hosted service.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit, no malicious code.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles...
+ Reviewed immich-server.service. Status: SAFE -- Standard systemd service unit, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package build script for the immich application (server and CLI). It fetches the source code from the official Immich GitHub repository, applies minor patches to adjust paths and the sharp build process, and installs the built files along with configuration, systemd units, and geodata. The geodata sources (GeoNames, Natural Earth) are legitimate geographical databases used for reverse-geocoding in Immich; these are the same sources used in the official Docker images. There are no suspicious network requests, obfuscated commands, exfiltration attempts, backdoors, or other indicators of a supply-chain attack. The use of SKIP checksums on the geodata files is a packaging trust choice, not evidence of malice. The file is a well-maintained, legitimate package definition.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious elements.</summary>
</security_assessment>

[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious elements.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers.d configuration file. It defines a system user `immich` with a home directory of `/var/lib/immich` and a login shell of `/usr/bin/nologin`, and adds the user to the supplementary groups `redis` and `valkey`. This is normal packaging practice for services that need a dedicated user and access to Redis/Valkey. There is no code execution, network requests, obfuscation, or any other malicious behavior. The file is entirely declarative and benign.
</details>
<evidence></evidence>
<summary>Standard sysusers file, no malicious content.</summary>
</security_assessment>

[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers file, no malicious content.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file for the immich service. It defines directories, a symbolic link, and recursive permission adjustments under `/var/lib/immich` and `/usr/lib/immich`, all within the expected service user (`immich`) and group (`immich`). There are no network requests, obfuscated code, or file operations outside the application's scope. The content is purely declarative and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration; no malicious content.</summary>
</security_assessment>

[12/17] Reviewing nest-cli.json.patch, nginx.immich.conf...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration; no malicious content.
[12/17] Reviewing nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that updates a plugin reference in a NestJS configuration file, changing `@nestjs/swagger` to `@nestjs/swagger/plugin`. This aligns with the NestJS Swagger plugin's correct module name. There is no evidence of malicious code, obfuscation, network requests, or file operations. It is a standard packaging patch to fix a configuration path.
</details>
<evidence></evidence>
<summary>Innocuous configuration patch for NestJS plugin.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Innocuous configuration patch for NestJS plugin.
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Nginx configuration snippet for proxying requests to a local Immich server instance. It contains only declarative configuration directives (proxy settings, compression, upstream definitions) and no executable or script code. There are no network requests, file operations, obfuscation, or any commands that could perform malicious actions. The configuration follows the expected pattern for a reverse proxy setup.
</details>
<evidence></evidence>
<summary>Standard Nginx config file for Immich proxy.</summary>
</security_assessment>

[14/17] Reviewing postgres-path.patch, sh-serverhome.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard Nginx config file for Immich proxy.
[14/17] Reviewing postgres-path.patch, sh-serverhome.patch, sharp.patch...
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds a standard npm `install` hook that triggers `pnpm run build` when the package is installed. This is a common and expected pattern for packages that need to compile native modules (sharp is a well-known image processing library that typically requires a build step). The script runs the package's own build system; it does not introduce any external network requests, data exfiltration, or execution of untrusted code. The patch content is minimal and clearly serves only to automate the build during package installation, consistent with normal upstream packaging practices.
</details>
<evidence>
</evidence>
<summary>A routine patch adding a build hook. No security issues.</summary>
</security_assessment>

[15/17] Reviewing postgres-path.patch, sh-serverhome.patch...
+ Reviewed sharp.patch. Status: SAFE -- A routine patch adding a build hook. No security issues.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adapts Immich's database backup service to locate PostgreSQL utilities (pg_dump, psql) at the standard Arch Linux paths (/usr/bin/) instead of the Debian/Ubuntu-style versioned directory structure (/usr/lib/postgresql/*/bin/). This is a routine filesystem adaptation commonly needed when packaging upstream software for a different distribution. There is no obfuscation, no network activity, no execution of untrusted code, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard path adaptation for Arch packaging; no malice.</summary>
</security_assessment>

[16/17] Reviewing sh-serverhome.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Standard path adaptation for Arch packaging; no malice.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch is a standard packaging adaptation for the Immich server on Arch Linux. It replaces a runtime detection of `SERVER_HOME` with a hardcoded path (`/usr/lib/immich/app/server`) that matches the package file layout, and adds `/usr/lib/jellyfin-ffmpeg/lib` to `LD_LIBRARY_PATH` to support hardware transcoding dependencies. There is no malicious code, obfuscation, network activity, or data exfilteration. The changes follow normal distribution packaging practices.
</details>
<evidence></evidence>
<summary>Standard packaging patch; no malicious behavior detected.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Standard packaging patch; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,355
  Completion Tokens: 7,574
  Total Tokens: 56,929
  Total Cost: $0.011175
  Execution Time: 55.99 seconds

Final Status: SAFE


No issues found.
