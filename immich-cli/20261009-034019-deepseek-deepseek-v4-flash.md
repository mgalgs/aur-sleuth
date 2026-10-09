---
package: immich-cli
pkgbase: immich
pkgver: 3.2.4
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 50240
completion_tokens: 11889
total_tokens: 62129
cost: 0.0155042880
execution_time: 243.96
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 3
injection_attempts: 0
date: 2026-10-09T03:40:18Z
file_verdicts:
  - file: .git-blame-ignore-revs
    status: safe
    summary: File contains only a commit hash for git blame ignore list.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO file; no code, no suspicious behavior.
  - file: .gitignore
    status: safe
    summary: No malicious behavior found; standard .gitignore file.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Documentation-only file with no executable or suspicious content.
  - file: LICENSE
    status: safe
    summary: License file only; no code or malicious behavior present.
  - file: immich-server.install
    status: safe
    summary: Benign install script with informational echo messages only; no security threats found.
  - file: immich-server.service
    status: safe
    summary: Standard hardened service unit file, no malice.
  - file: REUSE.toml
    status: safe
    summary: No malicious behavior found; file is standard REUSE configuration.
  - file: immich.sysusers
    status: safe
    summary: Legitimate sysusers configuration file for Immich.
  - file: immich.conf
    status: safe
    summary: Immich config file contains only environment settings; no malicious behavior detected.
  - file: immich.tmpfiles
    status: safe
    summary: Benign tmpfiles.d configuration creating standard application data directories with restrictive permissions.
  - file: nest-cli.json.patch
    status: safe
    summary: Patch modifies NestJS CLI config; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
  - file: nginx.immich.conf
    status: safe
    summary: Safe nginx config with no malicious code.
  - file: sharp.patch
    status: safe
    summary: Standard npm install lifecycle script, no security concern.
  - file: sh-serverhome.patch
    status: safe
    summary: Patch only removes a log line; no security issues found.
  - file: postgres-path.patch
    status: inconclusive
    summary: "Audit error: LLMResponseError: LLM response message content is empty or missing"
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
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level content consists entirely of standard variable definitions: `pkgbase`, `pkgname`, `pkgver`, `pkgdesc`, `url`, `license`, `arch`, `makedepends`, `depends`, `source`, and `b2sums`. There are no top-level command substitutions, function calls, downloads, `eval`, `curl`, `wget`, or other executable statements that would run when the PKGBUILD is sourced.

The suspicious or noteworthy items in this file — the geodata download URLs in `source`, the `SKIP` checksums, and the patch/build/install logic inside `prepare()`, `build()`, and the package functions — cannot execute during `makepkg --printsrcinfo`. They are properly scoped to later stages of the packaging process and are outside this narrow gate. Nothing in the top-level scope poses a risk for this specific command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD definitions only; no dangerous code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD definitions only; no dangerous code executes during printsrcinfo.
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://download.geonames.org/export/dump/cities500.zip, https://download.geonames.org/export/dump/admin1CodesASCII.txt, https://download.geonames.org/export/dump/admin2Codes.txt
Reviewing the 17 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/17] Reviewing .SRCINFO...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore...
LLM auditresponse for .git-blame-ignore-revs:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Git configuration file (`.git-blame-ignore-revs`) containing a single commit hash. It contains no executable code, no network requests, no file operations, and no suspicious patterns. It is used solely to tell `git blame` to ignore a specific commit in history. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>File contains only a commit hash for git blame ignore list.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- File contains only a commit hash for git blame ignore list.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `immich` package (a self-hosted photos and videos backup tool). It contains only the expected package metadata: pkgname, pkgver, pkgrel, description, upstream URL, and dependencies. No functions (build, package, prepare) are defined in this file, and no code execution, network requests, file operations, or obfuscation are present. There is nothing here that deviates from normal packaging practice or that could constitute a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Metadata-only .SRCINFO file; no code, no suspicious behavior.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .gitignore, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO file; no code, no suspicious behavior.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` containing only file pattern exclusions (e.g., `immich-*.tar.gz`, `*.log`, `ne_10m_admin_0_countries.geojson`). There is no executable code, no obfuscation, no network operations, no file manipulation, and no behavior that could be considered malicious. The patterns listed are consistent with ignoring build artifacts and data files during packaging. No security issues found.
</details>
<evidence></evidence>
<summary>No malicious behavior found; standard .gitignore file.</summary>
</security_assessment>

[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- No malicious behavior found; standard .gitignore file.
[3/17] Reviewing BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
LLM auditresponse for BREAKING CHANGELOG.md:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is a documentation file (a summary of breaking changes) containing only plain human-readable markdown text. It contains no executable code, no scripts, no network requests, no file operations, and no system modifications. The only non-text content is the HTML entity `&apos;`, which is a standard way to represent an apostrophe in markdown/HTML and is not obfuscation. There is nothing suspicious or malicious in this content.

</details>
<evidence>
</evidence>
<summary>Documentation-only file with no executable or suspicious content.</summary>
</security_assessment>

[4/17] Reviewing LICENSE, PKGBUILD...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Documentation-only file with no executable or suspicious content.
[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style license text attributed to "Arch Linux Contributors." It contains only the license grant, disclaimer of warranty, and copyright notice. There is no executable code, no network activity, no file operations, and no obfuscated content. Nothing in this file deviates from normal packaging practice or poses a supply-chain security risk.
</details>
<evidence></evidence>
<summary>License file only; no code or malicious behavior present.</summary>
</security_assessment>

[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install...
+ Reviewed LICENSE. Status: SAFE -- License file only; no code or malicious behavior present.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for the immich-server AUR package. It contains only pre/post install, upgrade, and remove hooks that print informational messages to the console. No commands fetch remote content, execute downloaded binaries, modify system files, or perform any network operations. The post_upgrade hook performs a simple version string comparison to display a notice about a separate package; this is routine packaging behavior. There is no evidence of obfuscation, exfiltration, backdoors, or any malicious activity. The script is consistent with the expected and benign purpose of a .install file.
</details>
<evidence>
</evidence>
<summary>
Benign install script with informational echo messages only; no security threats found.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install, immich-server.service...
[6/17] Reviewing PKGBUILD, REUSE.toml, immich-server.service...
+ Reviewed immich-server.install. Status: SAFE -- Benign install script with informational echo messages only; no security threats found.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Immich server. It includes appropriate security hardening directives (ProtectHome, ProtectSystem, ProtectKernelTunables, NoNewPrivileges, etc.) typical of modern service files on Arch Linux. The file only defines runtime behavior (user, groups, environment, paths, device access for hardware transcoding) and does not contain any downloads, obfuscated commands, or instructions that deviate from normal packaging. The `BindReadOnlyPaths` override of ffmpeg/ffprobe with the jellyfin versions is a legitimate configuration choice to use an alternative ffmpeg build. There is no malicious activity or supply-chain attack vector present.
</details>
<evidence></evidence>
<summary>Standard hardened service unit file, no malice.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, REUSE.toml, immich-server.service, immich.conf...
[7/17] Reviewing PKGBUILD, REUSE.toml, immich.conf...
+ Reviewed immich-server.service. Status: SAFE -- Standard hardened service unit file, no malice.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration used by the REUSE tool to declare license and copyright annotations for specific paths. It contains only path globs and a license/copyright association structure; there is no executable code, no network behavior, no file manipulation, and no obfuscation. The paths listed (&quot;BREAKING CHANGELOG.md&quot;, &quot;keys/**&quot;, &quot;.SRCINFO&quot;) are all normal repository metadata and contain no dangerous commands. Nothing in this file performs exfiltration, downloads, execution, or modification of the system.

The content is consistent with standard REUSE (SPDX) license-compliance configuration for a project. There is no evidence of injected malicious code, encoded payloads, or supply-chain attack patterns. The file only declares annotation metadata and has no executable behavior.
</details>
<evidence>
</evidence>
<summary>No malicious behavior found; file is standard REUSE configuration.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, REUSE.toml, immich.conf, immich.sysusers...
[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers...
+ Reviewed REUSE.toml. Status: SAFE -- No malicious behavior found; file is standard REUSE configuration.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd-sysusers configuration file that defines an `immich` system user and adds it to the `redis` and `valkey` groups. The content is plain declarative text with no executable code, no obfuscation, no network requests, and no unexpected system operations. The use of HTML entity `&amp;quot;` to represent quotes in the user description field is syntactically valid in the sysusers format (though unusual) and does not introduce any security threat. The file performs only the intended packaging function of creating a service user and group memberships for the Immich application.
</details>
<evidence></evidence>
<summary>Legitimate sysusers configuration file for Immich.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing PKGBUILD, immich.conf, immich.tmpfiles...
+ Reviewed immich.sysusers. Status: SAFE -- Legitimate sysusers configuration file for Immich.
LLM auditresponse for immich.conf:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment-variable configuration file for the Immich self-hosted media server. It contains only static key=value configuration pairs: database connection settings (hostname, username, password, database name), Redis hostname, and the media storage location. There is no executable code, no network requests, no obfuscation, and no file operations. The database password is a default development placeholder (postgres), which is a weak-password hygiene concern rather than malicious behavior. The path /var/lib/immich is a standard media storage location for this application. No signs of a supply-chain attack or injected malicious code are present. Overall this file is SAFE.
</details>
<evidence>
</evidence>
<summary>Immich config file contains only environment settings; no malicious behavior detected.</summary>
</security_assessment>

[10/17] Reviewing PKGBUILD, immich.tmpfiles...
+ Reviewed immich.conf. Status: SAFE -- Immich config file contains only environment settings; no malicious behavior detected.
[10/17] Reviewing PKGBUILD, immich.tmpfiles, nest-cli.json.patch...
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet for the immich-cli package. It creates three directories under /var/lib/immich with appropriate ownership (immich:immich) and restrictive permissions (0750). The directories are the application cache, config, and upload directories, which are consistent with the package's stated purpose. There is no code execution, no network activity, no obfuscation, and no access to files outside the application's own data directory. The file contains only static tmpfiles.d(5) directives with no variables, commands, or anything resembling malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign tmpfiles.d configuration creating standard application data directories with restrictive permissions.</summary>
</security_assessment>

[10/17] Reviewing PKGBUILD, immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing PKGBUILD, nest-cli.json.patch, nginx.immich.conf...
+ Reviewed immich.tmpfiles. Status: SAFE -- Benign tmpfiles.d configuration creating standard application data directories with restrictive permissions.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch simply changes the NestJS CLI plugin reference in `server/nest-cli.json` from `@nestjs/swagger` to the more specific `@nestjs/swagger/plugin` path. This is a routine configuration adjustment commonly required for newer versions of the NestJS Swagger plugin and is consistent with normal packaging/build behavior. There is no obfuscation, network activity, file manipulation, or execution of external code in this patch.

The change only modifies a build tool configuration entry. It does not introduce any supply-chain attack vector, exfiltration, backdoor, or unexpected behavior. The patch is benign and aligns with standard AUR/packaging practices.
</details>
<evidence>
</evidence>
<summary>
Patch modifies NestJS CLI config; no malicious behavior detected.
</summary>
</security_assessment>

[11/17] Reviewing PKGBUILD, nest-cli.json.patch, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing PKGBUILD, nginx.immich.conf, postgres-path.patch...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Patch modifies NestJS CLI config; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch packaging file that builds the immich application (server and CLI) from the official upstream GitHub repository. It downloads the source tarball, applies a few patches, and uses pnpm to build and deploy the components. The geodata files from geonames.org and GitHub are used by the application for reverse geocoding and are fetched during the source step; they are not executable and serve the stated application purpose. No obfuscated code, data exfiltration, backdoors, or unexpected network requests to unrelated hosts are present. All operations (patches, builds, installs, symlinks) are standard packaging practices. Checksums set to SKIP on the geodata files are not a mark of malice, and the package does not contain any injected malicious code.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[12/17] Reviewing PKGBUILD, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nginx configuration file for the Immich application. It sets up a reverse proxy to a local server on port 2283, with common proxy and caching settings. The file is adapted from the official Immich project template. There are no suspicious network destinations (the only connection is to localhost), no encoded or obfuscated commands, no file operations, and no backdoors. The &amp;apos; entity in the `map` block is a harmless formatting artifact and does not change the configuration&#39;s behavior. All settings align with normal reverse proxy operation for a self-hosted application.
</details>
<evidence></evidence>
<summary>Safe nginx config with no malicious code.</summary>
</security_assessment>

[14/17] Reviewing postgres-path.patch, sh-serverhome.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Safe nginx config with no malicious code.
[14/17] Reviewing postgres-path.patch, sh-serverhome.patch, sharp.patch...
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds an `install` script to the package.json of the sharp library, which runs `pnpm run build`. This is a standard npm lifecycle script that ensures the native module is compiled when the package is installed (e.g., via `pnpm install`). This is a routine packaging improvement — not malicious. There is no evidence of obfuscated code, network exfiltration, or dangerous commands. The patch is consistent with normal upstream packaging practices for native Node.js modules.
</details>
<evidence></evidence>
<summary>Standard npm install lifecycle script, no security concern.</summary>
</security_assessment>

[15/17] Reviewing postgres-path.patch, sh-serverhome.patch...
+ Reviewed sharp.patch. Status: SAFE -- Standard npm install lifecycle script, no security concern.
LLM auditresponse for sh-serverhome.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is a unified diff patch that removes a `log_message &quot;Initializing Immich $IMMICH_SOURCE_REF&quot;` line from `server/bin/start.sh`. This is a benign, cosmetic change to an upstream project's start script, likely removing a redundant initialization log message. There is no evidence of malicious behavior: no network requests, no obfuscated code, no arbitrary file operations, no credential access, and no execution of downloaded content. The patch only deletes a single logging line in the project's own start script, which is consistent with normal development/version-bump maintenance. The escaped quotes in the diff are simply the normal way patches represent shell code and are not an encoding trick. No evidence of injected or hidden malicious code was found.
</details>
<evidence>
</evidence>
<summary>
Patch only removes a log line; no security issues found.</summary>
</security_assessment>

[16/17] Reviewing postgres-path.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Patch only removes a log line; no security issues found.
LLM audit error for postgres-path.patch: Audit error: LLMResponseError: LLM response message content is empty or missing

[17/17] Reviewing ...
? Reviewed postgres-path.patch. Status: INCONCLUSIVE -- Audit error: LLMResponseError: LLM response message content is empty or missing
Reviewed all the AUR repository's files.
Audit complete! Result: Inconclusive -- NO VERDICT
(Inconclusive 1 file: postgres-path.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,240
  Completion Tokens: 11,889
  Total Tokens: 62,129
  Total Cost: $0.015504
  Execution Time: 243.96 seconds

Final Status: INCONCLUSIVE



Inconclusive Results:

postgres-path.patch: [INCONCLUSIVE] Audit error: LLMResponseError: LLM response message content is empty or missing
