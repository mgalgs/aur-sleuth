---
package: immich-server
pkgbase: immich
pkgver: 3.3.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 50688
completion_tokens: 16706
total_tokens: 67394
cost: 0.007653100
execution_time: 133.37
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-11-04T20:07:21Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with packaging artifacts and data files; no security issues.
  - file: .git-blame-ignore-revs
    status: safe
    summary: Benign git blame ignore list containing a single commit hash; no security issues.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Trivial changelog text; no code or suspicious behavior found.
  - file: LICENSE
    status: safe
    summary: License text only; no security issues found.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml declares license metadata only; no malicious behavior present.
  - file: immich-server.install
    status: safe
    summary: "Install script: informational echo messages only, no malicious behavior."
  - file: PKGBUILD
    status: safe
    summary: No malicious code found; normal upstream build with routine dependency/data downloads.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; legitimate upstream sources; SKIP checksums only on GeoNames data.
  - file: immich.conf
    status: safe
    summary: Plain immich service configuration file; no malicious or dangerous content found.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers.d config; safe user/group setup for immich.
  - file: immich-server.service
    status: safe
    summary: Standard hardened systemd service; no malicious or dangerous behavior found.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration for immich state directories; no malicious behavior found.
  - file: nest-cli.json.patch
    status: safe
    summary: Trivial NestJS CLI config patch; no security concerns found.
  - file: postgres-path.patch
    status: safe
    summary: Benign Arch-specific patch relocating PostgreSQL utility paths to /usr/bin; no security issues.
  - file: nginx.immich.conf
    status: safe
    summary: Standard Immich nginx reverse proxy config; no malicious behavior found.
  - file: sh-serverhome.patch
    status: safe
    summary: Patch adjusts library path and server home; no malicious behavior found.
  - file: sharp.patch
    status: safe
    summary: Patch adds standard sharp install build hook; no malicious behavior.
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
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. In this file, the top-level scope consists solely of variable and array assignments: metadata (`pkgbase`, `pkgver`, `pkgdesc`, etc.), dependency arrays, the `source` array, and checksum arrays. There are no top-level command substitutions, function calls, downloads, or code executions that would run during sourcing.

The `source` array includes entries with `SKIP` checksums and remote URLs (including geonames data), but `makepkg --printsrcinfo` does not download or verify sources, so these are not executed at this stage. Potentially interesting code inside `prepare()`, `build()`, and `package_*()` functions — including pnpm operations, `mise install`, and file installation — is out of scope for this narrow gate and will be covered by the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only contains variable assignments; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only contains variable assignments; no malicious code executes during printsrcinfo.
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
This file is a standard `.gitignore` used in an AUR package repository. It excludes build artifacts such as `immich-*.tar.gz` and `immich-*.pkg.*`, log files, downloaded geographic data files (`*.geojson`, `admin1CodesASCII.txt`, `admin2Codes.txt`, `cities500.zip`), and a `base-images/` directory. These entries are consistent with normal AUR packaging workflows for the immich-server package and contain no executable code, network requests, obfuscation, or system-modifying operations. There is no evidence of malicious or unsafe behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with packaging artifacts and data files; no security issues.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with packaging artifacts and data files; no security issues.
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.git-blame-ignore-revs` contains a single line: a 40-character hexadecimal string (`986fb2326d4a1cf235804f85bbf1d79bae1777a5`), which is a git commit hash. This file is a standard git configuration mechanism used to list commits (typically mass-formatting or refactoring commits) that should be excluded from `git blame` output. It contains no executable code, no network operations, no file manipulation, and no obfuscated content. This is a normal, benign repository metadata file with no security implications.
</details>
<evidence>
</evidence>
<summary>
Benign git blame ignore list containing a single commit hash; no security issues.
</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Benign git blame ignore list containing a single commit hash; no security issues.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a short changelog note for immich-server stating that there are currently no breaking changes. It contains no executable code, no network requests, no file operations, no obfuscated content, and no references to external hosts. It is purely informational text and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Trivial changelog text; no code or suspicious behavior found.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Trivial changelog text; no code or suspicious behavior found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain software license text (ISC-style license). It contains no executable code, no network operations, no file manipulation, and no packaging logic. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
License text only; no security issues found.
</summary>
</security_assessment>

[4/17] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License text only; no security issues found.
[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration used to declare copyright and license metadata for files in the AUR package repository. It contains only structured annotations listing file glob patterns and their associated SPDX copyright/license identifiers. There are no executable instructions, no network operations, no file downloads, no obfuscated content, and no system-modifying behavior. The content is consistent with standard REUSE licensing compliance tooling and poses no supply-chain security risk.
</details>
<evidence>
</evidence>
<summary>
REUSE.toml declares license metadata only; no malicious behavior present.</summary>
</security_assessment>

[5/17] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml declares license metadata only; no malicious behavior present.
[5/17] Reviewing .SRCINFO, PKGBUILD, immich-server.install...
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for immich-server. `pre_install`, `pre_remove`, and `post_remove` are no-ops. `post_install` only prints setup instructions to the terminal (PostgreSQL initialization, vectorchord extension, nginx example, service enablement, firewall note). `post_upgrade` compares the old package version against 1.142.0 using `sort -V` and prints a migration notice if upgrading from 1.142.0 or older.

There are no network requests, downloads, encoded commands, file modifications, privilege changes, or execution of untrusted content. The script performs no actions outside the normal informational role of an `.install` hook. No evidence of malicious or dangerous behavior was found.
</details>
<evidence>
</evidence>
<summary>
Install script: informational echo messages only, no malicious behavior.</summary>
</security_assessment>

[5/17] Reviewing .SRCINFO, PKGBUILD, immich-server.install, immich-server.service...
[6/17] Reviewing .SRCINFO, PKGBUILD, immich-server.service...
+ Reviewed immich-server.install. Status: SAFE -- Install script: informational echo messages only, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD builds the upstream immich project from the official GitHub tag, applies local patches for Arch paths, and installs server/web/CLI artifacts under `/usr/lib/immich`. No obfuscation, eval/base64/curl/wget tricks, credential access, or unexpected remote hosts are present. The `cat &lt;&lt;-EOF` block only writes a small shell wrapper in `$pkgdir/usr/bin/immich-admin` that execs the installed app's own `start.sh`. The geodata sources (geonames.org, natural-earth-vector GitHub) are legitimate dataset URLs used for the app's reverse-geocoding feature, and the resulting files are installed as data, not executed.

Hygiene notes, not indicators of malware: several geodata sources have `SKIP` b2sums, so those downloads are not checksum-verified and the geodata is unpinned; `mise install` and `mise //:plugins` also fetch tools/dependencies at build time from upstream config. `pnpm patch-commit` runs upstream package scripts as part of the build. These practices reduce reproducibility and expand the supply-chain window, but they are consistent with ordinary AUR/build workflows and do not constitute injected malicious code.
</details>
<evidence>
</evidence>
<summary>
No malicious code found; normal upstream build with routine dependency/data downloads.</summary>
</security_assessment>

[6/17] Reviewing .SRCINFO, PKGBUILD, immich-server.service, immich.conf...
[7/17] Reviewing .SRCINFO, immich-server.service, immich.conf...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code found; normal upstream build with routine dependency/data downloads.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes the immich-server AUR package (self-hosted photos/videos backup tool). The file contains only standard package metadata: dependencies, source URLs, and checksums. All source locations are legitimate and relevant to the application: the project's own GitHub release tarball pinned to tag v3.3.6, the Natural Earth vector dataset pinned to tag v5.1.2 on GitHub, and well-known GeoNames geographic data dumps from download.geonames.org used for map/geocoding features in a photo backup tool. No suspicious hosts, no executable code, no obfuscated content, and no unexpected network behavior are present.

The only hygiene concern is that four GeoNames data files (cities500.zip, admin1CodesASCII.txt, admin2Codes.txt, countryInfo.txt) have b2sums set to SKIP. These are non-executable geographic data files from a reputable upstream provider, so this is a reproducibility/trust choice rather than a supply-chain indicator, and per the review criteria it does not justify an UNSAFE decision. All other sources have BLAKE2 checksums. Dependencies (Redis, PostgreSQL, libvips, ImageMagick, jellyfin-ffmpeg, etc.) are consistent with the application's stated purpose.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; legitimate upstream sources; SKIP checksums only on GeoNames data.</summary>
</security_assessment>

[8/17] Reviewing immich-server.service, immich.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; legitimate upstream sources; SKIP checksums only on GeoNames data.
[8/17] Reviewing immich-server.service, immich.conf, immich.sysusers...
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment/configuration file for the immich-server package. It defines database, Redis, media storage, and machine-learning service settings using standard key=value pairs. No commands, scripts, network fetches, or executable content are present. The values point to localhost services and local filesystem paths (e.g., `/var/lib/immich/upload`), consistent with normal packaging and expected application configuration.

There are no suspicious network destinations, obfuscated data, dangerous command invocations, or file operations outside the application's own scope. The file contains only commented-out optional settings and local configuration values. It does not warrant an UNSAFE classification.
</details>
<evidence>
</evidence>
<summary>
Plain immich service configuration file; no malicious or dangerous content found.</summary>
</security_assessment>

[8/17] Reviewing immich-server.service, immich.conf, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing immich-server.service, immich.sysusers, immich.tmpfiles...
+ Reviewed immich.conf. Status: SAFE -- Plain immich service configuration file; no malicious or dangerous content found.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd sysusers.d configuration file. It defines an unprivileged system user `immich` with a locked shell (`/usr/bin/nologin`) and home directory `/var/lib/immich`, which is consistent with the Immich server package creating a dedicated service account for its data.

The two additional lines add the `immich` user to the `redis` and `valkey` supplementary groups. This is normal for an application that needs access to either a Redis or Valkey socket/service. There is no exfiltration, no code execution, no suspicious downloads, and no system modification beyond standard user/group configuration that the package is expected to perform.

No obfuscation, encoded commands, network activity, or dangerous operations are present. This file is a harmless packaging configuration artifact.
</details>
<evidence>
</evidence>
<summary>
Standard sysusers.d config; safe user/group setup for immich.</summary>
</security_assessment>

[10/17] Reviewing immich-server.service, immich.tmpfiles...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers.d config; safe user/group setup for immich.
[10/17] Reviewing immich-server.service, immich.tmpfiles, nest-cli.json.patch...
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service unit for the Immich server. It launches `node dist/main` from the Immich application directory under a dedicated `immich` user, with extensive standard hardening: `ProtectSystem=strict`, `ProtectHome=true`, `NoNewPrivileges=yes`, namespace restrictions, limited read-write paths, and no ambient capabilities. These are normal service isolation measures for a self-hosted media application.

The `DeviceAllow` and `SupplementaryGroups` settings support hardware-accelerated video transcoding using DRM/NVIDIA devices, which is consistent with Immich's media-processing purpose. The `BindReadOnlyPaths` entries overlay the jellyfin-ffmpeg binaries for this unit only, providing the application with a compatible ffmpeg/ffprobe. This is a read-only mount scoped to the service's mount namespace, not a persistent modification of host system files. There is no evidence of network exfiltration, encoded/obfuscated commands, credential theft, backdoors, or unexpected execution of attacker-controlled code.
</details>
<evidence>
</evidence>
<summary>
Standard hardened systemd service; no malicious or dangerous behavior found.</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch...
+ Reviewed immich-server.service. Status: SAFE -- Standard hardened systemd service; no malicious or dangerous behavior found.
[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file for the Immich package. It creates runtime/state directories under /var/lib/immich with appropriate ownership (immich) and permissions (0750), sets a symlink from the installed application path to the upload directory, and resets permissions/ownership on existing state directories. These operations are confined to the application's own state directories under /var/lib/immich, which is normal packaging practice for a service that needs persistent storage.

There are no network operations, no executable code, no obfuscation, no use of dangerous shell features, and no tampering with unrelated system files. The `/var/lib/immich-revgeo` path is also scoped to the package's own reverse-geocoding data directory. This file does not contain any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Standard tmpfiles configuration for immich state directories; no malicious behavior found.
</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration for immich state directories; no malicious behavior found.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple patch that changes the NestJS CLI plugin name in `server/nest-cli.json` from `@nestjs/swagger` to `@nestjs/swagger/plugin`. This is a routine build configuration adjustment, likely to correct the plugin path resolution for a newer version of the NestJS Swagger package.

There is no evidence of malicious behavior: no network requests, no encoded or obfuscated commands, no file system tampering, no execution of downloaded content, and no deviation from standard packaging practices. The patch only modifies a JSON configuration value and contains no executable logic.
</details>
<evidence>
</evidence>
<summary>
Trivial NestJS CLI config patch; no security concerns found.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Trivial NestJS CLI config patch; no security concerns found.
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts the Immich database backup service to locate PostgreSQL utilities (`pg_dump`, `psql`) under `/usr/bin/` instead of the Debian/Ubuntu-style versioned path `/usr/lib/postgresql/${databaseMajorVersion}/bin/`. On Arch Linux, PostgreSQL binaries are installed directly in `/usr/bin`, so this is a standard downstream packaging adjustment.

The change is limited to binary path strings in the service implementation and its unit tests. There is no obfuscation, no network activity, no download/execute behavior, no file tampering outside the application scope, and no suspicious command construction. The referenced binaries are the well-known PostgreSQL tools the application legitimately invokes for database backup/restore. This is ordinary packaging hygiene, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Benign Arch-specific patch relocating PostgreSQL utility paths to /usr/bin; no security issues.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing nginx.immich.conf, sh-serverhome.patch, sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Benign Arch-specific patch relocating PostgreSQL utility paths to /usr/bin; no security issues.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nginx server configuration for the Immich application. It listens on port 8080, proxies requests to a local upstream server at localhost:2283, enables gzip compression, and sets standard proxy headers including WebSocket upgrade handling. There are no network downloads, no execution of external code, no file system modifications, and no obfuscated commands.

The only externally controlled input is the request itself, and the configuration treats it in normal reverse-proxy fashion. The X-Forwarded-Proto values are restricted to http/https, and the upstream is a local service. This is ordinary packaging/application configuration rather than malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Immich nginx reverse proxy config; no malicious behavior found.</summary>
</security_assessment>

[15/17] Reviewing sh-serverhome.patch, sharp.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard Immich nginx reverse proxy config; no malicious behavior found.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts `server/bin/start.sh` for the Immich server package. It removes the mimalloc `LD_PRELOAD` setup and instead sets `LD_LIBRARY_PATH` to include `/usr/lib/jellyfin-ffmpeg/lib`, which is consistent with an Immich packaging choice to use the jellyfin-ffmpeg runtime libraries. It also replaces the dynamic `SERVER_HOME` detection with a fixed path `/usr/lib/immich/app/server`, matching the expected Arch package layout.

There is no suspicious network activity, no encoded or obfuscated commands, no eval or curl/wget usage, and no file operations outside the application's own startup configuration. The patch only changes environment setup and the server home directory. Even though `LD_LIBRARY_PATH` pointing to another package's library directory is slightly unusual, it is a packaging/dependency decision rather than evidence of malicious behavior. The file is consistent with ordinary AUR packaging practices and should be treated as SAFE.
</details>
<evidence>
</evidence>
<summary>
Patch adjusts library path and server home; no malicious behavior found.</summary>
</security_assessment>

[16/17] Reviewing sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Patch adjusts library path and server home; no malicious behavior found.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch that adds an `install` script to the `package.json` of the `sharp` module. The added script simply runs the existing `build` script (`pnpm run build`, which invokes `node install/build.js`), the standard build process for the sharp native module. There is no obfuscation, no external download, no file exfiltration, and no execution of attacker-controlled code introduced by this patch. Adding an install lifecycle hook to trigger a module's own upstream build is a normal packaging adjustment. While lifecycle scripts always merit attention, this one points to the package's own declared build command and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Patch adds standard sharp install build hook; no malicious behavior.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sharp.patch. Status: SAFE -- Patch adds standard sharp install build hook; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,688
  Completion Tokens: 16,706
  Total Tokens: 67,394
  Total Cost: $0.007653
  Execution Time: 133.37 seconds

Final Status: SAFE


No issues found.
