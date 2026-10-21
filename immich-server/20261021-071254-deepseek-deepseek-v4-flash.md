---
package: immich-server
pkgbase: immich
pkgver: 3.3.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 49252
completion_tokens: 6257
total_tokens: 55509
cost: 0.005620706
execution_time: 102.4
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-10-21T07:12:54Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file with no security issues.
  - file: .git-blame-ignore-revs
    status: safe
    summary: Git blame ignore file with a single commit hash.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Harmless changelog file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata file only, no executable code, sources legitimate.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Metadata-only REUSE config; no executable or suspicious content.
  - file: immich-server.install
    status: safe
    summary: Standard install script with only informational messages; no malicious behavior.
  - file: immich.conf
    status: safe
    summary: Standard configuration file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious code or supply-chain attack.
  - file: immich-server.service
    status: safe
    summary: Standard hardened systemd unit, no malicious code.
  - file: immich.sysusers
    status: safe
    summary: Standard system user configuration, no security concerns.
  - file: nest-cli.json.patch
    status: safe
    summary: "Safe: standard configuration patch for NestJS CLI."
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles config, no malicious content.
  - file: nginx.immich.conf
    status: safe
    summary: Standard Nginx config for Immich, no malicious content.
  - file: postgres-path.patch
    status: safe
    summary: Routine path adjustment for Arch Linux compatibility.
  - file: sharp.patch
    status: safe
    summary: Standard packaging patch; adds install script.
  - file: sh-serverhome.patch
    status: safe
    summary: Standard packaging patch with no malicious behavior.
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
The PKGBUILD contains only standard variable and array definitions at the top level, with no command substitutions or function calls that execute during sourcing. All dynamic content is inside function bodies (prepare, build, package) which are not executed by `makepkg --printsrcinfo`. There is no obfuscated code, network requests, or file operations at global scope. The SKIP checksums are explicitly excluded from this gate's concern, and the source URLs point to legitimate upstream repositories and data sources.
</details>
<evidence></evidence>
<summary>Safe: no top-level malicious code executed during source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no top-level malicious code executed during source.
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
The file is a standard `.gitignore` used to exclude build artifacts, downloaded data files, and logs from version control. No executable code, network requests, or suspicious operations are present. It is a benign configuration file with no security implications.</details>
<evidence></evidence>
<summary>Standard gitignore file with no security issues.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file with no security issues.
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Git configuration file used to suppress specific commits from blame output. It contains a single commit hash and no executable or scripting content. There is no evidence of malicious behavior; it is purely a development workflow helper.</details>
<evidence></evidence>
<summary>Git blame ignore file with a single commit hash.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Git blame ignore file with a single commit hash.
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple Markdown changelog documenting upstream breaking changes. It contains no executable code, no network requests, no file operations, and no obfuscated content. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Harmless changelog file with no security issues.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Harmless changelog file with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It contains source URLs (all pointing to the project's own GitHub repository, geonames.org, and a naturalearth GitHub repo), checksums (some `SKIP` which is standard for VCS-sourced files or zip archives), dependencies, and patch/configuration file references. No executable code is present. The `SKIP` checksums are a packaging choice, not evidence of malice. All network destinations are legitimate and expected for this package's functionality. No signs of obfuscation, backdoors, data exfiltration, or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Metadata file only, no executable code, sources legitimate.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file only, no executable code, sources legitimate.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard software license text (ISC-style) attributed to "Arch Linux Contributors". It contains no executable code, no obfuscation, no network requests, no file operations, and no instructions that could be interpreted as malicious. It is purely a documentation file stating the terms under which the software is distributed.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for the REUSE tool, used to declare copyright and license information for files in the repository. It contains only metadata annotations (paths, SPDX copyright texts, and SPDX license identifiers). There are no executable commands, network requests, file operations, or obfuscated content. The file serves a standard packaging documentation purpose and exhibits no malicious behavior.
</details>
<evidence>
</evidence>
<summary>Metadata-only REUSE config; no executable or suspicious content.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install, immich-server.service...
[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Metadata-only REUSE config; no executable or suspicious content.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (.install) for the immich-server package. It contains only informational echo statements that guide the user through post-installation setup steps (database, nginx, service enabling) and a version-checked upgrade notice advising that the immich-machine-learning component is now separate. There is no code that downloads or executes remote content, no obfuscated or encoded commands, no file operations other than printing to stdout, and no system modifications. The script performs no actions that deviate from normal packaging conventions. The version comparison logic is benign and only prints a user-facing message.</details>
<evidence></evidence>
<summary>Standard install script with only informational messages; no malicious behavior.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service...
+ Reviewed immich-server.install. Status: SAFE -- Standard install script with only informational messages; no malicious behavior.
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text configuration file for the Immich server. It contains environment variable definitions for database connection, Redis host, media storage paths, and machine learning settings. There is no executable code, obfuscated strings, network requests, or system-modifying commands. All values are static strings, and the file does not perform any operations that could exfiltrate data, execute remote code, or compromise the system. It is a standard configuration file with no evidence of malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard configuration file with no malicious content.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers...
+ Reviewed immich.conf. Status: SAFE -- Standard configuration file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Node.js application from its official GitHub repository. All source URLs point to the project&#39;s own upstream (`github.com/immich-app/immich`) or established data providers (`geonames.org`, `github.com/nvkelso`). There are no obfuscated commands, no `curl|bash` patterns, no unexpected network calls during install, and no exfiltration of system data. The use of `SKIP` checksums on the geodata files is a deliberate choice due to their daily-updated nature, not a security flaw. The build process with `pnpm` and `mise` is exactly what the upstream requires. No code is fetched or executed from untrusted sources beyond the declared dependencies.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no signs of malicious code or supply-chain attack.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing immich-server.service, immich.sysusers, immich.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious code or supply-chain attack.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Immich server. It defines normal dependencies (redis, postgresql), environment variables, and the execution command (`node dist/main`). The file includes extensive security hardening options such as `ProtectHome`, `ProtectSystem`, `ProtectKernelTunables`, `NoNewPrivileges`, and others, which are best practices for services. The `BindReadOnlyPaths` directive binds Jellyfin's ffmpeg and ffprobe into the service's namespace, a common technique to use a specific ffmpeg version without conflicting with system packages; this is not malicious. No suspicious network requests, obfuscated code, or unexpected operations are present. The file conforms to standard AUR packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard hardened systemd unit, no malicious code.</summary>
</security_assessment>

[9/17] Reviewing immich-server.service, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
+ Reviewed immich-server.service. Status: SAFE -- Standard hardened systemd unit, no malicious code.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd sysusers.d configuration file. It creates a system user `immich` and adds that user to the `redis` and `valkey` supplementary groups. This is a routine and expected packaging practice for services that need to communicate with Redis or Valkey instances (e.g., for caching or job queues). There is no obfuscated code, no network requests, no file operations outside of systemd's normal user/group creation, and no deviation from the application's stated purpose. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard system user configuration, no security concerns.</summary>
</security_assessment>

[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
+ Reviewed immich.sysusers. Status: SAFE -- Standard system user configuration, no security concerns.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the `nest-cli.json` configuration file, changing the plugin name from `@nestjs/swagger` to `@nestjs/swagger/plugin`. This is a standard configuration update for the NestJS CLI and does not introduce any malicious behavior. There is no network access, code execution, or system modification. It is a legitimate packaging change.
</details>
<evidence></evidence>
<summary>Safe: standard configuration patch for NestJS CLI.</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing immich.tmpfiles, nginx.immich.conf, postgres-path.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Safe: standard configuration patch for NestJS CLI.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file used by Arch Linux packages to manage directories, symlinks, and permissions during installation. It creates runtime/state directories for the immich server application, sets ownership to the `immich` user and group with appropriate permissions (0750), creates a symlink from the application path to the upload directory, and enforces restrictive permissions on the main data directories (`/var/lib/immich` and `/var/lib/immich-revgeo`). There is no executable code, no network operations, no obfuscation, and no deviation from normal packaging practices. The file is purely declarative and safe.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config, no malicious content.</summary>
</security_assessment>

[12/17] Reviewing immich.tmpfiles, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles config, no malicious content.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Nginx reverse proxy configuration for the Immich application. It sets up HTTP proxying from port 8080 to a local backend on port 2283, with appropriate header forwarding and compression settings. There are no suspicious network requests, no obfuscated code, no dangerous commands (like `eval`, `curl`, `bash`), and no exfiltration or backdoor attempts. The file does not deviate from normal packaging or deployment configurations. The large `client_max_body_size` is functional for the application&#8217;s media uploads, not malicious. The comment referencing the upstream GitHub source is informational.
</details>
<evidence></evidence>
<summary>Standard Nginx config for Immich, no malicious content.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing postgres-path.patch, sh-serverhome.patch, sharp.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard Nginx config for Immich, no malicious content.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that adjusts PostgreSQL binary paths from the Debian/Ubuntu‑style `/usr/lib/postgresql/&lt;version&gt;/bin/` to the Arch Linux standard `/usr/bin/`. This is a routine and expected packaging adaptation for Arch Linux. No obfuscated code, no network requests, no dangerous operations, and no deviation from standard patching practices are present.</details>
<evidence></evidence>
<summary>Routine path adjustment for Arch Linux compatibility.</summary>
</security_assessment>

[15/17] Reviewing sh-serverhome.patch, sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Routine path adjustment for Arch Linux compatibility.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds an `install` script to the `sharp` package&#39;s `package.json` that runs `pnpm run build`. This is a standard and expected packaging practice for AUR packages that use Node.js and pnpm. The purpose is to ensure the native build step of sharp (which compiles C++ code for image processing) executes when the package is installed via pnpm. There is no obfuscation, no network requests to unexpected hosts, no file operations outside the normal package build workflow, and no evidence of malicious intent. The change is minimal and fully transparent.
</details>
<evidence></evidence>
<summary>Standard packaging patch; adds install script.</summary>
</security_assessment>

[16/17] Reviewing sh-serverhome.patch...
+ Reviewed sharp.patch. Status: SAFE -- Standard packaging patch; adds install script.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adjusts library preloading and server home directory in the Immich start script to match Arch Linux packaging conventions. It replaces a dynamic detection of libmimalloc with a static LD_LIBRARY_PATH extension pointing to `/usr/lib/jellyfin-ffmpeg/lib`, and hardcodes `SERVER_HOME` to `/usr/lib/immich/app/server`. These are routine packaging changes—no obfuscation, network requests, code execution, or file operations beyond adjusting startup paths. No evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard packaging patch with no malicious behavior.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Standard packaging patch with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,252
  Completion Tokens: 6,257
  Total Tokens: 55,509
  Total Cost: $0.005621
  Execution Time: 102.40 seconds

Final Status: SAFE


No issues found.
