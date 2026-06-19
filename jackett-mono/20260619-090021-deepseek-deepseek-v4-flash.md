---
package: jackett-mono
pkgver: 0.24.2079
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 100416
completion_tokens: 8305
total_tokens: 108721
cost: 0.01053234
execution_time: 93.21
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T09:00:21Z
file_verdicts:
  - file: Jackett.Binaries.Mono-0.24.2079.tar.gz
    status: skipped
    summary: "Skipping binary file: Jackett.Binaries.Mono-0.24.2079.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned upstream source; no malicious indicators.
  - file: jackett.service
    status: safe
    summary: Standard systemd service file; no malicious indicators.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking; no malicious content.
  - file: src/Jackett/Content/common.js
    status: safe
    summary: No suspicious content; standard URL parameter parsing function.
  - file: src/Jackett/Definitions/1337x.yml
    status: safe
    summary: Standard Jackett indexer config; no malicious behavior detected.
  - file: src/Jackett/install_service_systemd_mono.sh
    status: safe
    summary: Standard systemd service installer script, no malicious behavior detected.
  - file: src/Jackett/Content/libs/handlebars.min.js
    status: safe
    summary: Handlebars.js library with no malicious code.
  - file: src/Jackett/Content/libs/bootstrap-notify.js
    status: safe
    summary: Legitimate front-end library; no malicious code.
  - file: src/Jackett/Content/bootstrap/bootstrap.min.js
    status: safe
    summary: Standard Bootstrap 3.3.4 library; no malicious behavior detected.
  - file: src/Jackett/Content/libs/api.js
    status: safe
    summary: Normal API client code, no sign of malicious behavior.
  - file: src/Jackett/Content/custom.js
    status: safe
    summary: Standard frontend UI code for Jackett; no malicious behavior.
---

Cloning https://aur.archlinux.org/jackett-mono.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8069h1g1...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8069h1g1
Analyzing jackett-mono AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8069h1g1) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no commands in its global scope or `pkgver()` function that execute any code beyond variable assignments. All source URLs point to the official Jackett GitHub releases repository and use HTTPS. Checksums are provided and not set to `SKIP`. There are no obfuscated constructs, dangerous command substitutions, or network requests to unexpected hosts. The files downloaded (service, sysusers, tmpfiles, binary tarball) are legitimate upstream resources. During the `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` operations, only the global scope is evaluated and the source tarball is fetched and extracted; no `prepare()`, `build()`, or `package()` functions execute. This poses no risk.
</details>
<summary>Standard source fetches from official GitHub, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard source fetches from official GitHub, no dangerous top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Jackett.Binaries.Mono-0.24.2079.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed Jackett.Binaries.Mono-0.24.2079.tar.gz. Status: SKIPPED -- Skipping binary file: Jackett.Binaries.Mono-0.24.2079.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, straightforward packaging script for the Jackett mono binary release. It downloads the official tarball from the project's GitHub releases (pinned version with valid SHA256 checksums), installs the application files to `/usr/lib/jackett/`, and sets up systemd service, sysusers, and tmpfiles configuration files. There is no obfuscated code, no unexpected network requests, no dangerous commands (`eval`, `curl`, `wget`, `base64`), no extra `git pull` or `fetch` operations, and no manipulation of data outside the application's scope. The only network source is the upstream project's own release URL, with checksums provided for verification. This is exactly what a normal AUR package looks like.
</details>
<summary>Standard AUR PKGBUILD with pinned upstream source; no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned upstream source; no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 592 files available for selection; offering the 50 highest-priority to the model. 542 lower-priority file(s) were not offered.
LLM response for file selection:
jackett.service
src/Jackett/install_service_systemd_mono.sh
.nvchecker.toml
src/Jackett/Definitions/1337x.yml
src/Jackett/Content/common.js
src/Jackett/Content/custom.js
src/Jackett/Content/libs/api.js
src/Jackett/Content/bootstrap/bootstrap.min.js
src/Jackett/Content/libs/bootstrap-notify.js
src/Jackett/Content/libs/handlebars.min.js
Decided to review 10 additional files: jackett.service, src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/common.js, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js, src/Jackett/Content/libs/bootstrap-notify.js, src/Jackett/Content/libs/handlebars.min.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing jackett.service...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd_mono.sh...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml, src/Jackett/Content/common.js...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml, src/Jackett/Content/common.js, src/Jackett/Definitions/1337x.yml...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml, src/Jackett/Content/common.js, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml, src/Jackett/Content/common.js, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml, src/Jackett/Content/common.js, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml, src/Jackett/Content/common.js, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js, src/Jackett/Content/libs/bootstrap-notify.js...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml, src/Jackett/Content/common.js, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js, src/Jackett/Content/libs/bootstrap-notify.js, src/Jackett/Content/libs/handlebars.min.js...
LLM auditresponse for jackett.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the Jackett daemon. It defines a service that runs the Jackett console application under Mono with appropriate flags, running as a dedicated system user/group. All paths (`/usr/lib/jackett`, `/var/lib/jackett`) are typical for an AUR package's installed files. There are no suspicious network requests, encoded commands, file operations, or deviations from normal packaging practices. It is a straightforward service configuration.
</details>
<summary>Standard systemd service file; no malicious indicators.</summary>
</security_assessment>

[1/10] Reviewing src/Jackett/install_service_systemd_mono.sh, .nvchecker.toml, src/Jackett/Content/common.js, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js, src/Jackett/Content/libs/bootstrap-notify.js, src/Jackett/Content/libs/handlebars.min.js...
+ Reviewed jackett.service. Status: SAFE -- Standard systemd service file; no malicious indicators.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for `nvchecker`, a tool used to check for new upstream releases. It specifies the package name, source type (`git`), the official GitHub repository URL (`https://github.com/Jackett/Jackett`), a version prefix (`v`), and a regex matching typical semantic versioning tags. There is no executable code, no network requests initiated by the file itself, and no obfuscation or unusual operations. This is a standard and benign packaging helper file.
</details>
<summary>
Standard nvchecker config for version tracking; no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/Jackett/install_service_systemd_mono.sh, src/Jackett/Content/common.js, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js, src/Jackett/Content/libs/bootstrap-notify.js, src/Jackett/Content/libs/handlebars.min.js...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking; no malicious content.
LLM auditresponse for common.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `common.js` contains a single function `getUrlParams()` that parses URL query parameters from the browser&apos;s location. This is standard client-side JavaScript utility code. There are no network requests, obfuscation, suspicious commands, system file operations, or any behavior that deviates from benign packaging practices. The code is transparent and serves its stated purpose.
</details>
<summary>No suspicious content; standard URL parameter parsing function.</summary>
</security_assessment>

[3/10] Reviewing src/Jackett/install_service_systemd_mono.sh, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js, src/Jackett/Content/libs/bootstrap-notify.js, src/Jackett/Content/libs/handlebars.min.js...
+ Reviewed src/Jackett/Content/common.js. Status: SAFE -- No suspicious content; standard URL parameter parsing function.
LLM auditresponse for 1337x.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a YAML configuration file for the Jackett indexer proxy. It defines how to connect to and scrape the 1337x public torrent site. The content is entirely static configuration: metadata, domain lists, category mappings, search path templates, and data extraction selectors/filters. There are no executable commands, no encoded or obfuscated payloads, no attempts to execute system commands or fetch remote content outside the application's expected behavior. The file uses Go template syntax within strings (e.g., `{{ .Keywords }}`) which is standard for Jackett indexer definitions. All network destinations (1337x domains, iTorrents.org) are the indexer's own upstream services. The file does not deviate from normal packaging practices for a Jackett indexer.
</details>
<summary>Standard Jackett indexer config; no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/Jackett/install_service_systemd_mono.sh, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js, src/Jackett/Content/libs/bootstrap-notify.js, src/Jackett/Content/libs/handlebars.min.js...
+ Reviewed src/Jackett/Definitions/1337x.yml. Status: SAFE -- Standard Jackett indexer config; no malicious behavior detected.
LLM auditresponse for install_service_systemd_mono.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard post-installation helper that sets up a systemd service for the Jackett application. It performs the following expected packaging tasks: verifying root privileges, checking for the running service, stopping it, determining the installation directory from the script's own location, verifying the presence of Mono and the Jackett binary, and writing a systemd unit file to `/etc/systemd/system/` followed by daemon-reload, enable, and start. All operations are confined to the package's own files and system service management. There are no network requests, no encoded or obfuscated code, no execution of untrusted content, and no manipulation of files outside the application's scope. The use of `--debug` with mono is a performance setting, not a security issue. The script is consistent with legitimate packaging practices.
</details>
<summary>
Standard systemd service installer script, no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js, src/Jackett/Content/libs/bootstrap-notify.js, src/Jackett/Content/libs/handlebars.min.js...
+ Reviewed src/Jackett/install_service_systemd_mono.sh. Status: SAFE -- Standard systemd service installer script, no malicious behavior detected.
LLM auditresponse for handlebars.min.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minified copy of Handlebars.js v3.0.3, a widely-used JavaScript templating library. The code is standard for this library and includes its parser, compiler, and runtime. No obfuscated strings, network requests, file system access, or system command executions are present beyond the normal template compilation and rendering functionality. The minification is typical for distribution. There are no signs of supply-chain compromise or malicious injection. The file behaves as expected for the upstream Handlebars project.
</details>
<summary>Handlebars.js library with no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js, src/Jackett/Content/libs/bootstrap-notify.js...
+ Reviewed src/Jackett/Content/libs/handlebars.min.js. Status: SAFE -- Handlebars.js library with no malicious code.
LLM auditresponse for bootstrap-notify.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an unmodified copy of the Bootstrap Notify library (v3.0.2) by Robert McIntosh. It is a standard jQuery plugin that creates Growl-like notification alerts in the browser. The code is clean, well-formatted, and contains no obfuscation, network requests, system commands, or any behavior outside its intended DOM manipulation purpose. The only base64 string present is a 1x1 transparent GIF used as a CSS background image placeholder — a common, benign pattern. There are no signs of supply-chain injection, data exfiltration, or backdoors.
</details>
<summary>Legitimate front-end library; no malicious code.</summary>
</security_assessment>

[7/10] Reviewing src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/bootstrap/bootstrap.min.js...
+ Reviewed src/Jackett/Content/libs/bootstrap-notify.js. Status: SAFE -- Legitimate front-end library; no malicious code.
LLM auditresponse for bootstrap.min.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the standard minified Bootstrap v3.3.4 JavaScript library, a widely used front-end framework. It contains only expected UI component logic (alerts, buttons, carousels, modals, tooltips, popovers, etc.) with no evidence of suspicious network requests, obfuscated code, file system manipulation, or any behavior deviating from its documented purpose. No commands like `curl`, `wget`, `eval`, `base64`, or `exec` are present. The minified code is consistent with Bootstrap's official release and does not exhibit any traits of a supply-chain attack.
</details>
<summary>Standard Bootstrap 3.3.4 library; no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js...
+ Reviewed src/Jackett/Content/bootstrap/bootstrap.min.js. Status: SAFE -- Standard Bootstrap 3.3.4 library; no malicious behavior detected.
LLM auditresponse for api.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript API client for a web application. It uses jQuery AJAX methods to interact with a local API (root path "/api") and does not contain any suspicious network calls, obfuscation, or dangerous commands. The code is consistent with normal frontend development practices for jackett-mono, an AUR package for the Jackett indexer.
</details>
<summary>
Normal API client code, no sign of malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/Jackett/Content/custom.js...
+ Reviewed src/Jackett/Content/libs/api.js. Status: SAFE -- Normal API client code, no sign of malicious behavior.
LLM auditresponse for custom.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `custom.js` is a standard frontend JavaScript file for the Jackett application. It implements the user interface for managing indexers, searching, configuration, and displaying results. All network requests are directed to the local Jackett server (via `api.root` derived from the page path) using standard AJAX calls. There is no obfuscated code, no encoding/decoding of malicious payloads, no downloads from unexpected hosts, and no attempts to exfiltrate system files or credentials. The code constructs GitHub issue URLs with error details but only as clickable links for user support. LocalStorage is used only for saving search presets – a benign client-side feature. The `document.execCommand('copy')` is a standard clipboard operation. There is no evidence of supply chain injection or any behavior beyond what the Jackett application legitimately does. The file is safe.
</details>
<summary>Standard frontend UI code for Jackett; no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Jackett/Content/custom.js. Status: SAFE -- Standard frontend UI code for Jackett; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Jackett.Binaries.Mono-0.24.2079.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 100,416
  Completion Tokens: 8,305
  Total Tokens: 108,721
  Total Cost: $0.010532
  Execution Time: 93.21 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-jackett-mono.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8069h1g1/Jackett.Binaries.Mono-0.24.2079.tar.gz: [SKIPPED] Skipping binary file: Jackett.Binaries.Mono-0.24.2079.tar.gz
