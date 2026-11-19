---
package: immich-cli
pkgbase: immich
pkgver: 3.3.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 50692
completion_tokens: 19582
total_tokens: 70274
cost: 0.008176896
execution_time: 117.48
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-10-21T07:13:08Z
file_verdicts:
  - file: .git-blame-ignore-revs
    status: safe
    summary: Standard git blame ignore list, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Documentation file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license text, no executable content.
  - file: REUSE.toml
    status: safe
    summary: Static REUSE license metadata configuration file.
  - file: immich-server.install
    status: safe
    summary: Informational install script, no dangerous operations
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: immich.conf
    status: safe
    summary: Standard configuration file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no malicious code.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no malicious content.
  - file: nest-cli.json.patch
    status: safe
    summary: Innocuous plugin path correction patch.
  - file: immich-server.service
    status: safe
    summary: Standard systemd service unit with no malicious code or behavior.
  - file: nginx.immich.conf
    status: safe
    summary: Standard NGINX proxy config, no malicious content.
  - file: postgres-path.patch
    status: safe
    summary: Packaging path adaptation patch; no security issues.
  - file: sh-serverhome.patch
    status: safe
    summary: Patch makes standard path adjustments for packaging; no signs of malice.
  - file: sharp.patch
    status: safe
    summary: Routine patch adding npm install build hook for upstream package.
  - file: immich.sysusers
    status: safe
    summary: "SAFE: Standard systemd-sysusers configuration file."
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
Running `makepkg --printsrcinfo` only sources the PKGBUILD, executing its top-level statements. The top-level scope of this PKGBUILD consists entirely of standard variable definitions: `pkgbase`, `pkgname`, `pkgver`, `pkgdesc`, `url`, `license`, `arch`, `makedepends`, `depends`, `source`, and `b2sums`. No command substitutions, external downloads, `eval`, `curl`, `wget`, or other executable statements are present at global scope.

The `prepare()`, `build()`, and `package_*()` functions contain more involved commands, but those functions are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate. The `source` array includes external data downloads and some `SKIP` checksums, but no sources are fetched or verified during this command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope only defines variables; no dangerous commands execute during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope only defines variables; no dangerous commands execute during printsrcinfo.
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
This file (`.git-blame-ignore-revs`) is a standard Git configuration file that tells `git blame` to ignore specific commits, commonly used for mass reformatting or large refactoring commits that clutter blame annotations. It contains only a single commit hash and no executable code, obfuscated commands, network requests, or file operations. Nothing in this file deviates from ordinary packaging practices or presents a security risk.
</details>
<evidence></evidence>
<summary>Standard git blame ignore list, no security concerns.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .gitignore...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Standard git blame ignore list, no security concerns.
[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used to exclude build artifacts, compressed archives, and generated data files from version control. It contains no executable code, no network requests, no file modifications, or any other suspicious behaviors. The entries are straightforward pattern matches for common packaging outputs.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple Markdown changelog documenting breaking changes for the immich-server package. It contains no executable code, no network requests, no file operations, and no obfuscated content. It is purely informational text with a single paragraph and a placeholder indicating no current breaking changes. There are no security concerns; the file adheres to standard documentation practices.
</details>
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
The file `LICENSE` contains a standard permissive license text, closely resembling the ISC license, written by "Arch Linux Contributors". It contains no executable code, no obfuscated strings, no network requests (e.g., curl, wget), no system modification commands, and no invocations of dangerous shell built-ins (eval, base64). The content is purely declarative text granting permission to use, copy, modify, and distribute the software. This is standard packaging practice and poses no security threat or indicator of a supply chain attack.
</details>
<evidence>
</evidence>
<summary>Standard license text, no executable content.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license text, no executable content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file (TOML format) that declares license and copyright metadata for the package's source files. It contains only static data: file path patterns, SPDX license identifiers, and copyright strings. There are no executable commands, network requests, obfuscation, or any operations that could modify the system. It is a standard metadata file for license compliance and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Static REUSE license metadata configuration file.</summary>
</security_assessment>

[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing .SRCINFO, PKGBUILD, immich-server.install...
+ Reviewed REUSE.toml. Status: SAFE -- Static REUSE license metadata configuration file.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an Arch Linux pacman install script hook that only prints informational messages during package installation and upgrade. It performs no network requests, file writes, system modifications, code execution (beyond simple echo statements), or any other dangerous operations. All functions are either empty or contain only text output. There is no evidence of malicious code.
</details>
<evidence>
</evidence>
<summary>Informational install script, no dangerous operations</summary>
</security_assessment>

[5/17] Reviewing .SRCINFO, PKGBUILD, immich-server.install, immich-server.service...
[6/17] Reviewing .SRCINFO, PKGBUILD, immich-server.service...
+ Reviewed immich-server.install. Status: SAFE -- Informational install script, no dangerous operations
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD describes a standard build and split-package installation for the immich-server and immich-cli components. All network sources (tarball from GitHub, reverse‑geocoding data files from geonames.org and GitHub) are legitimate data files that the application requires; no unexpected remote code is fetched or executed. The build process strictly runs the upstream build system (pnpm, nest, mise) and installs the results into the package directory. The only script installed at build time is a short wrapper for `immich-admin` that simply calls the packaged `start.sh`. There is no use of `eval`, obfuscated code, direct calls to `curl`/`wget`, or any attempt to exfiltrate system data. The presence of `SKIP` checksums and plain‑HTTP geodata sources is a hygiene concern but not evidence of a supply‑chain attack. The file is consistent with ordinary, trustworthy AUR packaging.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[6/17] Reviewing .SRCINFO, PKGBUILD, immich-server.service, immich.conf...
[7/17] Reviewing .SRCINFO, immich-server.service, immich.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for the immich application, containing environment variable definitions for database, Redis, media storage, and machine learning settings. It contains no executable code, no network requests, no obfuscation, no file system manipulation, and no commands of any kind. The presence of default credentials (DB_PASSWORD=postgres) is a weak-default-password hygiene concern, not a supply-chain attack. The file is consistent with normal configuration packaging for a self-hosted application and shows no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard configuration file, no security issues.</summary>
</security_assessment>

[7/17] Reviewing .SRCINFO, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing .SRCINFO, immich-server.service, immich.sysusers...
+ Reviewed immich.conf. Status: SAFE -- Standard configuration file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file, used by makepkg to describe the package sources, dependencies, checksums, and split-package definitions. It contains no executable code, no obfuscated strings, no network requests (the URLs are package source definitions that makepkg will fetch at build time), and no dangerous commands such as `eval`, `curl`, `base64`, or `sudo`.  

All external sources point to legitimate, established origins: the upstream immich-app GitHub tag, geonames.org for geographic data, and a pinned version of the natural-earth-vector dataset. Several checksums are set to `SKIP`, which is explicitly allowed by AUR packaging practice and is not malicious. The dependencies (nodejs, postgresql, libvips, ffmpeg, etc.) are all appropriate for a self-hosted photo/video backup application.  

The only minor anomaly is the HTML-escaping of version operators (e.g., `&gt;=14` instead of `&gt;>14`), but this is a harmless formatting artifact, not evidence of tampering. There is no sign of code injection, data exfiltration, backdoors, or any behavior outside routine packaging.
</details>
<evidence></evidence>
<summary>Standard metadata, no malicious code.</summary>
</security_assessment>

[8/17] Reviewing .SRCINFO, immich-server.service, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing immich-server.service, immich.sysusers, immich.tmpfiles...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no malicious code.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet. It creates runtime directories (`/var/lib/immich/.cache`, `.config`, `upload`) with appropriate ownership and permissions, establishes a symlink for the upload path, and enforces restrictive permissions on the base data directories. There is no executable code, network access, obfuscation, or deviation from expected packaging practices. It poses no security risk beyond what the application itself intends.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no malicious content.</summary>
</security_assessment>

[9/17] Reviewing immich-server.service, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing immich-server.service, immich.sysusers, nest-cli.json.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no malicious content.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file modifies a `nest-cli.json` configuration file, correcting the plugin name from `@nestjs/swagger` to `@nestjs/swagger/plugin`. The change is a one-line diff that adjusts a configuration value used during the application build process. There is no obfuscation, no network activity, no execution of external commands, and no modification of system-level files. The patch is consistent with standard packaging practices for fixing upstream configuration references and does not introduce any malicious behavior.
</details>
<evidence></evidence>
<summary>Innocuous plugin path correction patch.</summary>
</security_assessment>

[10/17] Reviewing immich-server.service, immich.sysusers, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing immich-server.service, immich.sysusers, nginx.immich.conf...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Innocuous plugin path correction patch.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Immich server. It contains typical directives for a hardened service: restrictive file system access, no privilege escalation, device allowances for hardware transcoding, and a bind-mount to supply Jellyfin FFmpeg for improved codec support. All environment files and paths refer to expected locations under /usr/lib/immich and /var/lib/immich. The service does not include any network requests, downloads, obfuscated commands, or modifications outside the application&#x27;s own data directories. The BindReadOnlyPaths directive overrides ffmpeg from the Jellyfin package, which is a packaging choice to enable hardware transcoding; the bind is read‑only and scoped to the service namespace, so it is not malicious. No evidence of data exfiltration, credential theft, backdoors, or execution of attacker‑controlled code exists in this unit file.
</details>
<evidence></evidence>
<summary>Standard systemd service unit with no malicious code or behavior.</summary>
</security_assessment>

[11/17] Reviewing immich-server.service, immich.sysusers, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing immich.sysusers, nginx.immich.conf, postgres-path.patch...
+ Reviewed immich-server.service. Status: SAFE -- Standard systemd service unit with no malicious code or behavior.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard NGINX reverse proxy configuration template for the Immich application. It sets up proxying to a local upstream server on port 2283 with typical settings for WebSocket support, compression, buffer sizes, and header forwarding. The `X-Forwarded-Proto` mapping restricts incoming header values to only `http` or `https`, which is a security hardening measure against header injection. The large `client_max_body_size` of 50000M is an operational choice suitable for a photo/video management application that handles large uploads, not a vulnerability. There are no network requests, no obfuscated code, no file operations, and no system modification commands. The configuration is entirely passive and serves only to route traffic between clients and the local Immich server process.
</details>
<evidence></evidence>
<summary>Standard NGINX proxy config, no malicious content.</summary>
</security_assessment>

[13/17] Reviewing immich.sysusers, postgres-path.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard NGINX proxy config, no malicious content.
[13/17] Reviewing immich.sysusers, postgres-path.patch, sh-serverhome.patch...
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard packaging patch that changes PostgreSQL binary paths from distribution-specific locations (e.g. `/usr/lib/postgresql/14/bin/`) to a generic `/usr/bin/` path used on Arch Linux. It only modifies path references in source code and test expectations; it does not introduce or execute any code, fetch remote resources, alter system files, or perform any other operation. The patch is a normal and expected adaption for the Arch Linux environment.
</details>
<evidence>
</evidence>
<summary>Packaging path adaptation patch; no security issues.</summary>
</security_assessment>

[14/17] Reviewing immich.sysusers, sh-serverhome.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Packaging path adaptation patch; no security issues.
[14/17] Reviewing immich.sysusers, sh-serverhome.patch, sharp.patch...
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that adjusts the `start.sh` script of the Immich server for Arch Linux packaging. The changes remove a preloaded memory allocator (`libmimalloc`), hardcode `SERVER_HOME` to the expected package path (`/usr/lib/immich/app/server`), and add a system FFmpeg library path (`/usr/lib/jellyfin-ffmpeg/lib`) to `LD_LIBRARY_PATH` for proper dependency resolution. All of these modifications are standard packaging adjustments—no network requests, obfuscation, file exfiltration, or execution of untrusted code. The patch is consistent with normal AUR packaging practices and shows no signs of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Patch makes standard path adjustments for packaging; no signs of malice.</summary>
</security_assessment>

[15/17] Reviewing immich.sysusers, sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Patch makes standard path adjustments for packaging; no signs of malice.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file adds an `"install"` script entry to the upstream `package.json` that runs `pnpm run build`. This is a standard packaging tweak to ensure the upstream build step (`node install/build.js`) runs automatically when the package is installed via npm/pnpm, typically needed for native module compilation (e.g., the `sharp` image processing library). There is no obfuscation, no encoded or suspicious commands, no network requests, no exfiltration, and no tampering with system files. The modification is scoped entirely to the package's own build configuration and follows normal AUR/upstream packaging practices.
</details>
<evidence>
</evidence>
<summary>Routine patch adding npm install build hook for upstream package.</summary>
</security_assessment>

[16/17] Reviewing immich.sysusers...
+ Reviewed sharp.patch. Status: SAFE -- Routine patch adding npm install build hook for upstream package.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `immich.sysusers` is a standard `systemd-sysusers` configuration snippet. It declaratively creates the `immich` system user and adds it to the `redis` and `valkey` supplementary groups. 

This is a routine and expected packaging practice for an application that requires permission to communicate with local Redis/Valkey instances. The file contains absolutely no executable commands, obfuscation, network requests, file exfiltration, or any other indicators of a supply-chain attack. The content is purely declarative and safely configures the required local system users and groups for the Immich service.
</details>
<evidence>
</evidence>
<summary>SAFE: Standard systemd-sysusers configuration file.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed immich.sysusers. Status: SAFE -- SAFE: Standard systemd-sysusers configuration file.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,692
  Completion Tokens: 19,582
  Total Tokens: 70,274
  Total Cost: $0.008177
  Execution Time: 117.48 seconds

Final Status: SAFE


No issues found.
