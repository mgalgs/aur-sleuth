---
package: pacvis-git
pkgver: 0.2.7.r12.g34f7494
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 203749
completion_tokens: 8936
total_tokens: 212685
cost: 0.01994589
execution_time: 178.72
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T08:32:07Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: src/pacvis/setup.py
    status: safe
    summary: Standard Python setup.py with no malicious content.
  - file: src/pacvis/pacvis/__init__.py
    status: safe
    summary: Empty file, no content to analyze.
  - file: "src/pacvis/pacvis@.service"
    status: safe
    summary: Clean systemd unit; no security issues.
  - file: src/pacvis/pacvis/static/pacvis.js
    status: safe
    summary: Safe client-side JS for package visualization.
  - file: src/pacvis/pacvis/pacvis.py
    status: safe
    summary: Legitimate package visualization tool, no security issues.
  - file: src/pacvis/PKGBUILD
    status: safe
    summary: A standard AUR PKGBUILD with no malicious code found.
  - file: src/pacvis/pacvis/infos.py
    status: safe
    summary: Legitimate dependency analysis code; no security issues.
  - file: src/pacvis/pacvis/templates/index.template.html
    status: safe
    summary: Standard HTML template; no malicious behavior found.
  - file: src/pacvis/pacvis/console.py
    status: safe
    summary: Benign logging utility with no malicious behavior.
  - file: src/pacvis/pacvis/static/vis-network.min.js
    status: safe
    summary: Standard vis.js library bundle; no malicious code found.
---

Cloning https://aur.archlinux.org/pacvis-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jlaqhix6...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jlaqhix6
Analyzing pacvis-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jlaqhix6) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard for a VCS package from GitHub. The source array points to the upstream repository (`git+https://github.com/farseerfc/pacvis.git`). The global scope contains only variable assignments and function definitions. The `pkgver()` function runs only local git commands (`git describe`, `git rev-list`, `git rev-parse`) on the already cloned repository; it does not perform any network requests or execute untrusted content. There is no obfuscated code, no eval, no curl/wget to unexpected hosts, and no other dangerous operations. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the source via git clone and source the PKGBUILD, which is safe.
</details>
<summary>Standard AUR VCS PKGBUILD, no malicious code during fetch or parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR VCS PKGBUILD, no malicious code during fetch or parsing.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a VCS (git) package. It clones the upstream repository from `https://github.com/farseerfc/pacvis.git`, builds a Python wheel using `python -m build`, and installs the built wheel along with a systemd service file. There are no obfuscated commands, unexpected network connections, dangerous operations (e.g., `eval`, `curl|bash`), or modifications to system files outside the package's scope. The `sha256sums` are set to `SKIP`, which is normal and expected for VCS sources. No evidence of a supply-chain attack or malicious behavior was found.
</details>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/pacvis/PKGBUILD
src/pacvis/setup.py
src/pacvis/pacvis/__init__.py
src/pacvis/pacvis/console.py
src/pacvis/pacvis/infos.py
src/pacvis/pacvis/pacvis.py
src/pacvis/pacvis@.service
src/pacvis/pacvis/static/pacvis.js
src/pacvis/pacvis/static/vis-network.min.js
src/pacvis/pacvis/templates/index.template.html
Decided to review 10 additional files: src/pacvis/PKGBUILD, src/pacvis/setup.py, src/pacvis/pacvis/__init__.py, src/pacvis/pacvis/console.py, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/pacvis.py, src/pacvis/pacvis@.service, src/pacvis/pacvis/static/pacvis.js, src/pacvis/pacvis/static/vis-network.min.js, src/pacvis/pacvis/templates/index.template.html
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pacvis/PKGBUILD...
[0/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/setup.py...
[0/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/setup.py, src/pacvis/pacvis/console.py...
[0/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/setup.py, src/pacvis/pacvis/console.py, src/pacvis/pacvis/__init__.py...
[0/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/setup.py, src/pacvis/pacvis/console.py, src/pacvis/pacvis/__init__.py, src/pacvis/pacvis@.service...
[0/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/setup.py, src/pacvis/pacvis/console.py, src/pacvis/pacvis/__init__.py, src/pacvis/pacvis@.service, src/pacvis/pacvis/infos.py...
[0/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/setup.py, src/pacvis/pacvis/console.py, src/pacvis/pacvis/__init__.py, src/pacvis/pacvis@.service, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/pacvis.py...
[0/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/setup.py, src/pacvis/pacvis/console.py, src/pacvis/pacvis/__init__.py, src/pacvis/pacvis@.service, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/pacvis.py, src/pacvis/pacvis/static/pacvis.js...
[0/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/setup.py, src/pacvis/pacvis/console.py, src/pacvis/pacvis/__init__.py, src/pacvis/pacvis@.service, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/pacvis.py, src/pacvis/pacvis/static/pacvis.js, src/pacvis/pacvis/templates/index.template.html...
[0/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/setup.py, src/pacvis/pacvis/console.py, src/pacvis/pacvis/__init__.py, src/pacvis/pacvis@.service, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/pacvis.py, src/pacvis/pacvis/static/pacvis.js, src/pacvis/pacvis/templates/index.template.html, src/pacvis/pacvis/static/vis-network.min.js...
LLM auditresponse for setup.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Python package setup script using setuptools. It declares package metadata, dependencies (tornado, pyalpm), console entry points, and static file includes. There is no obfuscated code, no network requests, no dangerous system commands, and no deviation from normal packaging practices. The script is benign and matches expected upstream behavior.
</details>
<summary>Standard Python setup.py with no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/pacvis/console.py, src/pacvis/pacvis/__init__.py, src/pacvis/pacvis@.service, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/pacvis.py, src/pacvis/pacvis/static/pacvis.js, src/pacvis/pacvis/templates/index.template.html, src/pacvis/pacvis/static/vis-network.min.js...
+ Reviewed src/pacvis/setup.py. Status: SAFE -- Standard Python setup.py with no malicious content.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is empty and contains no code or instructions. There is no potential for malicious behavior.
</details>
<summary>Empty file, no content to analyze.</summary>
</security_assessment>

[2/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/pacvis/console.py, src/pacvis/pacvis@.service, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/pacvis.py, src/pacvis/pacvis/static/pacvis.js, src/pacvis/pacvis/templates/index.template.html, src/pacvis/pacvis/static/vis-network.min.js...
+ Reviewed src/pacvis/pacvis/__init__.py. Status: SAFE -- Empty file, no content to analyze.
LLM auditresponse for pacvis@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the `pacvis` tool, which visualizes the pacman local database. It defines a service that runs `/usr/bin/pacvis -p %i` with a memory limit (`LimitAS=400M`) and restart behavior (`RestartSec=2`, `Restart=always`). The `After=network.target` is a common dependency. There is no obfuscated code, no network requests or downloads, no file manipulation beyond normal service execution, and no indication of malicious intent. The file follows standard AUR packaging practices for a service unit. The `&gt;` in the comment is an HTML‑escaped greater‑than sign and is harmless.
</details>
<summary>
Clean systemd unit; no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/pacvis/console.py, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/pacvis.py, src/pacvis/pacvis/static/pacvis.js, src/pacvis/pacvis/templates/index.template.html, src/pacvis/pacvis/static/vis-network.min.js...
+ Reviewed src/pacvis/pacvis@.service. Status: SAFE -- Clean systemd unit; no security issues.
LLM auditresponse for pacvis.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pacvis.js` contains standard client-side JavaScript for a package dependency graph visualization tool. It implements functions for formatting file sizes, searching packages using string similarity, highlighting connected nodes in a graph, and displaying package information. No suspicious network requests, obfuscated code, dangerous function calls (like `eval` or `exec`), file system operations, or attempts to exfiltrate data are present. The code properly credits an external MIT-licensed string similarity library. It poses no supply-chain security risks.
</details>
<summary>Safe client-side JS for package visualization.</summary>
</security_assessment>

[4/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/pacvis/console.py, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/pacvis.py, src/pacvis/pacvis/templates/index.template.html, src/pacvis/pacvis/static/vis-network.min.js...
+ Reviewed src/pacvis/pacvis/static/pacvis.js. Status: SAFE -- Safe client-side JS for package visualization.
LLM auditresponse for pacvis.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `pacvis.py` is a Tornado web application that visualizes local Arch Linux package dependency information. It reads the local package database via the `infos` module, computes dependency graphs, and renders an HTML page. All operations are standard for this type of tool:

- It listens only on localhost (default) or a user-specified host, and opens a browser only if the `--browser` flag is given.
- It does not make any external network requests, download or execute code from remote sources, or perform obfuscated operations.
- There is no usage of `eval`, `base64`, `curl`, `wget`, or any suspicious file/system manipulation beyond reading the package database.
- The code is straightforward and matches the expected functionality of the `pacvis` package.

The HTML entity encoding (`&quot;`, `&apos;`) in the provided file content is an artifact of XML escaping and does not represent actual obfuscation. No supply-chain attack or malicious behavior is present.
</details>
<summary>Legitimate package visualization tool, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/pacvis/PKGBUILD, src/pacvis/pacvis/console.py, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/templates/index.template.html, src/pacvis/pacvis/static/vis-network.min.js...
+ Reviewed src/pacvis/pacvis/pacvis.py. Status: SAFE -- Legitimate package visualization tool, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for `pacvis-git`. It clones the upstream source from the project's own GitHub repository, builds using `python setup.py build`, and installs via `python setup.py install`. There are no suspicious network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or any file operations outside the expected build and install process. The unpinned VCS source and SKIP checksum are normal for `-git` packages and not evidence of malice. No exfiltration, backdoor, or supply-chain attack indicators are present.
</details>
<summary>A standard AUR PKGBUILD with no malicious code found.</summary>
</security_assessment>

[6/10] Reviewing src/pacvis/pacvis/console.py, src/pacvis/pacvis/infos.py, src/pacvis/pacvis/templates/index.template.html, src/pacvis/pacvis/static/vis-network.min.js...
+ Reviewed src/pacvis/PKGBUILD. Status: SAFE -- A standard AUR PKGBUILD with no malicious code found.
LLM auditresponse for infos.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the `pacvis-git` package, which provides a visualization tool for Arch Linux package dependencies. The code reads the local pacman database and sync databases via `pyalpm` and `pycman` — standard libraries for interacting with pacman. It analyzes installed packages, resolves dependencies, computes dependency sizes, and performs topological sorting. All operations are internal to the package management system and are consistent with the stated purpose of the application.

No malicious patterns are present: there are no obfuscated commands, no use of `eval`, `exec`, `base64`, `curl`, `wget`, or any network requests initiated by this code. File access is limited to `/etc/pacman.conf` (expected for pacman tools). No data exfiltration, backdoors, or tampering with system files is performed. The included `test_circle_detection` function is a developer utility that only prints to stdout.

The code is clean, well-structured, and follows expected packaging practices. It does not contain any injected or suspicious behavior.
</details>
<summary>Legitimate dependency analysis code; no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/pacvis/pacvis/console.py, src/pacvis/pacvis/templates/index.template.html, src/pacvis/pacvis/static/vis-network.min.js...
+ Reviewed src/pacvis/pacvis/infos.py. Status: SAFE -- Legitimate dependency analysis code; no security issues.
LLM auditresponse for index.template.html:
<security_assessment>
  <decision>SAFE</decision>
  <details>
The file is an HTML template for the PacVis web application, which visualizes Arch Linux package dependency graphs. It contains standard front-end code using vis.js and Material Design Lite libraries, with template expressions (Jinja2-like) for server-side rendering. All JavaScript is client-side logic for graph rendering and user interaction. There are no suspicious network requests, obfuscated code, system file operations, or dangerous commands (e.g., eval, base64, curl). The file only references its own static assets from a `/static/` path. This is consistent with the package's stated purpose and does not include any supply-chain attack indicators.
  </details>
  <summary>
  Standard HTML template; no malicious behavior found.
  </summary>
</security_assessment>

[8/10] Reviewing src/pacvis/pacvis/console.py, src/pacvis/pacvis/static/vis-network.min.js...
+ Reviewed src/pacvis/pacvis/templates/index.template.html. Status: SAFE -- Standard HTML template; no malicious behavior found.
LLM auditresponse for console.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple console/logging utility for printing timestamped messages to stderr and a log file. It does not perform any network requests, execute external commands, read or write sensitive files, or contain obfuscated code. The only file operation is opening a file in append mode, and the path is hardcoded to `/dev/null`, which is harmless. The unused `import os` is a minor code hygiene issue but not indicative of malicious intent. There is no evidence of a supply chain attack or any behavior that deviates from standard packaging practices.
</details>
<summary>Benign logging utility with no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/pacvis/pacvis/static/vis-network.min.js...
+ Reviewed src/pacvis/pacvis/console.py. Status: SAFE -- Benign logging utility with no malicious behavior.
LLM auditresponse for vis-network.min.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vis-network.min.js` is a standard minified build of the vis.js network visualization library (version 4.16.1). It contains typical library code for graph rendering, physics simulation, and user interaction. No suspicious patterns were found: there are no calls to `curl`, `wget`, `eval`, `base64` decoding, or any obfuscated code. The only network-related operation is image loading for node icons, which is expected library behavior. No data exfiltration, backdoors, or unusual system modifications are present. The file appears to be a genuine copy of the upstream vis.js library, consistent with the package's stated purpose.
</details>
<summary>Standard vis.js library bundle; no malicious code found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pacvis/pacvis/static/vis-network.min.js. Status: SAFE -- Standard vis.js library bundle; no malicious code found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 203,749
  Completion Tokens: 8,936
  Total Tokens: 212,685
  Total Cost: $0.019946
  Execution Time: 178.72 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-pacvis-git.txt
Final Status: SAFE


No issues found.
