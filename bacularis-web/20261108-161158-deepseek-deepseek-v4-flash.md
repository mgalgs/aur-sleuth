---
package: bacularis-web
pkgbase: bacularis
pkgver: 7.0.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 37402
completion_tokens: 5721
total_tokens: 43123
cost: 0.004444804
execution_time: 58.05
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 5
injection_attempts: 0
date: 2026-11-08T16:11:57Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: README.md
    status: safe
    summary: Documentation file, no executable content, safe.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious code.
  - file: bacularis-api.tmpfiles
    status: safe
    summary: Standard tmpfiles.d configuration, no security issues.
  - file: bacularis-api.install
    status: safe
    summary: Standard package lifecycle script; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no malicious indicators found.
  - file: bacularis-php.ini.example
    status: safe
    summary: Standard PHP configuration example, safe.
  - file: bacularis-common.tmpfiles
    status: safe
    summary: Standard tmpfiles config, no security issues.
  - file: bacularis-nginx.conf
    status: safe
    summary: Standard Nginx config for bacularis-web.
  - file: bacularis-sudoers.hook
    status: safe
    summary: Standard pacman hook for sudoers update.
  - file: bacularis-web.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration; no security issues.
  - file: bacularis-sudoers-update
    status: safe
    summary: Legitimate helper script for managing Bacula sudoers rules.
---

bacularis-web is built from bacularis
Materializing bacularis-web from local mirror...
Materialized bacularis-web
Analyzing bacularis-web AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable definitions (`pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `source`, `sha256sums`, `noextract`) and function definitions (`prepare`, `package_bacularis-common`, etc.). There are no command substitutions, backticks, `eval`, or any other code execution constructs at the global level. The `source` array entries are ordinary URL strings; no downloads or network operations occur during sourcing. Since `makepkg --printsrcinfo` only executes the global scope and does not invoke `prepare()`, `build()`, or `package()`, no malicious code can run at this step.
</details>
<evidence>
</evidence>
<summary>Global scope has no executable code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no executable code; safe to source.
Note: 5 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: bacularis-app-7.0.0.tar.gz::https://github.com/bacularis/bacularis-app/archive/refs/tags/7.0.0.tar.gz, bacularis-web-7.0.0.tar.gz::https://github.com/bacularis/bacularis-web/archive/refs/tags/7.0.0.tar.gz, bacularis-api-7.0.0.tar.gz::https://github.com/bacularis/bacularis-api/archive/refs/tags/7.0.0.tar.gz, bacularis-common-7.0.0.tar.gz::https://github.com/bacularis/bacularis-common/archive/refs/tags/7.0.0.tar.gz, bacularis-external-7.0.0.tar.gz::https://bacularis.app/downloads/bacularis-external-7.0.0.tar.gz
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains standard patterns for ignoring build artifacts, source directories, and log files in an Arch Linux package repository. There are no signs of malicious activity, obfuscation, network requests, or dangerous commands. The content is consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/12] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
[1/12] Reviewing .SRCINFO, PKGBUILD, README.md...
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a README.md file describing the structure, installation, and features of a split AUR package for Bacularis. It contains only documentation text — no executable code, no network requests, no obfuscation, and no commands that would execute at build or install time. The mention of SKIP checksums in the template is a standard packaging practice (noted in the instructions as not a security issue). Descriptions of sudoers generation and pacman hooks are normal for packages that manage system permissions. There is no evidence of malicious or dangerous behavior; the content is consistent with ordinary AUR packaging documentation.
</details>
<evidence></evidence>
<summary>Documentation file, no executable content, safe.</summary>
</security_assessment>

[1/12] Reviewing .SRCINFO, PKGBUILD, README.md, bacularis-api.install...
[2/12] Reviewing .SRCINFO, PKGBUILD, bacularis-api.install...
+ Reviewed README.md. Status: SAFE -- Documentation file, no executable content, safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file listing sources, checksums, and dependencies for the bacularis package family. All sources point to the project&#x27;s official GitHub repository or its own website (bacularis.app), which is expected and consistent with the package&#x27;s stated purpose. While several checksums are set to &#x27;SKIP&#x27;, the instructions explicitly state that this is a normal practice for VCS sources and is not evidence of malicious behavior. There is no code in this file (it is declarative metadata), no network redirection to unknown hosts, no obfuscation, no executable commands, and no mechanism for exfiltration or backdoor installation. The file follows standard packaging conventions and does not introduce any supply-chain attack vector.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious code.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, PKGBUILD, bacularis-api.install, bacularis-api.tmpfiles...
[3/12] Reviewing PKGBUILD, bacularis-api.install, bacularis-api.tmpfiles...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious code.
LLM auditresponse for bacularis-api.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd tmpfiles.d configuration snippet. It defines directories with specific permissions and ownership for the Bacularis API, and copies a sample users configuration file into place. There are no network requests, code execution, obfuscation, or any other malicious behavior. All operations are standard packaging practices for setting up service directories and initial configuration.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d configuration, no security issues.</summary>
</security_assessment>

[3/12] Reviewing PKGBUILD, bacularis-api.install, bacularis-api.tmpfiles, bacularis-common.tmpfiles...
[4/12] Reviewing PKGBUILD, bacularis-api.install, bacularis-common.tmpfiles...
+ Reviewed bacularis-api.tmpfiles. Status: SAFE -- Standard tmpfiles.d configuration, no security issues.
LLM auditresponse for bacularis-api.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that performs routine package lifecycle operations.  
- `post_install` runs a helper binary (<code>/usr/bin/bacularis-sudoers-update</code>) shipped with the same package to generate sudoers rules, which is expected for a package that requires sudo privileges.  
- `post_upgrade` simply re-runs the install logic.  
- `post_remove` cleans up a generated sudoers file only if it appears to be managed by the package (by checking for a marker comment), preserving any administrator overrides.  

No obfuscation, network requests, unexpected file operations, or execution of untrusted content. The script only references files from its own package and follows standard AUR packaging patterns.  
</details>
<evidence></evidence>
<summary>Standard package lifecycle script; no malicious behavior.</summary>
</security_assessment>

[4/12] Reviewing PKGBUILD, bacularis-api.install, bacularis-common.tmpfiles, bacularis-nginx.conf...
[5/12] Reviewing PKGBUILD, bacularis-common.tmpfiles, bacularis-nginx.conf...
+ Reviewed bacularis-api.install. Status: SAFE -- Standard package lifecycle script; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. All source tarballs are fetched over HTTPS from the project&#39;s own GitHub repository and official download page. The `prepare()` function extracts archives, creates symlinks to standard system paths (`/var/lib/bacularis/`, `/var/log/bacularis/`, `/var/cache/bacularis/`), and removes mutable directories that are handled via tmpfiles.d — all expected behavior for a web application package. No suspicious commands (`curl|bash`, `eval`, base64 decoding, obfuscation) are present. The `sha256sums` for the five upstream tarballs are set to `SKIP`; while this is a trust/hygiene concern (the sums are meant to be filled before release), the instructions explicitly state that SKIP checksums alone do not constitute a malicious indicator. No evidence of data exfiltration, backdoors, or code execution from untrusted sources was found.
</details>
<evidence></evidence>
<summary>Standard AUR packaging, no malicious indicators found.</summary>
</security_assessment>

[6/12] Reviewing bacularis-common.tmpfiles, bacularis-nginx.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no malicious indicators found.
[6/12] Reviewing bacularis-common.tmpfiles, bacularis-nginx.conf, bacularis-php.ini.example...
LLM auditresponse for bacularis-php.ini.example:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration example for PHP settings related to the bacularis web interface for Bacula. It contains only standard PHP extension directives and memory/execution limits. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file poses no security threat.
</details>
<evidence></evidence>
<summary>Standard PHP configuration example, safe.</summary>
</security_assessment>

[6/12] Reviewing bacularis-common.tmpfiles, bacularis-nginx.conf, bacularis-php.ini.example, bacularis-sudoers-update...
[7/12] Reviewing bacularis-common.tmpfiles, bacularis-nginx.conf, bacularis-sudoers-update...
+ Reviewed bacularis-php.ini.example. Status: SAFE -- Standard PHP configuration example, safe.
LLM auditresponse for bacularis-common.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd-tmpfiles configuration file that creates working directories and caches for the bacularis web application. The permissions are set appropriately for a web server (http user). There is no malicious or suspicious content.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles config, no security issues.</summary>
</security_assessment>

[7/12] Reviewing bacularis-common.tmpfiles, bacularis-nginx.conf, bacularis-sudoers-update, bacularis-sudoers.hook...
[8/12] Reviewing bacularis-nginx.conf, bacularis-sudoers-update, bacularis-sudoers.hook...
+ Reviewed bacularis-common.tmpfiles. Status: SAFE -- Standard tmpfiles config, no security issues.
LLM auditresponse for bacularis-nginx.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Nginx server block configuration for the bacularis-web package. It listens only on the loopback interface (127.0.0.1:9097), restricts access to hidden files, and forwards PHP requests to php-fpm via a Unix socket. There are no signs of malicious activity such as obfuscated code, network requests, data exfiltration, or unexpected system modifications. The configuration follows typical AUR packaging practices for a web application.
</details>
<evidence></evidence>
<summary>Standard Nginx config for bacularis-web.</summary>
</security_assessment>

[8/12] Reviewing bacularis-nginx.conf, bacularis-sudoers-update, bacularis-sudoers.hook, bacularis-web.tmpfiles...
[9/12] Reviewing bacularis-sudoers-update, bacularis-sudoers.hook, bacularis-web.tmpfiles...
+ Reviewed bacularis-nginx.conf. Status: SAFE -- Standard Nginx config for bacularis-web.
LLM auditresponse for bacularis-sudoers.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook file that triggers the `/usr/bin/bacularis-sudoers-update` script after package transactions involving the `bacula-*` package group. The hook is used to recalculate sudoers permissions for the Bacularis API to match the currently installed Bacula components. No malicious or suspicious activity is present; the hook simply calls a package-provided executable as part of normal system administration.
</details>
<evidence>
</evidence>
<summary>Standard pacman hook for sudoers update.</summary>
</security_assessment>

[10/12] Reviewing bacularis-sudoers-update, bacularis-web.tmpfiles...
+ Reviewed bacularis-sudoers.hook. Status: SAFE -- Standard pacman hook for sudoers update.
LLM auditresponse for bacularis-web.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd-tmpfiles configuration file. It declaratively creates runtime directories and copies a sample configuration file into place. All paths are within standard system locations (/var/lib/bacularis, /var/log/bacularis, /usr/share/webapps/bacularis). There is no execution of arbitrary commands, no network access, no encoded or obfuscated content, and no deviation from standard packaging practices for setting up application state directories and default config files.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration; no security issues.</summary>
</security_assessment>

[11/12] Reviewing bacularis-sudoers-update...
+ Reviewed bacularis-web.tmpfiles. Status: SAFE -- Standard tmpfiles configuration; no security issues.
LLM auditresponse for bacularis-sudoers-update:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a routine AUR helper that dynamically generates sudoers rules for Bacula executables owned by installed packages. It strictly validates paths to known directories, checks ownership with pacman, avoids regenerating manually‑administered sudoers files by inspecting a marker, and validates syntax with `visudo` before installation. All data sources are local pacman queries; there are no network requests, obfuscated code, or dangerous operations beyond normal packaging tasks. The design is defensive and scoped to the package&#x27;s intended purpose.
</details>
<evidence></evidence>
<summary>Legitimate helper script for managing Bacula sudoers rules.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed bacularis-sudoers-update. Status: SAFE -- Legitimate helper script for managing Bacula sudoers rules.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,402
  Completion Tokens: 5,721
  Total Tokens: 43,123
  Total Cost: $0.004445
  Execution Time: 58.05 seconds

Final Status: SAFE


No issues found.
