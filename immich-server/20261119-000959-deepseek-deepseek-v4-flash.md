---
package: immich-server
pkgbase: immich
pkgver: 3.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 50085
completion_tokens: 9176
total_tokens: 59261
cost: 0.00615933
execution_time: 79.22
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-11-19T00:09:59Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no executable or suspicious content found.
  - file: .git-blame-ignore-revs
    status: safe
    summary: Single Git blame-ignore commit hash; no executable or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Legitimate AUR metadata, no malicious content.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Documentation file with no malicious code.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml license metadata file; no executable content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: immich-server.install
    status: safe
    summary: Safe install script with informational messages.
  - file: immich-server.service
    status: safe
    summary: Standard service unit, no malicious content.
  - file: immich.conf
    status: safe
    summary: Configuration file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for immich; no malicious behavior detected.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers configuration for the Immich service user.
  - file: nest-cli.json.patch
    status: safe
    summary: Routine configuration patch, no malicious content.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles config; no security issues.
  - file: nginx.immich.conf
    status: safe
    summary: Standard nginx config for Immich, no malicious code.
  - file: sharp.patch
    status: safe
    summary: Standard patch adding build step during install.
  - file: postgres-path.patch
    status: safe
    summary: Standard path adjustment, no security concerns.
  - file: sh-serverhome.patch
    status: safe
    summary: Legitimate packaging patch; no malicious behavior found.
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
The PKGBUILD only contains standard variable definitions (pkgbase, pkgname, pkgver, source, b2sums, etc.) and function definitions (prepare, build, package_*). There are no top-level command substitutions, eval statements, or any code that executes network requests or system modifications during sourcing. The functions that contain more complex operations are only executed during later build stages, not during `makepkg --printsrcinfo`. No obfuscated code, suspicious data exfiltration, or unexpected commands are present in the global scope.
</details>
<evidence></evidence>
<summary>No top-level dangerous code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; safe to source.
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
The file is a standard `.gitignore` for the AUR package repository. It only lists local artifacts and generated/cached data to exclude from version control (tarballs, package build outputs, logs, downloaded geodata files, and a `base-images/` directory). There are no commands, network requests, encoded blobs, file manipulations, or anything executable in the content. This is consistent with ordinary packaging hygiene and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore; no executable or suspicious content found.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no executable or suspicious content found.
[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md...
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.git-blame-ignore-revs` contains a single 40-character SHA-1 commit hash (`986fb2326d4a1cf235804f85bbf1d79bae1777a5`). This is a standard Git configuration file used to tell `git blame` to skip over commits that only contain formatting or mass-rewrite changes, so that blame output points at the substantive author instead.

There is no executable code, no network access, no file manipulation, and no encoding or obfuscation. The content is a plain commit reference and is wholly consistent with ordinary repository metadata. No security concerns.
</details>
<evidence>
</evidence>
<summary>Single Git blame-ignore commit hash; no executable or suspicious content.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Single Git blame-ignore commit hash; no executable or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file for the Arch User Repository (AUR) package `immich`. It contains only declarative data: package name(s), description, version, dependencies, source URLs, and checksum digests. No executable code, network requests, obfuscated strings, or file operations are present. The `b2sums` entries marked `SKIP` are standard for sources that cannot be pinned with a static hash (e.g., dynamically generated content or VCS checkouts) and are not evidence of malicious intent. All external URLs point to the project&#39;s official GitHub repository or well-known geodata providers. The content is consistent with typical AUR packaging practice.
</details>
<evidence></evidence>
<summary>Legitimate AUR metadata, no malicious content.</summary>
</security_assessment>

[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Legitimate AUR metadata, no malicious content.
[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain markdown changelog documenting breaking changes for the immich-server package. It contains no executable code, no network requests, no file operations, no obfuscated content, and no system commands. The only special characters are HTML entities (&amp;apos;) used for apostrophe formatting, which is benign and standard in markdown. There is no evidence of supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Documentation file with no malicious code.</summary>
</security_assessment>

[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Documentation file with no malicious code.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration file used for software license compliance. It contains no executable instructions, no network requests, no file operations, and no obfuscated code. It simply declares SPDX copyright and license annotations for various file paths in the repository. The escaped HTML entities (&amp;quot;, &amp;apos;) are standard TOML formatting for quoting strings and carry no security significance. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>REUSE.toml license metadata file; no executable content.</summary>
</security_assessment>

[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing LICENSE, PKGBUILD, immich-server.install...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml license metadata file; no executable content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text. It contains no code, no network requests, no file operations, and no obfuscated content. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[5/17] Reviewing LICENSE, PKGBUILD, immich-server.install, immich-server.service...
[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux .install script for the immich-server package. It contains only informational messages in post_install to guide the user through setup steps (PostgreSQL, nginx, hosts, etc.) and a version check in post_upgrade to notify about the separation of the immich-machine-learning package. There are no network requests, no download or execution of external code, no file modifications, no obfuscated commands, and no system tampering. The script adheres to normal packaging practices and poses no security threat.
</details>
<evidence>
</evidence>
<summary>Safe install script with informational messages.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service, immich.conf...
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
+ Reviewed immich-server.install. Status: SAFE -- Safe install script with informational messages.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the immich-server application. It defines the service's runtime environment, security hardening, and dependencies. Notable but benign features include:
- `EnvironmentFile=/etc/immich.conf` points to an external configuration file (normal practice).
- `BindReadOnlyPaths` overlays jellyfin-ffmpeg executables over `/usr/bin/ffmpeg` and `/usr/bin/ffprobe` for hardware transcoding support — this is an explicit upstream configuration choice, not a supply chain attack.
- Security hardening directives (ProtectHome, ProtectSystem, NoNewPrivileges, etc.) are standard and improve the service's security posture.

No evidence of obfuscated code, unexpected network requests, file exfiltration, or malicious instructions. The file performs only expected packaging and configuration operations.
</details>
<evidence></evidence>
<summary>Standard service unit, no malicious content.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers...
+ Reviewed immich-server.service. Status: SAFE -- Standard service unit, no malicious content.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain configuration file for the immich-server package. It contains environment variable assignments for database credentials, Redis host, media storage paths, and machine learning settings. There are no executable commands, no network requests, no obfuscated code, and no file manipulation. All values are static and clearly documented. The file does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Configuration file with no security concerns.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles...
+ Reviewed immich.conf. Status: SAFE -- Configuration file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a well-structured build file for the official immich-server package from the Arch User Repository. It builds the immich server, web client, and CLI from the project's own upstream source tarball (v3.4.2) with verified checksums. All external network sources serve the application's stated purpose: geodata files from geonames.org and natural-earth-vector for reverse geocoding (a documented feature of immich). Build steps use standard tools (pnpm, nest, mise) exactly as the upstream Dockerfile does. Patches adapt paths and scripts for Arch Linux—a normal AUR practice. No obfuscated code, unexpected network requests, data exfiltration, backdoors, or system tampering is present. The `yes &apos;&apos;` piped into `pnpm patch` is a harmless way to accept default interactive prompts. Symlinks and the heredoc-created `immich-admin` wrapper are standard packaging conveniences. The file is consistent with legitimate, non-malicious packaging.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for immich; no malicious behavior detected.</summary>
</security_assessment>

[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for immich; no malicious behavior detected.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `immich.sysusers` is a standard systemd sysusers configuration file used to create a system user and assign it to supplemental groups. It creates an `immich` user with no login shell and a home directory under `/var/lib/immich`, and adds that user to the `redis` and `valkey` groups — both legitimate operations needed for the application to access those services. There is no obfuscation, no network activity, no execution of arbitrary code, and no deviation from normal packaging practices. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard sysusers configuration for the Immich service user.
</summary>
</security_assessment>

[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers configuration for the Immich service user.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard patch for a NestJS configuration file. It changes the plugin name from `@nestjs/swagger` to `@nestjs/swagger/plugin`. This is a routine update to point to the correct plugin path, likely required by a newer version of the upstream package. There is no obfuscated code, network requests, or unexpected operations. The patch is consistent with normal AUR packaging practices.
</details>
<evidence>

</evidence>
<summary>Routine configuration patch, no malicious content.</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing immich.tmpfiles, nginx.immich.conf, postgres-path.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Routine configuration patch, no malicious content.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file used to create required directories and symlinks for the Immich server at package installation. The directives (`d` for directories, `L` for symlinks, `Z` for recursive ownership/permissions) are all normal and expected. There is no obfuscated code, network requests, or any behavior outside routine packaging practices.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config; no security issues.</summary>
</security_assessment>

[12/17] Reviewing immich.tmpfiles, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles config; no security issues.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nginx reverse proxy configuration for the Immich application, adapted from the project's own nginx template. It sets up proxying to the Immich server on localhost:2283 with appropriate headers (including WebSocket upgrade, X-Forwarded-For, X-Forwarded-Proto), compression settings, and a large client max body size. There is no executable code, no network requests or downloads initiated by the configuration, no file system operations, no obfuscation (the `&amp;apos;` sequences are HTML entity representations of single quotes, not an encoding trick), and no deviation from expected packaging practices. The configuration follows the standard pattern for exposing a self-hosted web application behind a reverse proxy.
</details>
<evidence></evidence>
<summary>Standard nginx config for Immich, no malicious code.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing postgres-path.patch, sh-serverhome.patch, sharp.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard nginx config for Immich, no malicious code.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that adds an `install` script to the `sharp` package's `package.json`. The added script runs `pnpm run build`, which is a standard practice to ensure native addon modules are compiled during package installation. There is no evidence of malicious behavior such as obfuscated code, unexpected network requests, data exfiltration, or system modifications. The patch is a routine packaging adjustment.
</details>
<evidence>
</evidence>
<summary>Standard patch adding build step during install.</summary>
</security_assessment>

[15/17] Reviewing postgres-path.patch, sh-serverhome.patch...
+ Reviewed sharp.patch. Status: SAFE -- Standard patch adding build step during install.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts the expected paths of PostgreSQL binary executables from the upstream version-specific location (`/usr/lib/postgresql/&lt;version&gt;/bin/`) to the generic `/usr/bin/` directory. This is a standard packaging adjustment for distributions like Arch Linux where PostgreSQL ships its utilities directly in `/usr/bin`. The patch does not introduce any network requests, obfuscated code, file operations outside the package scope, or any behavior that could exfiltrate data or execute untrusted code. It is a simple, transparent path substitution aligned with typical AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard path adjustment, no security concerns.</summary>
</security_assessment>

[16/17] Reviewing sh-serverhome.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Standard path adjustment, no security concerns.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adapts the Immich server startup script for packaging in Arch Linux. It makes two changes: (1) replaces the dynamic preloading of libmimalloc with adding the Jellyfin ffmpeg library path to LD_LIBRARY_PATH, and (2) hardcodes SERVER_HOME to the expected installation directory (`/usr/lib/immich/app/server`). The use of LD_LIBRARY_PATH to include `/usr/lib/jellyfin-ffmpeg/lib` is a legitimate packaging adjustment to locate ffmpeg libraries from the system package. The hardcoded SERVER_HOME is consistent with standard installation practices. There is no obfuscated code, no network requests, no execution of untrusted content, and no deviation from routine packaging modifications. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Legitimate packaging patch; no malicious behavior found.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Legitimate packaging patch; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,085
  Completion Tokens: 9,176
  Total Tokens: 59,261
  Total Cost: $0.006159
  Execution Time: 79.22 seconds

Final Status: SAFE


No issues found.
