---
package: immich-cli
pkgbase: immich
pkgver: 3.3.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 50680
completion_tokens: 17250
total_tokens: 67930
cost: 0.007751380
execution_time: 84.36
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-11-04T20:06:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file; no security concerns.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Plain changelog file, no security concern.
  - file: .git-blame-ignore-revs
    status: safe
    summary: File is an inert git blame ignore revisions list.
  - file: LICENSE
    status: safe
    summary: File is a standard license, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata file with no executable or malicious content.
  - file: immich-server.install
    status: safe
    summary: Informational post-install script; no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Pure metadata config; no malicious code.
  - file: immich.conf
    status: safe
    summary: Plain configuration file; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate package from official upstream; no malicious code.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles config, no security issues.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers configuration for immich.
  - file: nest-cli.json.patch
    status: safe
    summary: Benign configuration patch for NestJS CLI.
  - file: immich-server.service
    status: safe
    summary: Hardened systemd unit with no supply-chain attack indicators.
  - file: nginx.immich.conf
    status: safe
    summary: Plain nginx config, no executable or malicious code.
  - file: sh-serverhome.patch
    status: safe
    summary: Standard packaging patch, no malicious behavior.
  - file: postgres-path.patch
    status: safe
    summary: Standard downstream packaging path fix.
  - file: sharp.patch
    status: safe
    summary: Patch adds benign npm install script; no malicious content.
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
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only executes top-level code. The top-level scope consists entirely of standard variable definitions: pkgbase, pkgname, pkgrel, pkgver, pkgdesc, url, license, arch, makedepends, depends, source, and b2sums. No command substitutions, `eval`, external downloads, or executable statements appear at global scope.

The `prepare()`, `build()`, and `package_*()` functions contain build and install operations, but those functions are not executed by `makepkg --printsrcinfo`. Their content is out of scope for this narrow gate and will be reviewed in the full PKGBUILD audit. The remote `source` entries (GitHub, geonames.org, raw.githubusercontent.com) are not fetched or verified during this step, so they do not affect the safety of running `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is only standard variable definitions; no dangerous code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is only standard variable definitions; no dangerous code executes during printsrcinfo.
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
This file is a standard `.gitignore` used by Git version control to exclude certain files and directories from tracking. It consists solely of pattern lines that prevent packaging artifacts (`*.tar.gz`, `*.pkg.*`), log files, and GIS data files from being committed. No executable code, network requests, obfuscated content, or any operation beyond ignoring files is present. There is no indication of malicious or unconventional behavior.
</details>
<evidence></evidence>
<summary>Standard gitignore file; no security concerns.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file; no security concerns.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plaintext Markdown changelog. It contains no executable code, no network requests, no file operations, and no obfuscation. There is no evidence of any malicious behavior. It is simply documentation for the immich-server package.
</details>
<evidence>

</evidence>
<summary>Plain changelog file, no security concern.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, .git-blame-ignore-revs, LICENSE...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Plain changelog file, no security concern.
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.git-blame-ignore-revs` file containing a single commit hash. This is a widely used git feature for ignoring specific commits (such as formatting or whitespace changes) in `git blame` output. The content is inert text with no executable code, no network operations, no file system manipulation, and no obfuscation. There is no evidence of any malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>File is an inert git blame ignore revisions list.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, LICENSE...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- File is an inert git blame ignore revisions list.
[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain-text license file. It contains only a permissive software license statement attributed to "Arch Linux Contributors" and has no executable code, network requests, obfuscation, or other potentially malicious content. There is nothing to analyze from a security perspective.</details>
<evidence></evidence>
<summary>File is a standard license, no security issues.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- File is a standard license, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is purely a metadata descriptor for the AUR package **immich-cli**. It contains no executable code, no scripts, and no inline commands. It defines the package name, version, dependencies, source URLs, and BLAKE2 checksums. All source URLs point to the official upstream repository on GitHub (tagged release v3.3.6) and standard geospatial data providers (geonames.org, naturalearth vector). The presence of `SKIP` checksums is a routine packaging practice for locally provided files (patches, systemd units) and does not indicate malice. There are no `curl`, `bash`, `eval`, or other dangerous constructs; no obfuscation; no data exfiltration; and no downloads from unexpected hosts. The file follows normal AUR metadata conventions and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Metadata file with no executable or malicious content.</summary>
</security_assessment>

[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file with no executable or malicious content.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux post-installation script for the immich-server package. It only prints informational messages to the user about required post-installation steps (PostgreSQL setup, nginx configuration, enabling services) and, during upgrades, notifies about the separation of the immich-machine-learning component. All commands are simple `echo` statements with ANSI color codes for readability. There are no network requests, file modifications, execution of untrusted code, or any obfuscated or suspicious constructs. The version comparison in `post_upgrade` is a straightforward string comparison to decide whether to show a reminder. The script is benign and follows normal packaging practices.
</details>
<evidence>

</evidence>
<summary>Informational post-install script; no security concerns.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install, immich-server.service...
[6/17] Reviewing PKGBUILD, REUSE.toml, immich-server.service...
+ Reviewed immich-server.install. Status: SAFE -- Informational post-install script; no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a REUSE.toml file, a standard configuration file for the REUSE compliance tool. It statically maps file paths to SPDX license identifiers and copyright holders. It contains no executable code, no network operations, no obfuscation, and no system modifications. It is purely declarative metadata describing the licensing of project files. No supply-chain attack vectors or suspicious behaviors are present.
</details>
<evidence></evidence>
<summary>Pure metadata config; no malicious code.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, REUSE.toml, immich-server.service, immich.conf...
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
+ Reviewed REUSE.toml. Status: SAFE -- Pure metadata config; no malicious code.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `immich.conf` is a standard environment configuration for the Immich application. It contains only variable assignments for database, Redis, media paths, and machine learning settings. There are no executable instructions, no network requests, no obfuscation, and no suspicious file operations. The content is entirely harmless and consistent with normal application configuration.
</details>
<evidence></evidence>
<summary>Plain configuration file; no malicious content.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich-server.service...
+ Reviewed immich.conf. Status: SAFE -- Plain configuration file; no malicious content.
[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for the `immich` package (self-hosted photos/videos backup) sources code from the official GitHub repository (`https://github.com/immich-app/immich`), applies Arch-specific patches (e.g., postgres path, start.sh server home), and builds using standard Node.js tooling (`pnpm`, `nest`, `mise`). All downloads in the `source` array originate from the project&#8217;s own GitHub or from well-known upstream data sources (geonames.org, nvkelso/natural-earth-vector) necessary for the application&#8217;s reverse-geocoding feature. These mirror the upstream Dockerfile approach as noted in comments. No suspicious network requests, obfuscated commands, eval/base64 constructs, unexpected file operations, or attempts to exfiltrate data are present. The use of `SKIP` checksums for some geodata files is a hygiene concern but is explicitly excluded from being considered malicious per the analysis criteria. The build and packaging logic is consistent with normal AUR practice for a large monorepo application.
</details>
<evidence></evidence>
<summary>Legitimate package from official upstream; no malicious code.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing immich-server.service, immich.sysusers, immich.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate package from official upstream; no malicious code.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd tmpfiles.d configuration file used by the immich package. It defines directories, a symlink, and recursive permission/ownership adjustments for the immich user and group. There are no commands, network requests, obfuscation, or any behavior that could exfiltrate data, download executable code, or modify system files outside the application scope. It is a routine packaging artifact.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config, no security issues.</summary>
</security_assessment>

[9/17] Reviewing immich-server.service, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich-server.service, immich.sysusers, nest-cli.json.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles config, no security issues.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `immich.sysusers` is a systemd sysusers configuration file that creates a system user `immich` for the Immich application and adds it to supplementary groups `redis` and `valkey`. This is a standard packaging practice for applications that require access to Redis/Valkey services. The file contains no executable code, no network operations, no obfuscation, and no instructions. It is consistent with the intended functionality of the immich package and does not deviate from standard packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard sysusers configuration for immich.</summary>
</security_assessment>

[11/17] Reviewing immich-server.service, nest-cli.json.patch...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers configuration for immich.
[11/17] Reviewing immich-server.service, nest-cli.json.patch, nginx.immich.conf...
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard unified diff/patch file that modifies a NestJS CLI configuration (`nest-cli.json`). The change adjusts the plugin name from `@nestjs/swagger` to `@nestjs/swagger/plugin`, which is a legitimate configuration tweak for a NestJS application. The patch contains no dangerous commands, no network activity, no obfuscated code, and no file operations outside the intended configuration. There is no evidence of any supply chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Benign configuration patch for NestJS CLI.</summary>
</security_assessment>

[11/17] Reviewing immich-server.service, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing immich-server.service, nginx.immich.conf, postgres-path.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Benign configuration patch for NestJS CLI.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd service unit file for the upstream Immich server. It contains no shell code, no network requests, no obfuscated commands, and no execution of untrusted scripts. The configuration is a well-hardened service definition.

The `BindReadOnlyPaths` directive overrides `/usr/bin/ffmpeg` and `/usr/bin/ffprobe` with versions from `/usr/lib/jellyfin-ffmpeg` for this unit only. This is a dependency binding to ensure hardware-accelerated transcoding support and operates strictly within the application's dependency scope. This is standard packaging for media servers and not a supply-chain attack.

The extensive systemd security hardening (`ProtectSystem=strict`, `ProtectHome=true`, `NoNewPrivileges=yes`, `CapabilityBoundingSet=`, `SystemCallArchitectures=native`) actively reduces the application's attack surface. All `ReadWritePaths` are confined to the application's own data directories (`/var/lib/immich`). There is no evidence of data exfiltration, backdoors, or tampering with unrelated system files.
</details>
<evidence></evidence>
<summary>Hardened systemd unit with no supply-chain attack indicators.</summary>
</security_assessment>

[12/17] Reviewing immich-server.service, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
+ Reviewed immich-server.service. Status: SAFE -- Hardened systemd unit with no supply-chain attack indicators.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain nginx configuration snippet for reverse-proxying the Immich application. It contains no executable scripts, no obfuscated code, no network requests, and no file operations. The configuration follows standard practices for WebSocket support, compression, buffer tuning, and sets reasonable proxy headers. The `map` block restricting `X-Forwarded-Proto` to only `http` or `https` is actually a security hardening measure to prevent header injection. There is nothing in this file that deviates from the expected packaging of an nginx configuration for a self-hosted application. No signs of a supply-chain attack are present.
</details>
<evidence>
</evidence>
<summary>
Plain nginx config, no executable or malicious code.
</summary>
</security_assessment>

[14/17] Reviewing postgres-path.patch, sh-serverhome.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Plain nginx config, no executable or malicious code.
[14/17] Reviewing postgres-path.patch, sh-serverhome.patch, sharp.patch...
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies the Immich server start script to hardcode `SERVER_HOME` and add `jellyfin-ffmpeg` libraries to `LD_LIBRARY_PATH`. These changes adapt the script for a packaged installation where paths are fixed and specific library dependencies are required. There is no obfuscation, no network access, no execution of untrusted code, no exfiltration, and no deviation from normal packaging practices. The modifications serve legitimate integration purposes and present no security threat.
</details>
<evidence></evidence>
<summary>Standard packaging patch, no malicious behavior.</summary>
</security_assessment>

[15/17] Reviewing postgres-path.patch, sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Standard packaging patch, no malicious behavior.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file modifies the hardcoded PostgreSQL binary paths in the Immich server code from the version-specific `/usr/lib/postgresql/${databaseMajorVersion}/bin/${bin}` pattern to the standard `/usr/bin/${bin}` pattern. This change is required for compatibility with Arch Linux's `postgresql` package, which installs client binaries (`pg_dump`, `psql`) directly into `/usr/bin/` rather than versioned subdirectories. The patch is a plain, transparent diff with no obfuscation, no executable code, and no network requests. It constitutes a standard downstream packaging adjustment and does not display any characteristics of a supply-chain attack or malicious code injection.
</details>
<evidence>
</evidence>
<summary>
Standard downstream packaging path fix.
</summary>
</security_assessment>

[16/17] Reviewing sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Standard downstream packaging path fix.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds a standard npm lifecycle script (`"install": "pnpm run build"`) to the package's `package.json`.  This is a normal packaging practice that triggers the existing build process during dependency installation.  The patch does not introduce any network requests, obfuscated code, dangerous commands, or modifications outside the package&#39;s own scope.  The use of HTML-encoded quotes (`&amp;quot;`) in the patch content is unusual but does not represent a security threat; it is likely an artifact of how the file was formatted.  There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Patch adds benign npm install script; no malicious content.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sharp.patch. Status: SAFE -- Patch adds benign npm install script; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,680
  Completion Tokens: 17,250
  Total Tokens: 67,930
  Total Cost: $0.007751
  Execution Time: 84.36 seconds

Final Status: SAFE


No issues found.
