---
package: hermes-agent
pkgver: 0.21.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15207
completion_tokens: 2723
total_tokens: 17930
cost: 0.001829979718
execution_time: 47.9
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T11:06:50Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious indicators found.
  - file: requirements.md
    status: safe
    summary: Documentation file with no executable or malicious content.
---

Materializing hermes-agent from local mirror...
Materialized hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only static variable assignments: `pkgname`, `pkgver`, `_tagver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `source`, `sha256sums`, and `validpgpkeys`. There are no command substitutions, `eval` calls, network requests, file writes, or any other executable statements at the top level. Running `makepkg --printsrcinfo` simply sources these definitions, so nothing dangerous can execute during this step.

The `build()`, `check()`, and `package()` functions contain ordinary packaging operations (npm/uv builds, installing files under `/opt`, generating a launcher script and a `.pth` file), but these functions are not invoked by `makepkg --printsrcinfo` and are out of scope for this gate. The source tarball is fetched from the project's own upstream GitHub repository and has a pinned sha256 checksum. No red flags found for this narrow safety gate.
</details>
<evidence>
</evidence>
<summary>Global scope contains only static variable definitions; no execution risk during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains only static variable definitions; no execution risk during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR packaging. It lists patterns to ignore build artifacts (`.cecli*`, `hermes-agent`, `src*`, `pkg*`, and `*.pkg.tar.zst`). There is no executable code, no network requests, no obfuscation, and no system modifications. The file serves only to prevent unintended version control of build products. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, requirements.md...
[1/4] Reviewing .SRCINFO, PKGBUILD, requirements.md...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for an AUR package. It contains metadata about the hermes-agent package: description, version, architecture, dependencies, and a source URL pointing to the official GitHub repository of the project (NousResearch/hermes-agent). The source tarball has a specific SHA-256 checksum provided, which is a good practice for integrity verification. There are no executable instructions, no obfuscated code, no unexpected network requests, and no file operations. The file is purely declarative and follows normal AUR packaging conventions. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, requirements.md...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Python/Node.js application. The source is fetched from the official upstream GitHub repository with a pinned SHA256 checksum. All build steps (`npm ci`, `npm run`, `uv venv`, `uv sync`) are routine and use the declared upstream source. The package installs into `/opt/hermes-agent` with a normal wrapper script in `/usr/bin/hermes` that sets environment variables and launches the application. There is no obfuscation, no suspicious network requests, no data exfiltration, and no execution of code from unexpected hosts. The only notable hygiene point is that a `build.mjs` file is created with a `console.log` stub to skip a build step at runtime; this is a packaging workaround, not malicious. The environment variables `HERMES_DISABLE_LAZY_INSTALLS` and `HERMES_LAZY_INSTALL_TARGET` are application-level configuration, not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious indicators found.</summary>
</security_assessment>

[3/4] Reviewing requirements.md...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious indicators found.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `requirements.md` is a plain-text Markdown document that lists Python package dependencies for the Hermes Agent project. It contains no executable code, no system commands, no obfuscated content, and no network requests. The contents are purely declarative, specifying package names and version ranges. The presence of `git+https://` dependency URLs (e.g., for atroposlib and tinker) is a normal packaging practice for Python projects that depend on unreleased upstream repositories. There are no signs of malicious activity such as data exfiltration, backdoors, or remote code execution. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Documentation file with no executable or malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed requirements.md. Status: SAFE -- Documentation file with no executable or malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,207
  Completion Tokens: 2,723
  Total Tokens: 17,930
  Total Cost: $0.001830
  Execution Time: 47.90 seconds

Final Status: SAFE


No issues found.
