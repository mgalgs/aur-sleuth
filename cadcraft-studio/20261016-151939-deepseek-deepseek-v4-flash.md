---
package: cadcraft-studio
pkgver: 0.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24345
completion_tokens: 8709
total_tokens: 33054
cost: 0.003800433
execution_time: 64.96
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T15:19:39Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: nvchecker config pointing to upstream git repo; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
  - file: cadcraft-studio.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
  - file: site-bootstrap.php
    status: safe
    summary: Local JSON catalog reader with no network, exec, or obfuscation; standard packaging helper logic.
  - file: site-edition.php
    status: safe
    summary: Local JSON-reading helper functions; no malicious, network, or obfuscated behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; pinned upstream sources, normal build and install steps.
---

Materializing cadcraft-studio from local mirror...
Materialized cadcraft-studio
Analyzing cadcraft-studio AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD contains only standard variable and array definitions, loops that append to the `source` array, and comments. No commands (e.g., `eval`, `curl`, `wget`, `bash`) are executed at source time. All function definitions (`_srcenv`, `_site`, `_shelljson`, `_icon`, `prepare`, `build`, `package`) are passive and only executed when explicitly called later during build phases. Therefore, running `makepkg --printsrcinfo` to source this PKGBUILD does not trigger any malicious activity.</details>
<evidence></evidence>
<summary>No top-level dangerous code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code found.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing PKGBUILD...
[0/6] Reviewing PKGBUILD, .SRCINFO...
[0/6] Reviewing PKGBUILD, .SRCINFO, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool that checks for new upstream versions of software. It simply declares the package name (`cadcraft-studio`), the source type (`git`), the upstream repository URL (`https://github.com/getcadcraft/cadcraft.git`), and a version prefix (`cadcraft-v`). There are no build commands, network operations beyond declaring the upstream URL, file modifications, obfuscated content, or any other behavior that could indicate a supply-chain attack. This is standard packaging/automation configuration.
</details>
<evidence>
</evidence>
<summary>
nvchecker config pointing to upstream git repo; no malicious content.</summary>
</security_assessment>

[0/6] Reviewing PKGBUILD, .SRCINFO, .nvchecker.toml, cadcraft-studio.desktop...
[1/6] Reviewing PKGBUILD, .SRCINFO, cadcraft-studio.desktop...
+ Reviewed .nvchecker.toml. Status: SAFE -- nvchecker config pointing to upstream git repo; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It declares the package name, description, dependencies, source URLs, and sha256 checksums for a multi-component application bundle. All remote sources point to the project's own GitHub organization (`getcadcraft`), with VCS sources pinned to specific commits and release tarballs fetched over HTTPS. Checksums are provided for every source entry, and there are no `SKIP` entries.

No executable code, shell commands, network hooks, or build steps are present in this file. The PHP files listed as sources are package-local inputs referenced by the PKGBUILD, which is normal for AUR packages that bundle configuration or helper files. There is no evidence of obfuscation, data exfiltration, untrusted downloads, or deviation from ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, cadcraft-studio.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
[2/6] Reviewing PKGBUILD, cadcraft-studio.desktop, site-bootstrap.php...
LLM auditresponse for cadcraft-studio.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the CadCraft Studio application. It declares metadata such as application name, icon, categories, MIME types, and a normal `Exec=cadcraft-studio %U` launcher command. There is no embedded code, no obfuscation, no network access, and no suspicious file operations. The file only instructs the desktop environment to launch the application binary installed by the package, passing optional file URLs/arguments. No malicious or supply-chain related behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, cadcraft-studio.desktop, site-bootstrap.php, site-edition.php...
[3/6] Reviewing PKGBUILD, site-bootstrap.php, site-edition.php...
+ Reviewed cadcraft-studio.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
LLM auditresponse for site-bootstrap.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PHP bootstrap helper that defines a `Catalog` class and an `AppBuilds` class. It reads local JSON manifest files from a directory supplied via the `CADCRAFT_APPS` environment variable. There are no network requests, no downloads, no obfuscated code, no `eval`, `base64`, `exec`, `system`, or shell commands, and no modifications to system files. The file only performs `file_exists`, `file_get_contents`, and `json_decode` against an application-defined local path, which is consistent with its stated purpose of allowing a packaging pipeline to read app catalogs from public source files. The `getcadcraft.com` constant is only a URL string used as an edition identifier; it is not fetched or executed. This is normal application/packaging support code, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Local JSON catalog reader with no network, exec, or obfuscation; standard packaging helper logic.
</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, site-edition.php...
+ Reviewed site-bootstrap.php. Status: SAFE -- Local JSON catalog reader with no network, exec, or obfuscation; standard packaging helper logic.
LLM auditresponse for site-edition.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This PHP file contains only local helper functions for locating and reading `release.json` files in a project or edition directory tree. It performs filesystem globbing and `file_get_contents`/`json_decode` operations against local paths derived from function arguments or the `CADCRAFT_EDITIONS` environment variable.

There is no network access, no execution of fetched code, no obfuscation, no encoding tricks, no writes to system locations, and no exfiltration of sensitive data. The behavior is consistent with an upstream packaging/render helper that reads library version information from local release metadata. Reading local JSON files under an explicitly configured editions directory serves the stated purpose of packing a suite and is not malicious.
</details>
<evidence>
</evidence>
<summary>
Local JSON-reading helper functions; no malicious, network, or obfuscated behavior found.
</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed site-edition.php. Status: SAFE -- Local JSON-reading helper functions; no malicious, network, or obfuscated behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD appears to be a standard Arch packaging recipe for the CadCraft Studio desktop application. All remote sources come from the project's own GitHub organization (`getcadcraft`); the two git repositories are pinned to explicit commit hashes, and the eight application tarballs use fixed tags with pinned sha256 checksums. There are no `eval`, `base64`, `curl|bash`, or similar techniques, and no network fetches occur outside makepkg's normal source retrieval.

The build and package functions operate entirely on `$srcdir` and `$pkgdir`: they copy and symlink upstream app files into a staging site, run the project's own Node/Cargo build scripts, and install the resulting binary, desktop entry, icons, MIME definitions, and licenses. This is consistent with legitimate upstream build tooling rather than an injected supply-chain payload. The only minor oddity is the literal `--target host-tuple` passed to `cargo fetch` in `prepare()`, which is a build-correctness concern at most and not evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD; pinned upstream sources, normal build and install steps.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; pinned upstream sources, normal build and install steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,345
  Completion Tokens: 8,709
  Total Tokens: 33,054
  Total Cost: $0.003800
  Execution Time: 64.96 seconds

Final Status: SAFE


No issues found.
