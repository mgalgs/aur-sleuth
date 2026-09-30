---
package: komga
pkgver: 1.28.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25278
completion_tokens: 5234
total_tokens: 30512
cost: 0.0027274198
execution_time: 45.37
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T15:12:29Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for tracking komga releases; no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and normal install steps; no malicious behavior found.
  - file: komga.env
    status: safe
    summary: Plain environment config with no malicious behavior; only a weak default remember-me key worth changing.
  - file: komga
    status: safe
    summary: Standard Java launcher script, no security issues.
  - file: komga.service
    status: safe
    summary: Standard systemd service unit; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned checksums; no malicious behavior present.
  - file: komga.sysusers
    status: safe
    summary: Standard systemd sysusers user definition; no malicious behavior found.
  - file: komga.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration; no malicious behavior found. Not a supply-chain concern.
---

Materializing komga from local mirror...
Materialized komga
Analyzing komga AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgname, pkgver, source, checksums, etc.) and a function definition for `package()`. No commands are executed at global scope—only standard variable definitions. `makepkg --printsrcinfo` will source the file, but no dangerous code runs during that step. There is no command substitution, no network calls, no obfuscated code, and no unexpected execution at the top level. The source array points to the official upstream GitHub repository and uses pinned checksums. The package function content is not evaluated during this gate.
</details>
<evidence></evidence>
<summary>No dangerous code executes at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes at top-level scope.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used by AUR maintainers to track the latest upstream release of a project. It instructs nvchecker to query the GitHub API for the latest release of `gotson/komga`, using the `v` version prefix and `use_latest_release = true`. This is a routine version-checking workflow and does not download, execute, or exfiltrate any data. No suspicious commands, obfuscation, or unexpected network destinations are present.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config for tracking komga releases; no security issues.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for tracking komga releases; no security issues.
[1/10] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to prevent JAR files in the root directory from being tracked by Git. It contains no executable code, network requests, or any other potentially dangerous operations. This is a routine packaging file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[2/10] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license file attributed to the Arch Linux Contributors. It contains no executable code, network requests, obfuscation, or any instructions. It is a plain text document that describes the terms under which the software is distributed. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, LICENSE, PKGBUILD, komga...
[3/10] Reviewing .SRCINFO, PKGBUILD, komga...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. All seven sources are pinned to the upstream Komga release `1.28.0` and have explicit `sha256sums` values, so downloads are integrity-checked. The `package()` function only installs the application JAR, a launcher script, service/config files, and the upstream license into standard package paths. There are no network requests at build time, no calls to `eval`, `base64`, `curl`, `wget`, or any obfuscated commands, and no file operations outside the package staging directory.

The dependencies and optdepends are consistent with a Java-based media server. Installing the JAR with mode `755` is slightly unusual but not malicious. The maintainer scripts referenced as sources (`komga`, `komga.env`, `komga.service`, etc.) are not shown in this file, but their use here — installing them into `/usr/bin`, `/etc`, and systemd/sysusers/tmpfiles directories — is typical packaging behavior. No evidence of injected malicious code, exfiltration, or execution of untrusted build-time content was found.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums and normal install steps; no malicious behavior found.
</summary>
</security_assessment>

[3/10] Reviewing .SRCINFO, PKGBUILD, komga, komga.env...
[4/10] Reviewing .SRCINFO, komga, komga.env...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and normal install steps; no malicious behavior found.
LLM auditresponse for komga.env:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment configuration file for the Komga application. It sets server port, context path, library scan scheduling/exclusions, remember-me cookie settings, and database backup options. There are no commands, scripts, network requests, encoded payloads, or file operations. The use of HTML entities such as &amp;quot; and &amp;apos; is unusual for a systemd environment file and may cause the quoted values to be treated literally by the application, but this is a configuration formatting issue rather than a security threat.

The default value `KOMGA_REMEMBERME_KEY=Changeme!` is a weak example value and should be changed by the user in production, but it is not malicious behavior injected into the package. This file does not exhibit any signs of a supply-chain attack, data exfiltration, or unauthorized code execution.
</details>
<evidence>
</evidence>
<summary>
Plain environment config with no malicious behavior; only a weak default remember-me key worth changing.</summary>
</security_assessment>

[5/10] Reviewing .SRCINFO, komga...
+ Reviewed komga.env. Status: SAFE -- Plain environment config with no malicious behavior; only a weak default remember-me key worth changing.
[5/10] Reviewing .SRCINFO, komga, komga.service...
LLM auditresponse for komga:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard shell launcher script for a Java application. It invokes `/usr/bin/java` with the `--enable-preview` and `--enable-native-access=ALL-UNNAMED` flags (likely required by the application's upstream requirements) and executes the main jar located at `/usr/share/java/komga/komga.jar`. There are no network requests, downloads, obfuscated code, file operations outside the package's scope, or any other malicious indicators. The script follows typical AUR packaging patterns for a Java application.</details>
<evidence></evidence>
<summary>Standard Java launcher script, no security issues.</summary>
</security_assessment>

[5/10] Reviewing .SRCINFO, komga, komga.service, komga.sysusers...
[6/10] Reviewing .SRCINFO, komga.service, komga.sysusers...
+ Reviewed komga. Status: SAFE -- Standard Java launcher script, no security issues.
LLM auditresponse for komga.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Komga application. It defines a dedicated service user and group, sets a working directory and configuration home under `/var/lib/komga`, optionally loads environment from `/etc/komga.conf`, and starts the `/usr/bin/komga` binary with JVM and Spring/H2 database arguments. There are no network exfiltration commands, no downloads, no obfuscated code, no unexpected file operations, and no execution of untrusted content. The unit is consistent with normal packaging practice for a self-hosted application service.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service unit; no malicious or suspicious behavior found.</summary>
</security_assessment>

[7/10] Reviewing .SRCINFO, komga.sysusers...
+ Reviewed komga.service. Status: SAFE -- Standard systemd service unit; no malicious or suspicious behavior found.
[7/10] Reviewing .SRCINFO, komga.sysusers, komga.tmpfiles...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `komga` package. It contains only package metadata: name, description, version, URL, license, dependencies, source file entries, and SHA-256 checksums. No build, install, or post-install logic is present in this file.

All sources are fetched from the upstream project's official GitHub repository, including the release JAR, license file, and the packaged configurations. Every source entry has a pinned SHA-256 checksum, so no the archive is being fetched over an unverified or mutable source. There are no suspicious network requests, encoded commands, file manipulations, or signs of injection.

The file does not contain any executable code or maintainer helper script. It is consistent with normal AUR packaging practice and contains no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata with pinned checksums; no malicious behavior present.</summary>
</security_assessment>

[8/10] Reviewing komga.sysusers, komga.tmpfiles...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned checksums; no malicious behavior present.
LLM auditresponse for komga.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd sysusers.d configuration fragment. It creates an unprivileged system user `komga` with no UID specified, no login shell, a GECOS comment of "Komga daemon", and a home directory of `/var/lib/komga`. This is a standard and expected packaging pattern for daemon accounts.

The line performs no network access, no code execution, no file modification outside the declared user metadata, and no obfuscation. The quoted GECOS field is normal sysusers syntax. No evidence of a supply-chain attack or malicious behavior was found.
</details>
<evidence>

</evidence>
<summary>
Standard systemd sysusers user definition; no malicious behavior found.
</summary>
</security_assessment>

[9/10] Reviewing komga.tmpfiles...
+ Reviewed komga.sysusers. Status: SAFE -- Standard systemd sysusers user definition; no malicious behavior found.
LLM auditresponse for komga.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file for the Komga service. It creates the state directory `/var/lib/komga`, applies ownership restoration (`Z`) to the service state directory and to the package's own Java application directory under `/usr/share/java/komga`, and creates a symlink from `/var/log/komga.log` to the service log file under `/var/lib/komga`. These are routine packaging/service-setup operations that stay within the application's own directories.

There is no suspicious network activity, no code execution, no obfuscation, no downloads, and no manipulation of unrelated system files. The `Z` directive on `/usr/share/java/komga` makes the application directory owned by the `komga` user, which is a minor permissions consideration but not malicious; it affects only the package's own files and is plausibly intentional for the service's runtime behavior.
</details>
<evidence>
</evidence>
<summary>
Standard tmpfiles configuration; no malicious behavior found. Not a supply-chain concern.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed komga.tmpfiles. Status: SAFE -- Standard tmpfiles configuration; no malicious behavior found. Not a supply-chain concern.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,278
  Completion Tokens: 5,234
  Total Tokens: 30,512
  Total Cost: $0.002727
  Execution Time: 45.37 seconds

Final Status: SAFE


No issues found.
