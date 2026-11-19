---
package: immich-server
pkgbase: immich
pkgver: 3.2.4
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 49917
completion_tokens: 10734
total_tokens: 60651
cost: 0.0141138975
execution_time: 155.61
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 3
injection_attempts: 0
date: 2026-10-09T03:35:48Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore, no security concerns.
  - file: .git-blame-ignore-revs
    status: safe
    summary: Standard git blame ignore revisions file; no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: No malicious content found; standard AUR metadata file.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: No malicious or suspicious behavior found in this changelog file.
  - file: REUSE.toml
    status: safe
    summary: Configuration file only; no malicious behavior found.
  - file: immich-server.service
    status: safe
    summary: The file is a standard, benign systemd unit with no malicious behavior.
  - file: immich-server.install
    status: inconclusive
    summary: "Audit error: could not parse a decision from the model response."
  - file: immich.conf
    status: safe
    summary: Standard upstream configuration with weak defaults.
  - file: PKGBUILD
    status: safe
    summary: No malicious or suspicious behavior found; file is SAFE.
  - file: nest-cli.json.patch
    status: safe
    summary: Benign configuration patch for swagger plugin.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles.d configuration; no malicious content.
  - file: postgres-path.patch
    status: safe
    summary: Patch adjusts PostgreSQL binary paths for Arch Linux layout, no malicious code.
  - file: immich.sysusers
    status: safe
    summary: SAFE
  - file: sh-serverhome.patch
    status: safe
    summary: Patch adjusts paths for Arch packaging; no malicious behavior.
  - file: sharp.patch
    status: safe
    summary: Patch adds a standard npm install script; not malicious.
  - file: nginx.immich.conf
    status: safe
    summary: No malicious behavior found; file is a benign nginx config snippet.
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
The PKGBUILD contains only standard variable and array assignments at global scope: there are no command substitutions, backtick executions, eval invocations, or any other code that would execute during `makepkg --printsrcinfo`. All URLs in the `source` array are static strings or simple parameter expansions (`${pkgbase}`, `${pkgver}`) that reference previously defined variables, and no dynamic content is fetched or run at the sourcing stage. The `prepare()`, `build()`, and `package_*()` functions are defined but never called during the `--printsrcinfo` step, so their contents are out of scope for this gate. No obfuscation, base64, curl, wget, or network-triggering patterns exist at the top level. Sourcing this PKGBUILD to parse its metadata is safe.
</details>
<evidence></evidence>
<summary>Global scope contains no executable threats.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains no executable threats.
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://download.geonames.org/export/dump/cities500.zip, https://download.geonames.org/export/dump/admin1CodesASCII.txt, https://download.geonames.org/export/dump/admin2Codes.txt
Reviewing the 17 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/17] Reviewing .SRCINFO...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in the AUR package repository for `immich-server`. It lists common build artifacts (tarballs, packages, logs) and data files that should not be tracked in version control. There is no executable code, no network requests, no obfuscation, and no instructions that could introduce malicious behavior. The file is entirely benign and serves only to prevent accidental commits of generated or downloaded files.
</details>
<evidence></evidence>
<summary>Standard gitignore, no security concerns.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore, no security concerns.
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is `.git-blame-ignore-revs`, a standard Git configuration file that lists commit hashes for `git blame` to ignore, typically used to skip formatting or large refactoring commits. The content is a single valid-looking commit hash with no executable code, no network operations, no file manipulation, and no obfuscation. There is nothing suspicious or malicious in this file.
</details>
<evidence>
</evidence>
<summary>
Standard git blame ignore revisions file; no security concerns.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Standard git blame ignore revisions file; no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license file, commonly used in Arch Linux packages. It contains no executable code, no network requests, no obfuscated content, and no instructions. It is purely a legal text file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
[3/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO metadata file for the immich-server package. It declares the package name, version, dependencies, sources, and checksums. The sources include an official GitHub release tarball, local patch and configuration files, and external data files from `download.geonames.org` and `raw.githubusercontent.com`—all legitimate upstream or project-related destinations. While three source entries have `SKIP` for their b2sums, this is a common practice for frequently updated or large data files and is not indicative of malice. There is no executable code, obfuscated content, suspicious network requests, or any command that could perform unauthorized operations. The file is purely declarative and follows expected packaging norms.
</details>
<evidence></evidence>
<summary>No malicious content found; standard AUR metadata file.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, PKGBUILD, REUSE.toml...
[4/17] Reviewing BREAKING CHANGELOG.md, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious content found; standard AUR metadata file.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a documentation file (BREAKING CHANGELOG.md) containing only a short summary of the project&apos;s breaking changes and a pointer to release notes for migration instructions. There is no executable code, no network access, no file operations, no obfuscation, and no reference to untrusted hosts or commands. The content is limited to plain-text prose and contains none of the indicators of malicious packaging behavior. No security issues were found.
</details>
<evidence></evidence>
<summary>No malicious or suspicious behavior found in this changelog file.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- No malicious or suspicious behavior found in this changelog file.
[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration used to declare licensing and copyright annotations for repository files. It contains only path mappings and license information. There is no executable code, no network activity, no obfuscation, no file system manipulation, and no behavior that could exfiltrate data or execute commands. The configuration is limited to standard packaging metadata and does not deviate from normal AUR practices.
</details>
<evidence></evidence>
<summary>Configuration file only; no malicious behavior found.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install, immich-server.service...
[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Configuration file only; no malicious behavior found.
LLM auditresponse for immich-server.service:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd unit file for the Immich server. It declares standard unit metadata (Description, Documentation), service ordering dependencies (After, Wants, Requires for Redis and PostgreSQL), and nothing else. There are no ExecStart lines, no environment variable assignments, no network fetch operations, no scripts, and no runtime behavior to exploit. The content is entirely static configuration and is consistent with normal packaging practice for a self-hosted application service.

There is no evidence of obfuscated code, suspicious downloads, exfiltration, backdoors, or any deviation from expected systemd unit file conventions. The absence of an ExecStart line or hardening directives is unusual for a complete unit but not a security issue in itself. The file is safe.
</details>
<evidence>
</evidence>
<summary>
The file is a standard, benign systemd unit with no malicious behavior.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service, immich.conf...
[7/17] Reviewing PKGBUILD, immich-server.install, immich.conf...
+ Reviewed immich-server.service. Status: SAFE -- The file is a standard, benign systemd unit with no malicious behavior.
LLM auditresponse for immich-server.install:
 

LLM audit error for immich-server.install: Audit error: could not parse a decision from the model response.

[7/17] Reviewing PKGBUILD, immich-server.install, immich.conf, immich.sysusers...
[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers...
? Reviewed immich-server.install. Status: INCONCLUSIVE -- Audit error: could not parse a decision from the model response.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the Immich application, setting environment variables for database, Redis, media storage, and machine learning services. It contains default upstream credentials (`DB_PASSWORD=postgres`) and points all services to localhost. While using default database credentials in a production deployment is a security weakness, this is standard upstream default configuration behavior, not a supply-chain attack injected by the packager. The file does not contain any executable code, network requests, obfuscated logic, or file operations; it simply defines variables used by the Immich server at runtime.
</details>
<evidence></evidence>
<summary>Standard upstream configuration with weak defaults.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles...
+ Reviewed immich.conf. Status: SAFE -- Standard upstream configuration with weak defaults.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only maintainer and contributor metadata comments. There is no source array, no build or package functions, no scripts, no network operations, and no file operations of any kind. The content consists solely of comment lines identifying the maintainer and contributors of the package.

No malicious behavior is present. There are no obfuscated commands, no network requests, no file manipulation, and nothing that deviates from standard packaging file structure. The file appears to be an incomplete or template PKGBUILD with only header metadata, but it contains no code that could execute or exfiltrate data.

No security issues found. The file is a standard AUR PKGBUILD header with no dangerous or suspicious content.
</details>
<evidence>
</evidence>
<summary>
No malicious or suspicious behavior found; file is SAFE.</summary>
</security_assessment>

[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious or suspicious behavior found; file is SAFE.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch for `nest-cli.json`, altering a plugin name from `&quot;@nestjs/swagger&quot;` to `&quot;@nestjs/swagger/plugin&quot;`. This is a routine configuration change that does not involve network requests, code execution, obfuscation, or any other malicious behavior. The patch appears to update the swagger plugin reference to a more specific module path; no supply-chain risk is present.</details>
<evidence></evidence>
<summary>Benign configuration patch for swagger plugin.</summary>
</security_assessment>

[11/17] Reviewing immich.sysusers, immich.tmpfiles...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Benign configuration patch for swagger plugin.
[11/17] Reviewing immich.sysusers, immich.tmpfiles, nginx.immich.conf...
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd tmpfiles.d configuration file. It creates required directories (<code>/var/lib/immich/.cache</code>, <code>/var/lib/immich/.config</code>, <code>/var/lib/immich/upload</code>), sets a symbolic link for the upload path, and adjusts ownership and permissions recursively on two state directories. All paths are within the immich application&#x27;s own scope. There are no network operations, no obfuscated or encoded commands, and no attempts to exfiltrate data or execute arbitrary code. The content is plain text with no hidden or malicious payloads. This is a normal and expected packaging file for a service that needs runtime state directories.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d configuration; no malicious content.</summary>
</security_assessment>

[11/17] Reviewing immich.sysusers, immich.tmpfiles, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing immich.sysusers, nginx.immich.conf, postgres-path.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles.d configuration; no malicious content.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch simply changes the expected binary paths for PostgreSQL utilities (pg_dump, psql) from the versioned directory `/usr/lib/postgresql/{version}/bin/` to `/usr/bin/`. This is a normal packaging adjustment for Arch Linux, where PostgreSQL binaries are installed directly in `/usr/bin/` rather than under a versioned lib directory. The change is consistent across both the service implementation and its corresponding spec file. There is no obfuscation, network activity, execution of untrusted code, or any other indication of malicious intent. The modifications are straightforward and serve only to adapt the upstream code to Arch's filesystem layout.
</details>
<evidence></evidence>
<summary>Patch adjusts PostgreSQL binary paths for Arch Linux layout, no malicious code.</summary>
</security_assessment>

[12/17] Reviewing immich.sysusers, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing immich.sysusers, nginx.immich.conf, sh-serverhome.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Patch adjusts PostgreSQL binary paths for Arch Linux layout, no malicious code.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-sysusers configuration fragment. It creates a system user `immich` with a locked shell (`/usr/bin/nologin`), assigns it a home directory under `/var/lib/immich`, and adds it to the `redis` and `valkey` groups. These are all normal, expected operations for an application server that needs a dedicated service user and access to cache services. There is no network activity, no code execution, no file manipulation outside the application's own scope, and no obfuscation. This file is a textbook example of a benign system user declaration for a systemd-managed service.

</details>
</security_assessment>

[13/17] Reviewing immich.sysusers, nginx.immich.conf, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing nginx.immich.conf, sh-serverhome.patch, sharp.patch...
+ Reviewed immich.sysusers. Status: SAFE -- SAFE
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts the Immich server startup script to set `LD_LIBRARY_PATH` to include `/usr/lib/jellyfin-ffmpeg/lib` and hardcodes `SERVER_HOME` to `/usr/lib/immich/app/server`. These changes are consistent with standard Arch Linux packaging practices, where dependencies (such as jellyfin-ffmpeg) are placed in system directories and the application's installation path is fixed. The removal of the mimalloc preload logic is also a normal packaging decision. No malicious behavior is present: there are no network requests, obfuscated commands, exfiltration attempts, or execution of untrusted code. The modifications are limited to environment variables and static paths, serving only to adapt the application to the package's intended filesystem layout.
</details>
<evidence></evidence>
<summary>Patch adjusts paths for Arch packaging; no malicious behavior.</summary>
</security_assessment>

[15/17] Reviewing nginx.immich.conf, sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Patch adjusts paths for Arch packaging; no malicious behavior.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds an `"install"` script to the `package.json` of the `sharp` package that runs `pnpm run build`. This is a routine and expected packaging adjustment — it ensures that the package is built when installed via npm/pnpm. There is no obfuscated code, no external network requests, no data exfiltration, and no manipulation of system files beyond the package&#8217;s own build process. The change aligns with standard practice and shows no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Patch adds a standard npm install script; not malicious.</summary>
</security_assessment>

[16/17] Reviewing nginx.immich.conf...
+ Reviewed sharp.patch. Status: SAFE -- Patch adds a standard npm install script; not malicious.
LLM auditresponse for nginx.immich.conf:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal nginx configuration snippet for the Immich application. It consists solely of a comment line referencing the upstream Immich GitHub repository and the specific commit/template from which it was adapted. There is no executable code, no network requests, no file operations, no obfuscation, and no system modification. The content is limited to an attribution comment and does not contain any directives that could introduce a security risk by itself. No malicious, suspicious, or supply-chain-attack behavior is present.

The reference to the upstream Immich repository is consistent with the package's stated purpose (configuring an nginx reverse proxy for Immich). There are no checksum skips, no downloads, no remote code execution, no attempts to exfiltrate data, and no deviation from standard packaging practice. The file is a plain configuration snippet with only comments, so it is SAFE.

</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; file is a benign nginx config snippet.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed nginx.immich.conf. Status: SAFE -- No malicious behavior found; file is a benign nginx config snippet.
Reviewed all the AUR repository's files.
Audit complete! Result: Inconclusive -- NO VERDICT
(Inconclusive 1 file: immich-server.install)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,917
  Completion Tokens: 10,734
  Total Tokens: 60,651
  Total Cost: $0.014114
  Execution Time: 155.61 seconds

Final Status: INCONCLUSIVE



Inconclusive Results:

immich-server.install: [INCONCLUSIVE] Audit error: could not parse a decision from the model response.
