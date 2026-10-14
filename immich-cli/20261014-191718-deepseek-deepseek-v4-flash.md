---
package: immich-cli
pkgbase: immich
pkgver: 3.3.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 49261
completion_tokens: 7680
total_tokens: 56941
cost: 0.005880511
execution_time: 66.29
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-10-14T19:17:17Z
file_verdicts:
  - file: .git-blame-ignore-revs
    status: safe
    summary: Standard Git blame ignore file; no security issues.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore patterns, no security issues.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Documentation file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata; no malicious behavior detected.
  - file: REUSE.toml
    status: safe
    summary: REUSE metadata config; no security concerns.
  - file: immich-server.install
    status: safe
    summary: Benign instructions and version notice only.
  - file: immich.conf
    status: safe
    summary: Configuration file with no executable or malicious content.
  - file: immich-server.service
    status: safe
    summary: "Safe: standard systemd unit with no malicious elements."
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers config; no security concerns.
  - file: nest-cli.json.patch
    status: safe
    summary: Patch adjusts NestJS Swagger plugin path; no security issue.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no malicious content.
  - file: postgres-path.patch
    status: safe
    summary: Patch adapts PostgreSQL binary paths for Arch Linux.
  - file: nginx.immich.conf
    status: safe
    summary: Standard Nginx config; no security issues found.
  - file: sharp.patch
    status: safe
    summary: Standard patch adding build install hook.
  - file: sh-serverhome.patch
    status: safe
    summary: Routine packaging patch; no malicious behavior.
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
The PKGBUILD was analyzed for top‑level code execution during `makepkg --printsrcinfo`. The entire global scope consists solely of static variable assignments (`pkgbase`, `pkgname`, `pkgrel`, `pkgver`, `pkgdesc`, `url`, `license`, `arch`, `makedepends`, `depends`, `source`, `b2sums`). There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other dangerous constructs at the top level. All potentially suspicious operations (patching, building, installing, and the `tr` call) are contained within the `prepare()`, `build()`, and `package_*()` functions and will not execute during the metadata‑parsing step. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Top-level only variable assignments, safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level only variable assignments, safe.
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
The file `.git-blame-ignore-revs` contains only a single Git commit hash. This is a standard Git configuration file used to exclude specific commits from `git blame` output (commonly used for large formatting or refactoring commits). There is no executable content, no network activity, no obfuscation, and no system operations. It poses no security threat.
</details>
<evidence></evidence>
<summary>Standard Git blame ignore file; no security issues.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Standard Git blame ignore file; no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` configuration for a Git repository. It contains only pattern rules to exclude certain files (e.g., built packages, logs, downloaded geospatial data) from version control. There is no executable code, no network or file manipulation, and no obfuscated content. It poses no security risk.
</details>
<evidence></evidence>
<summary>Benign .gitignore patterns, no security issues.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore patterns, no security issues.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple markdown document summarizing breaking changes of the immich-server project. It contains no executable code, no network requests, no file operations, and no obfuscated content. It is purely informational and follows standard documentation practices. No security issues are present.</details>
<evidence></evidence>
<summary>Documentation file, no security issues.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Documentation file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard software license (ISC-style), containing only legal text. There is no executable code, no network requests, no obfuscation, and no system modifications. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file; no security concerns.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` containing package metadata for `immich`, a self-hosted photo backup tool. It declares upstream sources solely from the project&#39;s official GitHub repository and from well-known GIS data providers (geonames.org, naturalearthdata.com) used for geocoding features. All remote sources are either pinned tarballs with checksums (some of which are correctly set to `SKIP` for VCS or convenience) or are fetched over HTTPS from legitimate domains. There is no obfuscated code, no suspicious network destinations, no execution of untrusted scripts, and no deviation from ordinary packaging practice. The use of `SKIP` checksums on several upstream data files is a hygiene note but not evidence of malice.
</details>
<evidence></evidence>
<summary>Standard metadata; no malicious behavior detected.</summary>
</security_assessment>

[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata; no malicious behavior detected.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the REUSE tool, which standardizes copyright and licensing metadata in projects. It maps file path patterns (e.g., &quot;PKGBUILD&quot;, &quot;*.install&quot;, &quot;*.service&quot;) to SPDX copyright and license identifiers. There is no executable code, no network requests, no obfuscation, no system modifications, and no behavior that deviates from standard packaging practices. The file is entirely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>REUSE metadata config; no security concerns.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install, immich-server.service...
[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE metadata config; no security concerns.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (immich-server.install) that only runs harmless, informational commands. The `pre_install`, `pre_upgrade`, `pre_remove`, and `post_remove` hooks are empty (do-nothing). The `post_install` hook prints colored setup instructions to the terminal. The `post_upgrade` hook performs a simple version comparison using `printf`, `sort -V`, and `tail` to detect upgrades from before version 1.142.0, then prints a notice about the immich-machine-learning package being split out. There are no network requests, no file writes outside of stdout, no obfuscated code, no execution of external scripts or binaries, and no interaction with the filesystem beyond standard echo/printf. All behavior is ordinary for a package that provides post-install guidance.
</details>
<evidence></evidence>
<summary>Benign instructions and version notice only.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service, immich.conf...
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
+ Reviewed immich-server.install. Status: SAFE -- Benign instructions and version notice only.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the Immich application, containing environment variable definitions for database connection, Redis, media location, machine learning settings, etc. There is no executable code, no network requests, no file operations, and no obfuscation. It poses no security threat. The use of default credentials (`postgres/postgres`) is a weak configuration practice but not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Configuration file with no executable or malicious content.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers...
+ Reviewed immich.conf. Status: SAFE -- Configuration file with no executable or malicious content.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the Immich server. It configures the service to run under a dedicated user, with appropriate hardening options (ProtectHome, ProtectSystem, ProtectKernelTunables, etc.), dependencies on Redis and PostgreSQL, and environment settings for NVIDIA acceleration and build data paths. The use of `BindReadOnlyPaths` to overlay jellyfin-ffmpeg binaries onto `/usr/bin/ffmpeg` and `/usr/bin/ffprobe` is a legitimate packaging choice to provide a specific ffmpeg build required by Immich for transcoding. There are no network requests, downloads, code execution beyond the application binary (`node dist/main`), obfuscated commands, or attempts to access unrelated system files. The file aligns with standard AUR packaging practices and does not contain any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Safe: standard systemd unit with no malicious elements.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles...
+ Reviewed immich-server.service. Status: SAFE -- Safe: standard systemd unit with no malicious elements.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Node.js monorepo (immich). It builds both the server and CLI using pnpm, applies necessary patches for Arch Linux paths, and fetches expected geodata from well-known upstream sources (geonames.org, natural-earth-vector GitHub repo). All operations are transparent and serve the application's stated purpose. There is no obfuscated code, no unexpected network requests to unrelated hosts, no exfiltration of local data, and no backdoors. The use of `SKIP` checksums on some sources is a trust/hygiene choice and not evidence of malice. The `changelog` pointing to `BREAKING CHANGELOG.md` is an unusual but harmless packaging oversight.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration snippet. It creates a system user `immich` with a home directory of `/var/lib/immich` and a login shell of `/usr/bin/nologin`, and adds that user to the `redis` and `valkey` supplementary groups. This is a normal and expected practice for services that need a dedicated user account and access to specific group resources (e.g., Redis/Valkey sockets or data). There is no obfuscated code, network activity, file manipulation beyond its declared purpose, or any other suspicious behavior. It is entirely benign and follows standard Arch Linux packaging conventions.
</details>
<evidence></evidence>
<summary>Standard sysusers config; no security concerns.</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers config; no security concerns.
[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that modifies the `nest-cli.json` configuration for the Immich server. The change simply corrects the NestJS Swagger plugin name from `@nestjs/swagger` to `@nestjs/swagger/plugin`. This is a routine upstream configuration fix and does not introduce any malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Patch adjusts NestJS Swagger plugin path; no security issue.</summary>
</security_assessment>

[11/17] Reviewing immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing immich.tmpfiles, nginx.immich.conf, postgres-path.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Patch adjusts NestJS Swagger plugin path; no security issue.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd tmpfiles.d configuration snippet used to create and manage directories and a symlink for the Immich application. It defines directories under `/var/lib/immich` with appropriate ownership (`immich:immich`) and restrictive permissions (`0750`), and a recursive permission/ownership restoration line (`Z`). The symlink maps `/usr/lib/immich/app/server/upload` to `/var/lib/immich/upload`. There is no obfuscation, network access, execution of external code, or any operation outside of normal service setup. This file poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no malicious content.</summary>
</security_assessment>

[12/17] Reviewing immich.tmpfiles, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no malicious content.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts PostgreSQL binary paths from the Debian/Ubuntu-style location (`/usr/lib/postgresql/&lt;version&gt;/bin/`) to the Arch Linux location (`/usr/bin/`). This is a standard packaging adaptation required for compatibility with Arch's PostgreSQL package layout. There is no obfuscated code, no network requests, no execution of untrusted content, and no deviation from normal packaging practices. The change is purely a path substitution and poses no security risk.
</details>
<evidence/>
<summary>Patch adapts PostgreSQL binary paths for Arch Linux.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing nginx.immich.conf, sh-serverhome.patch, sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Patch adapts PostgreSQL binary paths for Arch Linux.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Nginx configuration file for the Immich application. It sets up a reverse proxy that forwards requests to a local server on port 2283. All directives are typical for a web proxy: compression, proxy buffering, header forwarding, and a large `client_max_body_size` for media uploads. The file is derived from Immich's official nginx template. There is no obfuscated code, no external network requests (beyond the intended proxy to localhost), no file system manipulation, and no attempt to execute arbitrary commands. The configuration is consistent with expected upstream packaging practices and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Nginx config; no security issues found.</summary>
</security_assessment>

[15/17] Reviewing sh-serverhome.patch, sharp.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard Nginx config; no security issues found.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file simply adds an `"install"` script to the `package.json` of the `sharp` library, which is a native Node.js module requiring compilation. The script runs `pnpm run build`, which is the standard way to build the native addon during package installation. There is no obfuscation, no network requests to unexpected hosts, no data exfiltration, and no backdoors. The change is consistent with normal packaging practices for native Node.js modules.
</details>
<evidence>
</evidence>
<summary>Standard patch adding build install hook.</summary>
</security_assessment>

[16/17] Reviewing sh-serverhome.patch...
+ Reviewed sharp.patch. Status: SAFE -- Standard patch adding build install hook.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies the startup script of the Immich server to adjust library paths and hardcode the `SERVER_HOME` directory to `/usr/lib/immich/app/server`, which is standard for Arch Linux packaging. It replaces the dynamic detection via `readlink` and removes the `LD_PRELOAD` of `libmimalloc`, adding `LD_LIBRARY_PATH` to include `/usr/lib/jellyfin-ffmpeg/lib`. This is a typical adaptation to use system-provided dependencies (such as Jellyfin-FFmpeg) and ensure the server finds its files in the installed location. There is no obfuscation, network activity, or execution of untrusted code. The changes are transparent and serve the stated purpose of adapting the upstream script for the Arch packaging environment.
</details>
<evidence></evidence>
<summary>Routine packaging patch; no malicious behavior.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Routine packaging patch; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,261
  Completion Tokens: 7,680
  Total Tokens: 56,941
  Total Cost: $0.005881
  Execution Time: 66.29 seconds

Final Status: SAFE


No issues found.
