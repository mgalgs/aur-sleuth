---
package: hermes-agent
pkgver: 0.22.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 31181
completion_tokens: 4690
total_tokens: 35871
cost: 0.003691051
execution_time: 35.1
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T11:25:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore listing build artifacts; no security concerns.
  - file: LICENSE
    status: safe
    summary: Plain license text only; no executable or malicious content.
  - file: .SRCINFO
    status: safe
    summary: Package metadata only; pinned sources with checksums and no suspicious behavior. SAFE.
  - file: REUSE.toml
    status: safe
    summary: Trivial REUSE metadata file; no executable or malicious content.
  - file: hermes-agent.install
    status: safe
    summary: Install scriptlet only prints an informational message; no malicious behavior found.
  - file: requirements.md
    status: safe
    summary: Documentation-only dependency list; no executable or malicious behavior present.
  - file: keep-venv-interpreter.patch
    status: safe
    summary: Benign packaging patch adjusting interpreter resolution for pacman-managed installs.
  - file: system-tools.py
    status: safe
    summary: Legitimate helper script creating a pm store of symlinks to system binaries; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources; no malicious behavior found.
---

Materializing hermes-agent from local mirror...
Materialized hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgname, pkgver, source, checksums, etc.) and function definitions (prepare, build, check, package). No command substitutions, eval, or executable statements exist in the global scope. The source array uses standard string interpolation with variable names already defined. Running `makepkg --printsrcinfo` will only source these definitions and define the functions without calling them, presenting no risk of malicious code execution at this step.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It only lists common build artifacts and directories (`*.tar.gz`, `*.tar.zst`, `*.pkg.tar.zst`, `src/`, `pkg/`) to prevent them from being committed to version control. There is no executable code, no network activity, no file manipulation outside the repository context, and nothing resembling an injection or supply-chain attack. This is ordinary packaging hygiene.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore listing build artifacts; no security concerns.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/9] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore listing build artifacts; no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain BSD Zero Clause License text for the hermes-agent AUR package. It contains no code, no network operations, no file manipulation, no obfuscation, and no executable content. The copyright line attributes the license to the AUR contributors, which is normal for package licensing metadata. There is nothing in this file that could constitute a supply-chain attack or any other security concern.
</details>
<evidence>
</evidence>
<summary>
Plain license text only; no executable or malicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain license text only; no executable or malicious content.
[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file describes a normal AUR package: a pinned source tarball from the project's own GitHub repository, a patch file, and a helper script (`system-tools.py`), all with fixed `sha256sums`. There are no `SKIP` checksums, no suspicious URLs, no encoded/obfuscated content, and no unexpected network or file operations in this metadata file.

This file only declares package metadata. It does not itself contain code that downloads, executes, or exfiltrates data. The dependencies (`python`, `nodejs`, `npm`, `uv`, `ripgrep`, `ffmpeg`, `agent-browser`) are consistent with the stated purpose of a locally-run AI agent. The maintainer script and patch are referenced as sources but are not evaluated here; nothing in `.SRCINFO` indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Package metadata only; pinned sources with checksums and no suspicious behavior. SAFE.
</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, hermes-agent.install...
[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-agent.install...
+ Reviewed .SRCINFO. Status: SAFE -- Package metadata only; pinned sources with checksums and no suspicious behavior. SAFE.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
REUSE.toml is a metadata file for the REUSE compliance tool. It declares copyright and licensing information for the listed package files using SPDX identifiers. It contains no executable code, no network operations, no file modification logic, and no obfuscated content. The contents are limited to a version number, a file path list, and standard SPDX fields, which is normal packaging metadata.
</details>
<evidence></evidence>
<summary>Trivial REUSE metadata file; no executable or malicious content.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-agent.install, keep-venv-interpreter.patch...
[4/9] Reviewing PKGBUILD, hermes-agent.install, keep-venv-interpreter.patch...
+ Reviewed REUSE.toml. Status: SAFE -- Trivial REUSE metadata file; no executable or malicious content.
LLM auditresponse for hermes-agent.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install scriptlet (`hermes-agent.install`). `post_install()` only prints an informational message to the user; `post_upgrade()` simply calls `post_install()`. There are no file operations, network requests, command executions, encoded payloads, or system modifications. The message describes the package layout under `/opt/hermes-agent/system-store` and advises users to remove a stale `~/.hermes/tools/facts.json` from an older install — this is normal user guidance, not a destructive action performed by the scriptlet.
</details>
<evidence>
</evidence>
<summary>
Install scriptlet only prints an informational message; no malicious behavior found.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, hermes-agent.install, keep-venv-interpreter.patch, requirements.md...
[5/9] Reviewing PKGBUILD, keep-venv-interpreter.patch, requirements.md...
+ Reviewed hermes-agent.install. Status: SAFE -- Install scriptlet only prints an informational message; no malicious behavior found.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a documentation file (`requirements.md`) that consolidates dependency declarations from the `hermes-agent` project's `requirements.txt` and `pyproject.toml` files. It contains only plain-text descriptions of Python package names, version ranges, and optional feature groups. There are no commands, scripts, network calls, file operations, encoded payloads, or executable content of any kind.

The content is consistent with standard project documentation for an AI agent application. References to upstream GitHub repositories (`NousResearch/atropos`, `thinking-machines-lab/tinker`) are ordinary dependency declarations, and the listed packages (OpenAI, Anthropic, messaging libraries, etc.) match the stated purpose of the package. No evidence of exfiltration, obfuscation, backdoors, or supply-chain attack behavior was found.
</details>
<evidence>
</evidence>
<summary>
Documentation-only dependency list; no executable or malicious behavior present.</summary>
</security_assessment>

[6/9] Reviewing PKGBUILD, keep-venv-interpreter.patch...
+ Reviewed requirements.md. Status: SAFE -- Documentation-only dependency list; no executable or malicious behavior present.
[6/9] Reviewing PKGBUILD, keep-venv-interpreter.patch, system-tools.py...
LLM auditresponse for keep-venv-interpreter.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a packaging-oriented adjustment to the Hermes CLI launcher logic. It adds a check so that when the installation stamp records a distribution of `package-manager` or `pacman`, the launcher returns `None` early instead of proceeding with the existing interpreter-resolution logic. The intent, as stated in the added comment, is to let the packaged venv use Arch's system Python while still allowing `uv` to resolve MCP servers separately.

There is no suspicious behavior: no network access, no encoded or obfuscated commands, no `eval`, `curl`, `wget`, or `base64`, and no file operations outside the application's own metadata. It reads an install stamp via `read_install_stamp`, which is a normal internal API call for determining the installation method. The change is consistent with an AUR package adapting upstream behavior for pacman-managed installations.
</details>
<evidence>
</evidence>
<summary>
Benign packaging patch adjusting interpreter resolution for pacman-managed installs.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, system-tools.py...
+ Reviewed keep-venv-interpreter.patch. Status: SAFE -- Benign packaging patch adjusting interpreter resolution for pacman-managed installs.
LLM auditresponse for system-tools.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script builds a pm store entry for the Hermes agent by creating symlinks from the system binary directory (e.g. /usr/bin) into the store directory. All operations are local and scoped to the store directory passed as an argument: it writes facts.json, creates symlinks, and writes manifest.json beside the store. The imports come from the Hermes tree supplied as an argument, which is the normal way this helper is invoked during packaging.

There is no network access, no obfuscation, no encoded commands, no `eval`/`curl`/`wget`, and no reading or exfiltration of sensitive files. The script performs validation (checks that source binaries exist, that expected pm tools match TOOLS) and exits with an error on mismatch. The only system-level effect is creating symlinks to the declared system binaries inside the store, which is exactly the purpose described in the docstring and is standard packaging/build behavior. No indications of a supply-chain attack were found.
</details>
<evidence>
</evidence>
<summary>
Legitimate helper script creating a pm store of symlinks to system binaries; no malicious behavior found.
</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed system-tools.py. Status: SAFE -- Legitimate helper script creating a pm store of symlinks to system binaries; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Python/Node application. The primary source is a pinned GitHub release tarball with a SHA-256 checksum, and the build uses ordinary tooling: `npm ci`, `npm run build`, `uv venv`, and `uv sync --frozen`. No `curl`, `wget`, `eval`, `base64`, obfuscated strings, or surprising network destinations appear anywhere in the file.

The package installs the application under `/opt`, generates a launcher script, writes an install-stamp metadata file, and invokes a local helper script (`system-tools.py`) to create symlinks into a system store. These operations are all consistent with the maintainer's stated packaging design and do not exfiltrate data, modify unrelated system files, or execute attacker-controlled code from an unexpected host. The replacement of `ui-tui/scripts/build.mjs` with a no-op log is a packaging workaround for the root-owned `/opt` tree and stays within the application's own installed files.

The only notable supply-chain consideration is that `uv sync` pulls a large set of third-party Python dependencies from PyPI at build time, and `npm ci` pulls Node dependencies from the npm registry. That is normal for this type of package and is not evidence of malice, especially with `npm ci --ignore-scripts` and `uv sync --frozen`. No injected malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources; no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,181
  Completion Tokens: 4,690
  Total Tokens: 35,871
  Total Cost: $0.003691
  Execution Time: 35.10 seconds

Final Status: SAFE


No issues found.
