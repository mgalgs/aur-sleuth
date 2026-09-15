---
package: hermes-agent
pkgver: 0.21.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15527
completion_tokens: 6279
total_tokens: 21806
cost: 0.002488499510
execution_time: 147.26
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T07:39:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Conventional AUR PKGBUILD; pinned upstream source, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file; source from official GitHub with checksum pinned. No malicious behavior.
  - file: requirements.md
    status: safe
    summary: Dependency documentation only; no executable code, network calls, or injected malware found.
---

Materializing hermes-agent from local mirror...
Materialized hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists solely of static variable definitions (pkgname, pkgver, _tagver, source, sha256sums, etc.) and function declarations (build(), check(), package()). There are no command substitutions, backtick expansions, arithmetic evaluations, or function calls that could execute arbitrary code during sourcing. No dangerous builtins (eval, curl, wget, base64, etc.) appear in the global scope. The only dynamic content is the use of `${_tagver}` in the source URL, which is a standard variable interpolation and does not introduce code execution. Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not execute the build/package functions, running this command is safe.
</details>
<evidence></evidence>
<summary>No executable code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It lists common patterns (`.cecli*`, `hermes-agent`, `src*`, `pkg*`, `*.pkg.tar.zst`) to exclude build artifacts and generated files from version control. There is no executable code, network access, obfuscation, or any other malicious behavior. The file is inert and serves only to prevent unwanted files from being tracked by git.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, requirements.md...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a conventional AUR package for a locally run AI agent. The only source is the upstream GitHub tarball pinned to a specific tag with a sha256 checksum. Build steps run the upstream build system (npm ci/build, uv venv/lock/sync) and package files into /opt and /usr/bin. There are no suspicious network endpoints, no encoded/obfuscated commands, no curl|bash execution, and no exfiltration or backdoor patterns. The .pth file and launcher script only configure Python's path and set application-specific environment variables.

Minor reproducibility notes: `uv lock` is run without `--locked`/`--frozen` and may update the lock file during build, and `npm ci` installs dependencies from npm; both are normal packaging behavior, not signs of malice. The override of `ui-tui/scripts/build.mjs` to skip a runtime build is unusual but is consistent with shipping the prebuilt TUI into an /opt tree and does not execute untrusted code.
</details>
<evidence></evidence>
<summary>Conventional AUR PKGBUILD; pinned upstream source, no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, requirements.md...
+ Reviewed PKGBUILD. Status: SAFE -- Conventional AUR PKGBUILD; pinned upstream source, no malicious behavior found.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is only a `.SRCINFO` metadata manifest for the `hermes-agent` AUR package. It contains no code, no build logic, and no install scripts. It only declares package metadata: name, description, version, URL, architecture, dependencies, and a single source entry.

The source is a tarball fetched from the project's official upstream GitHub repository (`https://github.com/NousResearch/hermes-agent/archive/refs/tags/v2026.9.14.tar.gz`) and it has a pinned `sha256sums` checksum. The dependencies listed (`npm`, `nodejs`, `python311`, `uv`, various browser/Electron-related libraries such as `nss`, `mesa`, `pango`, `cairo`) are consistent with a locally running AI agent application that uses web browsing and automation.

There is no evidence of malicious behavior such as exfiltration, obfuscated commands, unexpected network endpoints, or dangerous file operations. The only minor observation is that `pkgver` (0.21.3) does not match the version implied by the source tag (`v2026.9.14`); this is a packaging hygiene/consistency concern, not a security issue.
</details>
<evidence>
</evidence>
<summary>
Metadata-only AUR file; source from official GitHub with checksum pinned. No malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing requirements.md...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file; source from official GitHub with checksum pinned. No malicious behavior.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain-markdown dependency manifest documenting version constraints from the package's own `requirements.txt` and `pyproject.toml`. It contains no executable code, shell commands, or scripts; it only records PyPI package names with standard bounded version ranges and two `git+` dependency URLs.

The `git+` URLs point to the project's own upstream ecosystem (github.com/NousResearch/atropos and github.com/thinking-machines-lab/tinker), which is consistent with a Hermes/Nous-related agent package. These are unpinned mutable-ref dependencies — a reproducibility and hygiene consideration, not evidence of malice, and consistent with normal Python packaging practice. The HTML entities (e.g. `&gt;=`) are just the rendered form of `>=` and `<` in markdown, not obfuscation.

No obfuscated code, network exfiltration, download-and-execute behavior, file tampering, backdoors, or attempts to hide anything were found. The file's only purpose is to summarize dependency declarations, so there is nothing indicative of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Dependency documentation only; no executable code, network calls, or injected malware found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed requirements.md. Status: SAFE -- Dependency documentation only; no executable code, network calls, or injected malware found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,527
  Completion Tokens: 6,279
  Total Tokens: 21,806
  Total Cost: $0.002488
  Execution Time: 147.26 seconds

Final Status: SAFE


No issues found.
