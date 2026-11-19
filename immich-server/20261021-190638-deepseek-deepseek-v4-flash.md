---
package: immich-server
pkgbase: immich
pkgver: 3.3.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 49267
completion_tokens: 6424
total_tokens: 55691
cost: 0.005652465
execution_time: 88.54
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-10-21T19:06:38Z
file_verdicts:
  - file: .git-blame-ignore-revs
    status: safe
    summary: A benign Git blame ignore list.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Documentation file with no executable content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: immich-server.install
    status: safe
    summary: Benign .install file with informational messages, no malicious code.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is metadata, no malicious content.
  - file: immich.conf
    status: safe
    summary: Plain configuration file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior found.
  - file: immich-server.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers file for service user creation
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no malicious content.
  - file: nest-cli.json.patch
    status: safe
    summary: Standard patch file, no security concerns.
  - file: nginx.immich.conf
    status: safe
    summary: Standard nginx config for immich; no malicious content.
  - file: postgres-path.patch
    status: safe
    summary: Safe patch adapting PostgreSQL paths for Arch Linux
  - file: sh-serverhome.patch
    status: safe
    summary: Standard packaging patch; no malicious behavior detected.
  - file: sharp.patch
    status: safe
    summary: Patch adds benign install hook for native module build.
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
The PKGBUILD only contains top-level variable assignments (pkgbase, pkgname, pkgver, source, b2sums, etc.) and function definitions (prepare, build, package_*). No command substitutions, eval calls, or other executable statements exist in the global scope. All potentially dangerous operations (patching, fetching dependencies, building) occur inside functions that are **not** executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction poses no risk.
</details>
<evidence></evidence>
<summary>No executable top-level code; only variable assignments exist.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable top-level code; only variable assignments exist.
Note: 4 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://download.geonames.org/export/dump/cities500.zip, https://download.geonames.org/export/dump/admin1CodesASCII.txt, https://download.geonames.org/export/dump/admin2Codes.txt, https://download.geonames.org/export/dump/countryInfo.txt
Reviewing the 17 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/17] Reviewing .SRCINFO...
[0/17] Reviewing .SRCINFO, .gitignore...
[0/17] Reviewing .SRCINFO, .gitignore, .git-blame-ignore-revs...
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.git-blame-ignore-revs` contains a single commit hash. This is a standard Git configuration file used to instruct `git blame` to ignore certain commits (e.g., large formatting changes). There is no executable content, no network operations, no dangerous commands, and no obfuscation. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>A benign Git blame ignore list.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .gitignore...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- A benign Git blame ignore list.
[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in Git repositories to exclude certain files and directories from version control. It lists patterns such as `immich-*.tar.gz`, `immich-*.pkg.*`, `*.log`, and others. These are ordinary ignore entries for build artifacts, downloaded data files, and logs. There is no executable code, no network requests, no obfuscated content, and no instructions that could lead to malicious behavior. The file is entirely benign and typical for an AUR package repository.</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file that describes package sources and dependencies. It contains no executable code or commands. All sources point to legitimate upstream locations: the immich GitHub repository, geonames.org for geographic data, and a natural-earth-vector GeoJSON file from GitHub. Several checksums are set to `SKIP`, which is normal practice for VCS sources or when checksums are impractical (as instructed, this is not a sign of malice). There are no obfuscated entries, no unexpected network destinations, and no embedded scripts. The file simply declares package structure and sources for the immich-server and immich-cli split packages.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain Markdown document containing a summary of breaking changes for the immich-server project. It has no executable code, no network requests, no file operations, and no instructions that could be considered malicious. It is purely informational and poses no security risk.</details>
<evidence></evidence>
<summary>Documentation file with no executable content.</summary>
</security_assessment>

[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Documentation file with no executable content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard open-source software license (ISC-style) from "Arch Linux Contributors." It contains only plain legal text granting permission to use, copy, modify, and distribute the software with a disclaimer of warranties. There is no executable code, no network requests, no obfuscation, and no system modification commands. The content is exactly what the filename implies and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that provides informational messages to the user during package installation, upgrade, and removal. It contains only `echo` commands that print setup instructions and a version comparison to notify users about a packaging change. There is no network activity, no execution of code from external sources, no file modifications beyond normal packaging, and no obfuscation. The script does exactly what an .install file is supposed to do. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Benign .install file with informational messages, no malicious code.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed immich-server.install. Status: SAFE -- Benign .install file with informational messages, no malicious code.
[6/17] Reviewing PKGBUILD, REUSE.toml, immich-server.service...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a configuration file for the REUSE tool, which standardizes copyright and license information in a project. It contains only declarative annotations mapping file paths to SPDX identifiers and copyright holders. There is no executable code, no network requests, no obfuscation, and no system-level operations. This is standard packaging metadata and poses no security threat.
</details>
<evidence>
</evidence>
<summary>REUSE.toml is metadata, no malicious content.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, REUSE.toml, immich-server.service, immich.conf...
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is metadata, no malicious content.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the immich-server application. It contains environment variable definitions for database connection (hostname, username, password, database name), Redis hostname, media storage location, machine learning settings, and cache folder. There is no executable code, no network downloads, no obfuscation, and no system modification. The password shown is a default/example value (postgres) and is not a real credential—standard practice for configuration examples. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Plain configuration file with no security issues.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich-server.service...
+ Reviewed immich.conf. Status: SAFE -- Plain configuration file with no security issues.
[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a complex Node.js monorepo. All source downloads originate from the project's own GitHub repository and legitimate third‑party geodata providers (geonames.org, natural‑earth‑vector). Build steps use `pnpm`, `nest`, and `mise` as expected for the upstream build system. Patches are local files shipped with the package, not fetched at build time. The `SKIP` checksums on a few sources are a hygiene concern but not malicious. No obfuscated code, unexpected network requests, data exfiltration, or backdoors are present. The helper script `immich-admin` is a simple wrapper for the application’s own management commands.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing immich-server.service, immich.sysusers, immich.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior found.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Immich server. It configures security hardening (ProtectHome, ProtectSystem, NoNewPrivileges, etc.) and environment variables. The `BindReadOnlyPaths` line overlays jellyfin-ffmpeg binaries onto /usr/bin, which is an expected upstream dependency. There are no network requests, obfuscated code, file exfiltration, or other malicious behaviors. The file follows typical AUR packaging conventions and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[9/17] Reviewing immich-server.service, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
+ Reviewed immich-server.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration snippet, used to define a system user and group memberships for the immich service. It creates an unprivileged user `immich` with a no-login shell, assigns a home directory under `/var/lib/immich`, and adds the user to the supplementary groups `redis` and `valkey` (common for services that need access to Redis/Valkey). There is no evidence of malicious behavior: no network requests, no obfuscated or encoded commands, no file operations, and no deviation from typical packaging practices. The file is purely declarative and follows the expected format for AUR packages that manage their own service users.
</details>
<evidence>
</evidence>
<summary>Standard sysusers file for service user creation</summary>
</security_assessment>

[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers file for service user creation
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd-tmpfiles configuration file (tmpfiles.d snippet) that creates standard directories, sets permissions, and establishes a symbolic link for the immich application. It contains no executable code, no network requests, no obfuscation, and no operations outside the expected scope of setting up application data directories. The ownership and permissions are appropriate for a service that runs as the `immich` user. This file is a normal part of packaging and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no malicious content.</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no malicious content.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file (likely for an Arch AUR package) that modifies the NestJS CLI configuration (`nest-cli.json`) to fix a plugin path. The change corrects the plugin name from `&quot;@nestjs/swagger&quot;` to `&quot;@nestjs/swagger/plugin&quot;`, which is a common adjustment to ensure the correct module is loaded. There is no malicious or suspicious behavior; the patch is a straightforward string replacement in a JSON configuration file. No network requests, obfuscation, or system modifications are present.
</details>
<evidence>

</evidence>
<summary>Standard patch file, no security concerns.</summary>
</security_assessment>

[12/17] Reviewing nest-cli.json.patch, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Standard patch file, no security concerns.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nginx configuration for the immich application. It defines an upstream server on localhost:2283, sets up compression, proxy buffering, and headers, and proxies all requests to that server. There are no executable commands, no network requests to external/unknown hosts (the proxy_pass points to the application's own backend), and no obfuscation or suspicious patterns. The configuration is legible and follows typical nginx reverse-proxy practices. No evidence of malicious or supply-chain attack behavior.</details>
<evidence></evidence>
<summary>Standard nginx config for immich; no malicious content.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing postgres-path.patch, sh-serverhome.patch, sharp.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard nginx config for immich; no malicious content.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts PostgreSQL binary paths from version-dependent locations (`/usr/lib/postgresql/${version}/bin/`) to the standard Arch Linux location (`/usr/bin/`). This is a routine packaging adaptation for Arch, where PostgreSQL tools like `pg_dump` and `psql` are installed directly in `/usr/bin/`. There is no obfuscation, no external network requests, no unexpected system modifications, and no evidence of malicious intent. The change is transparent and serves only to ensure the Immich database backup service can find the correct binaries on Arch systems.</details>
<evidence></evidence>
<summary>Safe patch adapting PostgreSQL paths for Arch Linux</summary>
</security_assessment>

[15/17] Reviewing sh-serverhome.patch, sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Safe patch adapting PostgreSQL paths for Arch Linux
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies the upstream start script to adjust library paths and the server home directory for the Arch Linux package. Specifically, it removes the `LD_PRELOAD` of libmimalloc (since the package may not bundle that library) and instead adds `/usr/lib/jellyfin-ffmpeg/lib` to `LD_LIBRARY_PATH`, which is a standard dependency for media transcoding. It also replaces the dynamic `SERVER_HOME` calculation with a hardcoded path `/usr/lib/immich/app/server`, matching the intended installation directory on Arch. These changes are consistent with typical packaging adaptations — they do not introduce network requests, execute downloaded code, or perform any malicious actions. The patch is transparent and serves only to integrate the application correctly into the Arch filesystem.
</details>
<evidence></evidence>
<summary>Standard packaging patch; no malicious behavior detected.</summary>
</security_assessment>

[16/17] Reviewing sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Standard packaging patch; no malicious behavior detected.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds an `"install"` script to the `sharp` package's `package.json` that runs `pnpm run build`. This is a standard practice for native Node.js modules (like `sharp`, an image processing library) to ensure the native bindings are compiled automatically when the package is installed via `npm` or `pnpm`. The `install` lifecycle script is a well-known npm mechanism, and triggering the existing build logic from it is not inherently suspicious. No network requests, obfuscation, or dangerous system modifications are introduced by this patch itself. The safety of the build script is assumed from the upstream `sharp` package, not from this patch. There is no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Patch adds benign install hook for native module build.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sharp.patch. Status: SAFE -- Patch adds benign install hook for native module build.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,267
  Completion Tokens: 6,424
  Total Tokens: 55,691
  Total Cost: $0.005652
  Execution Time: 88.54 seconds

Final Status: SAFE


No issues found.
