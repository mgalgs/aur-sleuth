---
package: specify-cli
pkgver: 1.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 60274
completion_tokens: 7543
total_tokens: 67817
cost: 0.00399860160
execution_time: 124.5
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-23T04:08:13Z
file_verdicts:
  - file: v1.0.1.tar.gz
    status: skipped
    summary: "Skipping binary file: v1.0.1.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
  - file: src/spec-kit-1.0.1/src/specify_cli/_download_security.py
    status: safe
    summary: Secure download and extraction helper module.
  - file: src/spec-kit-1.0.1/src/specify_cli/_github_http.py
    status: safe
    summary: Legitimate GitHub API helper; no signs of malicious behavior.
  - file: src/spec-kit-1.0.1/src/specify_cli/bundler/services/installer.py
    status: safe
    summary: Standard installation logic; no malicious code found.
  - file: src/spec-kit-1.0.1/src/specify_cli/authentication/github.py
    status: safe
    summary: Benign authentication helper, no security issues.
  - file: src/spec-kit-1.0.1/src/specify_cli/bundler/services/packager.py
    status: safe
    summary: Packaging helper is confined and benign; no signs of malicious behavior.
  - file: src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py
    status: safe
    summary: Legitimate authentication module, no malicious code found.
  - file: src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py
    status: safe
    summary: Standard application resolver code, no security issues.
  - file: src/spec-kit-1.0.1/src/specify_cli/integrations/_helpers.py
    status: safe
    summary: Standard internal utility module, no malicious content.
  - file: src/spec-kit-1.0.1/src/specify_cli/integrations/_install_commands.py
    status: safe
    summary: No malicious code found; file is a standard integration handler.
  - file: src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py
    status: safe
    summary: Standard application runtime helper, no malicious code.
---

Cloning https://aur.archlinux.org/specify-cli.git...
Cloned specify-cli
Analyzing specify-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations and function definitions. The global scope (which is executed when sourcing the PKGBUILD) consists solely of safe assignments—no command substitutions, no `eval`, no `curl`/`wget` invocations, and no `pkgver()` function that could execute code. The `source` array points to a pinned version tarball from the official GitHub repository (`https://github.com/github/spec-kit/archive/refs/tags/v1.0.1.tar.gz`), and a valid `b2sums` checksum is provided. The `build()` and `package()` functions are not executed due to the `--nobuild` and `--noprepare` flags, so they are out of scope for this gate. There is no malicious code that would execute during source fetching or PKGBUILD parsing.
</details>
<summary>PKGBUILD sourcing and source fetch are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD sourcing and source fetch are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing v1.0.1.tar.gz...
[0/2] Reviewing v1.0.1.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed v1.0.1.tar.gz. Status: SKIPPED -- Skipping binary file: v1.0.1.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward build recipe for the `specify-cli` Python package from the legitimate upstream GitHub repository `github.com/github/spec-kit`. The source is pinned to a specific release tarball (`v1.0.1`) with a valid BLAKE2 checksum — no `SKIP` or missing integrity verification. The build and package functions use only standard tools (`python -m build`, `python -m installer`, `install`) and install typical documentation and license files. There are no suspicious network requests, no obfuscated commands, no unsafe file operations, and no deviation from normal AUR packaging practices.
</details>
<summary>
Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 538 files available for selection; offering the 50 highest-priority to the model. 350 lower-priority file(s) were not offered.
LLM response for file selection:
src/spec-kit-1.0.1/src/specify_cli/_github_http.py
src/spec-kit-1.0.1/src/specify_cli/_download_security.py
src/spec-kit-1.0.1/src/specify_cli/authentication/github.py
src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py
src/spec-kit-1.0.1/src/specify_cli/bundler/services/installer.py
src/spec-kit-1.0.1/src/specify_cli/bundler/services/packager.py
src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py
src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py
src/spec-kit-1.0.1/src/specify_cli/integrations/_install_commands.py
src/spec-kit-1.0.1/src/specify_cli/integrations/_helpers.py
Decided to review 10 additional files: src/spec-kit-1.0.1/src/specify_cli/_github_http.py, src/spec-kit-1.0.1/src/specify_cli/_download_security.py, src/spec-kit-1.0.1/src/specify_cli/authentication/github.py, src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/installer.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/packager.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py, src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py, src/spec-kit-1.0.1/src/specify_cli/integrations/_install_commands.py, src/spec-kit-1.0.1/src/specify_cli/integrations/_helpers.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/_github_http.py...
[0/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/_github_http.py, src/spec-kit-1.0.1/src/specify_cli/authentication/github.py...
[0/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/_github_http.py, src/spec-kit-1.0.1/src/specify_cli/authentication/github.py, src/spec-kit-1.0.1/src/specify_cli/_download_security.py...
LLM auditresponse for _download_security.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a security-focused utility module for bounded downloads and safe archive extraction. It implements numerous defensive measures: size limits on downloads and ZIP/tar members, path traversal prevention, validation of archive formats, rejections of ZIP64, symlinks, hardlinks, and conflicting paths. All network-related checks (loopback detection, HTTPS enforcement, redirect safety) follow standard security practices. There is no obfuscation, no execution of external commands, no data exfiltration, and no unexpected behavior. The code is well-documented and consistent with a legitimate security hardening library.
</details>
<summary>Secure download and extraction helper module.</summary>
</security_assessment>

[0/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/_github_http.py, src/spec-kit-1.0.1/src/specify_cli/authentication/github.py, src/spec-kit-1.0.1/src/specify_cli/_download_security.py, src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py...
[1/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/_github_http.py, src/spec-kit-1.0.1/src/specify_cli/authentication/github.py, src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/_download_security.py. Status: SAFE -- Secure download and extraction helper module.
LLM auditresponse for _github_http.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_github_http.py` is a helper module for making authenticated HTTP requests to GitHub and resolving release asset download URLs. It reads `GITHUB_TOKEN` or `GH_TOKEN` from the environment and attaches a `Bearer` authorization header only to requests targeting known GitHub-owned hostnames (`github.com`, `api.github.com`, `raw.githubusercontent.com`, `codeload.github.com`), preventing credential leakage. The `resolve_github_release_asset_api_url` function translates browser release-download URLs into REST API asset URLs, with a GHES allowlist (`github_hosts`) to prevent SSRF to arbitrary hosts. It handles malformed URLs gracefully by returning `None` rather than raising exceptions. There is no obfuscated code, no unexpected network requests to non-GitHub hosts, no file system manipulation beyond the application's scope, and no execution of arbitrary code. The module is consistent with legitimate packaging practices for a GitHub-interacting CLI tool.
</details>
<summary>Legitimate GitHub API helper; no signs of malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/authentication/github.py, src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/_github_http.py. Status: SAFE -- Legitimate GitHub API helper; no signs of malicious behavior.
[2/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/authentication/github.py, src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/installer.py...
LLM auditresponse for installer.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `installer.py` contains standard installation logic for a package management system. It defines classes and functions for installing and removing bundles of components using a primitive installer adapter. There is no obfuscated code, no network requests (curl, wget), no execution of downloaded content, no eval, and no suspicious file operations outside the project root. The code is well-documented and follows typical patterns for idempotent installation with rollback. No evidence of supply chain attack or malicious behavior.
</details>
<summary>Standard installation logic; no malicious code found.</summary>
</security_assessment>

[3/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/authentication/github.py, src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/bundler/services/installer.py. Status: SAFE -- Standard installation logic; no malicious code found.
[3/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/authentication/github.py, src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/packager.py...
LLM auditresponse for github.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a straightforward Python module that defines a `GitHubAuth` class for generating Bearer token authorization headers. It contains no network operations, no encoded or obfuscated code, no file system modifications, and no execution of external content. The code is minimal, transparent, and serves only the stated purpose of providing an authentication helper for the GitHub API. No signs of malicious or suspicious behavior are present.
</details>
<summary>Benign authentication helper, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/packager.py...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/authentication/github.py. Status: SAFE -- Benign authentication helper, no security issues.
[4/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/packager.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py...
LLM auditresponse for packager.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward packaging utility that zips a bundle directory into a versioned artifact. All file reads are confined to the bundle directory via `ensure_within()` checks and `os.walk(..., followlinks=False)`, and it explicitly skips symlinked files and directories to prevent path-escaping. The code writes only a `.zip` artifact into the configured output directory, and it refuses to build when the manifest is invalid or when required metadata files are missing.

There is no evidence of malicious behavior: no network requests, no execution of downloaded content, no obfuscated code, no data exfiltration, and no tampering with files outside the bundle scope. The fixed zip timestamps and deterministic file ordering are reproducibility enhancements, not security risks. The artifact-regex logic simply prevents previously built artifacts from being re-packaged. This is consistent with normal packaging practices and poses no supply-chain threat.
</details>
<summary>Packaging helper is confined and benign; no signs of malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/bundler/services/packager.py. Status: SAFE -- Packaging helper is confined and benign; no signs of malicious behavior.
[5/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py, src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py...
LLM auditresponse for azure_devops.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `azure_devops.py` is a standard authentication provider module for the `specify-cli` application. It implements four Azure DevOps authentication schemes using official Microsoft endpoints and the Azure CLI. The code includes security-conscious measures: it validates that the `az` executable path is absolute before executing it (mitigating against `az.cmd` hijacking on Windows), it rejects HTTP redirects during OAuth2 token requests to prevent credential leakage, and it uses bounded reads for network responses. There are no obfuscated strings, suspicious network destinations, backdoors, or data exfiltration attempts. All behavior is consistent with the application’s stated purpose of authenticating against Azure DevOps.
</details>
<summary>Legitimate authentication module, no malicious code found.</summary>
</security_assessment>

[5/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py, src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py, src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py, src/spec-kit-1.0.1/src/specify_cli/integrations/_install_commands.py...
[6/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py, src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py, src/spec-kit-1.0.1/src/specify_cli/integrations/_install_commands.py...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/authentication/azure_devops.py. Status: SAFE -- Legitimate authentication module, no malicious code found.
LLM auditresponse for resolver.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the upstream `specify-cli` application's source code, implementing a resolver that expands bundle manifests into install plans. It contains only standard Python logic: data classes, validation of manifest structure, enforcement of version and integration constraints, and warnings for missing tools/MCP servers. There are no network requests, obfuscated code, dangerous system calls, or any file operations beyond reading a `bundle.yml` from a given directory path. Nothing in this code deviates from normal application functionality or packaging practices.
</details>
<summary>Standard application resolver code, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py, src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py, src/spec-kit-1.0.1/src/specify_cli/integrations/_install_commands.py, src/spec-kit-1.0.1/src/specify_cli/integrations/_helpers.py...
[7/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py, src/spec-kit-1.0.1/src/specify_cli/integrations/_install_commands.py, src/spec-kit-1.0.1/src/specify_cli/integrations/_helpers.py...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/bundler/services/resolver.py. Status: SAFE -- Standard application resolver code, no security issues.
LLM auditresponse for _helpers.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_helpers.py` is a standard internal utility module for the `specify-cli` package. It contains helper functions for reading/writing integration configuration files (`.specify/integration.json` and `init-options.json`), parsing CLI options, resolving script types, and managing extension/preset registration. All operations are confined to the project's own `.specify` directory and standard Python library calls. There are no network requests, no obfuscated code, no dangerous system commands, no exfiltration of data, and no backdoors. The code is well-structured and follows normal Python packaging practices. No evidence of malicious behavior or supply chain attack was found.
</details>
<summary>Standard internal utility module, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py, src/spec-kit-1.0.1/src/specify_cli/integrations/_install_commands.py...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/integrations/_helpers.py. Status: SAFE -- Standard internal utility module, no malicious content.
LLM auditresponse for _install_commands.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_install_commands.py` contains CLI command handlers for installing and uninstalling integrations (e.g., Claude, Copilot) in a project managed by the `specify-cli` tool. The code performs standard packaging operations: reading/writing JSON configuration files, installing shared infrastructure, and managing integration manifests. There is no evidence of malicious behavior such as data exfiltration, downloading/executing code from unexpected hosts, obfuscated commands, or system tampering outside the application's scope. The only file operations occur within the project's `.specify/` directory, and the script is consistent with normal CLI tool design.
</details>
<summary>No malicious code found; file is a standard integration handler.</summary>
</security_assessment>

[9/10] Reviewing src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/integrations/_install_commands.py. Status: SAFE -- No malicious code found; file is a standard integration handler.
LLM auditresponse for integration_runtime.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `integration_runtime.py` implements standard runtime helper functions for managing integration command options, settings, and invoke separators. All operations are local to the application's internal state (dictionaries and function calls) and do not perform any network requests, file I/O, system modifications, or execute external commands. The code is clean, well-structured, and free of obfuscation or dangerous patterns. No supply-chain attack indicators are present.
</details>
<summary>Standard application runtime helper, no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/spec-kit-1.0.1/src/specify_cli/integration_runtime.py. Status: SAFE -- Standard application runtime helper, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: v1.0.1.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 60,274
  Completion Tokens: 7,543
  Total Tokens: 67,817
  Total Cost: $0.003999
  Execution Time: 124.50 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ei5c5hpf/v1.0.1.tar.gz: [SKIPPED] Skipping binary file: v1.0.1.tar.gz
