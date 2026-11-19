---
package: immich-server
pkgbase: immich
pkgver: 3.3.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 50784
completion_tokens: 13966
total_tokens: 64750
cost: 0.01940000
execution_time: 236.19
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-10-11T23:09:02Z
file_verdicts:
  - file: .git-blame-ignore-revs
    status: safe
    summary: Benign git blame ignore list containing one commit hash.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file; no malicious behavior present.
  - file: LICENSE
    status: safe
    summary: Plain ISC-style license text; no code, no suspicious behavior. Safe.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Changelog documentation only; no executable or malicious content found.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE metadata file; no executable or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only package manifest; all sources legitimate; no malicious behavior detected.
  - file: immich-server.install
    status: safe
    summary: Standard .install script; informational messages and version check only. No malicious behavior found.
  - file: immich.conf
    status: safe
    summary: Plain Immich config file; no malicious code, standard local defaults.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers.d fragment creating an unprivileged service user; no security issues.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration; no malicious behavior or security concerns found.
  - file: nest-cli.json.patch
    status: safe
    summary: Benign configuration patch; no malicious behavior or security concerns identified.
  - file: immich-server.service
    status: safe
    summary: Systemd unit for Immich server; standard, hardened service configuration; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR build script; no malicious or suspicious supply-chain behavior found.
  - file: postgres-path.patch
    status: safe
    summary: Benign path adjustment patch for Arch PostgreSQL binary locations; no security concerns.
  - file: sh-serverhome.patch
    status: safe
    summary: Standard packaging patch adjusting runtime paths; no malicious behavior found.
  - file: nginx.immich.conf
    status: safe
    summary: Standard Immich nginx proxy config; no malicious behavior found.
  - file: sharp.patch
    status: safe
    summary: Benign patch adding upstream build lifecycle; no malicious behavior found.
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
Running `makepkg --printsrcinfo` sources only the PKGBUILD's global/top-level scope. In this file, the top-level scope consists solely of standard metadata variable assignments (`pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `url`, `license`, `arch`, `makedepends`, `depends`, `source`, `b2sums`) with plain string and array values. There are no command substitutions (`$(...)`), backticks, `eval` calls, network fetches, or file operations in the global scope that would execute during sourcing.

The `source` array entries (GitHub upstream tarball, geonames.org data files, natural-earth-vector GeoJSON) are only URL definitions; they are not downloaded or executed during `--printsrcinfo`. The `b2sums` array contains several `SKIP` entries, but per the stated policy a SKIPped checksum is not grounds to fail this narrow gate since no sources are fetched during this step. All potentially interesting code lives in `prepare()`, `build()`, `package_immich-server()`, and `package_immich-cli()`, which are not executed by this command and are deferred to the full audit.

</details>
<evidence>
</evidence>
<summary>
Top-level scope contains only standard metadata definitions; no code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only standard metadata definitions; no code executes during printsrcinfo.
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
The file is a `.git-blame-ignore-revs` file containing a single commit hash. Such files are a standard Git feature used by maintainers to make `git blame` ignore specific commits, typically large formatting or refactoring commits. No code, network activity, obfuscation, or file operations are present. This is benign repository metadata with no security implications.
</details>
<evidence></evidence>
<summary>Benign git blame ignore list containing one commit hash.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore, BREAKING CHANGELOG.md...
[1/17] Reviewing .SRCINFO, .gitignore, BREAKING CHANGELOG.md...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Benign git blame ignore list containing one commit hash.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in the AUR package repository. It excludes common build artifacts (`immich-*.tar.gz`, `immich-*.pkg.*`), log files, and upstream data files that may be generated or downloaded during packaging. There is no executable code, no network behavior, no obfuscation, and no file-system or system modification outside the repository working directory. Nothing in this file deviates from normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore file; no malicious behavior present.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file; no malicious behavior present.
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license file (ISC-style license text) attributed to "Arch Linux Contributors". It contains only standard license language granting permission to use, copy, modify, and distribute the software, along with a warranty disclaimer.

There is no executable code, no network requests, no obfuscation, no file operations, and no system modifications. The content is entirely consistent with a routine license file that would accompany an AUR package. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Plain ISC-style license text; no code, no suspicious behavior. Safe.
</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
[3/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain ISC-style license text; no code, no suspicious behavior. Safe.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple changelog document containing only a summary statement about breaking changes and a link reference to release notes. It contains no executable code, no network operations, no file operations, no obfuscated content, and no instructions that could affect a system. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Changelog documentation only; no executable or malicious content found.</summary>
</security_assessment>

[4/17] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Changelog documentation only; no executable or malicious content found.
[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration used to declare copyright and license metadata for specific paths in a repository. It contains only path lists, SPDX copyright statements, and SPDX license identifiers. No commands, network operations, file modifications, or executable content are present. The references to files such as `PKGBUILD`, `*.install`, `*.service`, and patches are consistent with standard Arch Linux package repository metadata and do not indicate malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign REUSE metadata file; no executable or suspicious content found.
</summary>
</security_assessment>

[4/17] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing .SRCINFO, PKGBUILD, immich-server.install...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE metadata file; no executable or suspicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a package metadata manifest only. It declares the `immich` package sources, dependencies, checksums, and subpackages. All network sources point to the project's own upstream GitHub repository or to well-known data providers (geonames.org and the natural-earth-vector GitHub project) that supply geographic data used by Immich. The checksums are pinned with b2sums for most items; the `SKIP` entries are limited to the geonames dataset downloads, which is a supply-chain hygiene concern but not evidence of malicious behavior.

No code is defined in this file, no suspicious commands, obfuscation, or unexpected remote hosts are present. The content is consistent with standard AUR packaging practice for an application that bundles reference geodata.
</details>
<evidence></evidence>
<summary>
Metadata-only package manifest; all sources legitimate; no malicious behavior detected.
</summary>
</security_assessment>

[5/17] Reviewing .SRCINFO, PKGBUILD, immich-server.install, immich-server.service...
[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only package manifest; all sources legitimate; no malicious behavior detected.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for immich-server. It only prints informational messages during install/upgrade and performs no file modifications, network operations, downloads, code execution, or obfuscation. The `post_upgrade()` function performs a simple version comparison using `sort -V` to decide whether to display a notice about the separately packaged `immich-machine-learning` component. This is normal packaging behavior and contains no evidence of malicious activity.
</details>
<evidence></evidence>
<summary>Standard .install script; informational messages and version check only. No malicious behavior found.</summary>
</security_assessment>

[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service, immich.conf...
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
+ Reviewed immich-server.install. Status: SAFE -- Standard .install script; informational messages and version check only. No malicious behavior found.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment/configuration file for the Immich server package. It sets database connection parameters, Redis host, media storage location, machine-learning service URL, and cache folder. There are no scripts, commands, network requests, encoded payloads, or file operations present. The contents are entirely benign configuration values.

The only noteworthy point is that the configuration uses default local credentials (`postgres`/`postgres`) and a localhost-only setup. This is a standard development/default configuration and not evidence of malicious behavior, though users should change the database password for production deployments.
</details>
<evidence>
</evidence>
<summary>
Plain Immich config file; no malicious code, standard local defaults.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers...
+ Reviewed immich.conf. Status: SAFE -- Plain Immich config file; no malicious code, standard local defaults.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration fragment. It creates an unprivileged system user named `immich` with home directory `/var/lib/immich` and login shell `/usr/bin/nologin`, then adds that user to the `redis` and `valkey` supplementary groups. These are routine packaging operations needed so the Immich service can access Redis/Valkey as a non-root user. There is no code execution, no network access, no suspicious file manipulation, and no behavior outside the package's normal service setup.
</details>
<evidence>
</evidence>
<summary>
Standard sysusers.d fragment creating an unprivileged service user; no security issues.
</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich-server.service, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing PKGBUILD, immich-server.service, immich.tmpfiles...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers.d fragment creating an unprivileged service user; no security issues.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file. It creates runtime data directories under `/var/lib/immich`, sets restrictive ownership/permissions to the `immich` user/group, creates a symlink from the application installation path to the upload directory, and applies ownership/permission corrections to the package's own state directories. No suspicious commands, network activity, obfuscation, or modifications outside the application's scope are present.
</details>
<evidence>
</evidence>
<summary>
Standard tmpfiles configuration; no malicious behavior or security concerns found.
</summary>
</security_assessment>

[9/17] Reviewing PKGBUILD, immich-server.service, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing PKGBUILD, immich-server.service, nest-cli.json.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration; no malicious behavior or security concerns found.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch only modifies a single line in the Immich server's `nest-cli.json`, changing the NestJS Swagger plugin name from `@nestjs/swagger` to `@nestjs/swagger/plugin`. This is a routine configuration fix consistent with upstream NestJS plugin naming and does not introduce any executable, network, or file-system behavior.

There is no obfuscation, no suspicious command, no download, no data exfiltration, and no modification outside the package's own configuration. The change is consistent with standard packaging practices and does not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Benign configuration patch; no malicious behavior or security concerns identified.</summary>
</security_assessment>

[10/17] Reviewing PKGBUILD, immich-server.service, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing PKGBUILD, immich-server.service, nginx.immich.conf...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Benign configuration patch; no malicious behavior or security concerns identified.
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd service unit for the Immich server. It runs the packaged Node.js application (`node dist/main`) from the Immich installation directory, reads an administrator-supplied environment file (`/etc/immich.conf`), and declares normal service dependencies on Redis and PostgreSQL. There are no network requests, no downloads, no encoded or obfuscated commands, and no file operations outside the application's own directories (`/tmp`, `/var/tmp`, `/var/lib/immich/upload`, `/var/lib/immich/.cache`).

The hardening directives are consistent with good packaging practice: `ProtectSystem=strict`, `ProtectHome=true`, `NoNewPrivileges=yes`, empty capability sets, and namespace restrictions. The DRM/NVIDIA device access and `render`/`video` supplementary groups are expected for hardware transcoding. The read-only bind mount of jellyfin-ffmpeg binaries is scoped to this unit and clearly commented as serving the application's transcoding needs. Nothing in this file suggests injected malicious code or a supply-chain attack.
</details>
<evidence></evidence>
<summary>Systemd unit for Immich server; standard, hardened service configuration; no malicious behavior.</summary>
</security_assessment>

[12/17] Reviewing PKGBUILD, nginx.immich.conf...
+ Reviewed immich-server.service. Status: SAFE -- Systemd unit for Immich server; standard, hardened service configuration; no malicious behavior.
[12/17] Reviewing PKGBUILD, nginx.immich.conf, postgres-path.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging script for the upstream Immich project. It fetches a pinned release tarball from the project's own GitHub repository, applies locally pinned patches, runs the upstream pnpm/nest build, and installs resulting files into `$pkgdir`. There is no evidence of injected malicious code: no obfuscated commands, no remote script execution, no references to unexpected hosts, and no file operations outside the package build or install scope.
</details>
<details>
The `SKIP` b2sums on the geonames/natural-earth data files are a reproducibility/trust hygiene concern, not evidence of malice; the data is non-executable and downloaded from well-known public geographic data sources. `pnpm patch` with `yes ''` and `mise install` are part of the upstream build workflow. No supply-chain red flags were found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR build script; no malicious or suspicious supply-chain behavior found.
</summary>
</security_assessment>

[12/17] Reviewing PKGBUILD, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR build script; no malicious or suspicious supply-chain behavior found.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple upstream patch that changes the PostgreSQL binary path used by Immich's database backup service from the Debian/Ubuntu-style versioned path (`/usr/lib/postgresql/<version>/bin/`) to the Arch Linux-style path (`/usr/bin/`). The accompanying test changes update expected paths to match. This is a routine, legitimate packaging adaptation for Arch, where PostgreSQL binaries live directly in `/usr/bin`.

There is no obfuscated code, no network access, no execution of downloaded content, no file exfiltration, and no modification of unrelated system files. The patch only adjusts the location of the system's own PostgreSQL tools (`pg_dump`, `psql`) that the application legitimately invokes for its stated database backup functionality. No supply-chain risk is present.
</details>
<evidence>
</evidence>
<summary>
Benign path adjustment patch for Arch PostgreSQL binary locations; no security concerns.</summary>
</security_assessment>

[13/17] Reviewing nginx.immich.conf, postgres-path.patch, sh-serverhome.patch, sharp.patch...
[14/17] Reviewing nginx.immich.conf, sh-serverhome.patch, sharp.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Benign path adjustment patch for Arch PostgreSQL binary locations; no security concerns.
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the Immich server startup script to use a fixed installation path (`/usr/lib/immich/app/server`) and to add a system ffmpeg library path (`/usr/lib/jellyfin-ffmpeg/lib`) to `LD_LIBRARY_PATH`. This is consistent with standard Arch packaging practice: replacing upstream dynamic path detection with known package layout, and ensuring the bundled/patched ffmpeg libraries are available at runtime.

There is no evidence of malicious behavior. The patch performs no network requests, no obfuscated code, no dangerous shell constructs, no file exfiltration, and no execution of attacker-controlled content. The library path adjustment is a routine runtime environment change for a media server that depends on ffmpeg.
</details>
<evidence>
</evidence>
<summary>
Standard packaging patch adjusting runtime paths; no malicious behavior found.</summary>
</security_assessment>

[15/17] Reviewing nginx.immich.conf, sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Standard packaging patch adjusting runtime paths; no malicious behavior found.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nginx reverse-proxy configuration for Immich. It listens on port 8080, proxies requests to an upstream server on localhost:2283, and sets common headers for WebSocket upgrades, forwarded protocol, and large uploads. The configuration matches the upstream Immich nginx template and serves the application's stated purpose.

No malicious behavior is present: there are no downloads, no execution of fetched code, no file manipulation, no data exfiltration, and no connections to unrelated hosts. The map directives and proxy settings are routine packaging/application configuration. The `&amp;apos;&amp;apos;` token is an entity-encoded empty string used for the WebSocket upgrade map, not an obfuscated payload.
</details>
<evidence>
</evidence>
<summary>
Standard Immich nginx proxy config; no malicious behavior found.</summary>
</security_assessment>

[16/17] Reviewing sharp.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard Immich nginx proxy config; no malicious behavior found.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds an `install` npm lifecycle script to `sharp`'s `package.json` that runs `pnpm run build`, which executes the package's own existing `build` script (`node install/build.js`). There is no obfuscation, no unexpected network download, no eval/base64 usage, and no file exfiltration or system modification outside the package's normal build process. Adding an install hook to build sharp from source is consistent with distribution packaging practices when prebuilt binaries are not used; it is not evidence of a supply-chain attack.

The only security-relevant note is that npm/pnpm install lifecycle scripts execute code automatically during dependency installation. However, the code invoked is the upstream project's own build script, and the patch contains no injected commands or unrelated destinations. This is a packaging/build-hygiene choice rather than a malicious indicator.
</details>
<evidence></evidence>
<summary>Benign patch adding upstream build lifecycle; no malicious behavior found.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed sharp.patch. Status: SAFE -- Benign patch adding upstream build lifecycle; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,784
  Completion Tokens: 13,966
  Total Tokens: 64,750
  Total Cost: $0.019400
  Execution Time: 236.19 seconds

Final Status: SAFE


No issues found.
