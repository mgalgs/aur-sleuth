---
package: firefox-developer-edition-vencord
pkgbase: vencord
pkgver: 1.15.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12875
completion_tokens: 3230
total_tokens: 16105
cost: 0.00452065
execution_time: 53.12
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-11T15:08:09Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore for AUR packaging.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned upstream tag and checksum; no malicious behavior found.
  - file: vencord.install
    status: safe
    summary: Install script only prints user instructions; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Vencord PKGBUILD; no malicious code or suspicious behavior.
---

firefox-developer-edition-vencord is built from vencord
Materializing firefox-developer-edition-vencord from local mirror...
Materialized firefox-developer-edition-vencord
Analyzing firefox-developer-edition-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function stubs (`prepare`, `build`, `package_*`). No command substitutions, backticks, `eval`, `curl`, `wget`, or any other code that would execute during sourcing are present. The `source` array uses a git URL with a tag and has a valid checksum; even if it were `SKIP` or a mutable reference, that would not affect the safety of `makepkg --printsrcinfo` because no sources are downloaded at this stage. Functions are not invoked until later stages, so they are out of scope for this gate. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code during sourcing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file commonly used in AUR packages to avoid committing generated or temporary files. It ignores all files (`*`) and then whitelists only `.SRCINFO`, `PKGBUILD`, `vencord.install`, and `.gitignore` itself. There are no commands, network operations, obfuscated content, or any executable logic. It is a benign configuration file for version control hygiene.
</details>
<evidence></evidence>
<summary>Benign .gitignore for AUR packaging.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore for AUR packaging.
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR package for the Vencord Discord client mod. The source is pinned to a specific release tag (`v1.15.11`) from the project's official GitHub repository, and a SHA-256 checksum is provided for the tarball. The package defines multiple split package variants for different browsers, all using the same `vencord.install` script. There are no suspicious network requests, no obfuscated code, no unexpected file operations, and no execution of remotely fetched content. The content is fully consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with pinned upstream tag and checksum; no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned upstream tag and checksum; no malicious behavior found.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Arch Linux package install script (`vencord.install`). It contains only a `post_install()` function that prints post-installation instructions to the user via `echo`. The instructions explain how to use the installed Vencord with Vesktop, Chromium-based browsers, Firefox, and Zen. There are no command substitutions, no external downloads, no file modifications, no execution of fetched code, and no references to sensitive system data. The content is purely informational and matches standard packaging practice.

The only notable aspect is that the `echo` uses HTML entities (`&quot;`, `&apos;`) because the file was displayed as XML-escaped content, but the underlying script is a normal quoted string. No malicious or suspicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Install script only prints user instructions; no malicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Install script only prints user instructions; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard multi-package AUR PKGBUILD for building Vencord and its browser-extension variants. It clones the project's own upstream repository from `github.com/Vendicated/Vencord` at tag `v1.15.11`, installs dependencies with `pnpm install --frozen-lockfile`, runs the upstream build and test commands, and copies the built artifacts into `$pkgdir` for each package variant. All network use is limited to the package's declared upstream and normal npm dependency resolution; there is no `curl|bash`, no `eval`/`base64`/obfuscated code, no unexpected remote host, and no file modification outside `$srcdir` and `$pkgdir`.

The `sha256sums` entry is effectively meaningless for a `git+` source and the upstream tag is not immutable, but these are reproducibility/hygiene considerations rather than evidence of malicious behavior. The referenced `vencord.install` file is not included here, but nothing in this PKGBUILD indicates tampering or injected code.
</details>
<evidence></evidence>
<summary>
Standard Vencord PKGBUILD; no malicious code or suspicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Vencord PKGBUILD; no malicious code or suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,875
  Completion Tokens: 3,230
  Total Tokens: 16,105
  Total Cost: $0.004521
  Execution Time: 53.12 seconds

Final Status: SAFE


No issues found.
