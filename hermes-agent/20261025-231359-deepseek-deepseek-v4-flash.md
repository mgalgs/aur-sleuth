---
package: hermes-agent
pkgver: 0.22.5
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 34291
completion_tokens: 11430
total_tokens: 45721
cost: 0.005200741
execution_time: 54.86
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-25T23:13:58Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Licensing metadata file, no security issues.
  - file: hermes-agent.install
    status: safe
    summary: Benign post-install message, no malicious code.
  - file: hermes_agent_env.py
    status: safe
    summary: Standard environment configuration script, no malicious activity.
  - file: keep-venv-interpreter.patch
    status: safe
    summary: Legitimate packaging adaptation, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with checksums, no malicious behavior.
  - file: requirements.md
    status: safe
    summary: Documentation file listing dependencies; no malicious content.
  - file: system-tools.py
    status: safe
    summary: Standard build helper. No security issues.
---

Materializing hermes-agent from local mirror...
Materialized hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines variables and functions in the global/top-level scope. No command substitutions (`$()`, backticks) or dangerous commands (eval, curl, wget, base64 decoding, etc.) appear outside function bodies. All potentially risky operations—patching, building, installing, network fetches—are confined to `prepare()`, `build()`, `check()`, and `package()`, which are **not** executed by `makepkg --printsrcinfo`. The only expansions in global assignments reference already‑set variables (e.g. `${pkgname}`, `${url}`) and do not perform any command execution. Sourcing this PKGBUILD is therefore safe.
</details>
<evidence></evidence>
<summary>No global‑level code execution; functions only.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global‑level code execution; functions only.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, LICENSE...
[0/10] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR package repositories to prevent build artifacts (compressed tarballs, source directory, package directory) from being tracked by git. It contains no code, no network requests, no system modifications, no obfuscation, and no dangerous commands. There is no evidence of malicious behavior; it is a routine packaging hygiene file.
</details>
<evidence></evidence>
<summary>Standard .gitignore; no security concerns.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, LICENSE, .gitignore, PKGBUILD...
[1/10] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only package metadata: description, version, upstream URL, dependencies, source URLs, and SHA-256 checksums. All source URLs point to the official GitHub repository of the project, tagged release v0.22.5. The checksums are provided (not SKIP), pinning the exact content. There are no commands, scripts, encoded payloads, or unusual instructions. This file is a standard AUR metadata file and contains no security issues.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/10] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License text. It contains no executable code, network requests, file operations, or obfuscated content. There is no evidence of a supply-chain attack or any malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing LICENSE, PKGBUILD, REUSE.toml, hermes-agent.install...
[3/10] Reviewing PKGBUILD, REUSE.toml, hermes-agent.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a metadata file used for the REUSE compliance standard to document licensing and copyright information for the files in the repository. It contains no executable code, no commands, no network requests, and no potentially dangerous operations. There are no security concerns; it is a standard packaging artifact.
</details>
<evidence></evidence>
<summary>Licensing metadata file, no security issues.</summary>
</security_assessment>

[3/10] Reviewing PKGBUILD, REUSE.toml, hermes-agent.install, hermes_agent_env.py...
[4/10] Reviewing PKGBUILD, hermes-agent.install, hermes_agent_env.py...
+ Reviewed REUSE.toml. Status: SAFE -- Licensing metadata file, no security issues.
LLM auditresponse for hermes-agent.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `hermes-agent.install` contains only a `post_install` function that prints a message to the user via a `cat` heredoc, and a `post_upgrade` function that simply calls `post_install`. There are no network requests, file operations, dangerous commands, or any obfuscated code. The content is a standard upgrade notice, and no malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Benign post-install message, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing PKGBUILD, hermes-agent.install, hermes_agent_env.py, keep-venv-interpreter.patch...
[5/10] Reviewing PKGBUILD, hermes_agent_env.py, keep-venv-interpreter.patch...
+ Reviewed hermes-agent.install. Status: SAFE -- Benign post-install message, no malicious code.
LLM auditresponse for hermes_agent_env.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file sets default environment variables for the hermes-agent package's Python virtual environment. It uses standard Python modules (os, shutil) without executing external commands or network operations. The code only sets configuration paths (for lazy installs, Node.js binary, and system browser). It respects pre-existing environment values via setdefault and a guard on AGENT_BROWSER_EXECUTABLE_PATH. No obfuscation, data exfiltration, or unexpected system modifications are present. This is a typical runtime configuration script with no evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard environment configuration script, no malicious activity.</summary>
</security_assessment>

[5/10] Reviewing PKGBUILD, hermes_agent_env.py, keep-venv-interpreter.patch, requirements.md...
[6/10] Reviewing PKGBUILD, keep-venv-interpreter.patch, requirements.md...
+ Reviewed hermes_agent_env.py. Status: SAFE -- Standard environment configuration script, no malicious activity.
LLM auditresponse for keep-venv-interpreter.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adapts the Hermes package&#39;s virtual environment interpreter handling for AUR/pacman installations. It reads an install stamp to determine the distribution type, and if the package was installed via `package-manager` or `pacman`, it returns early to avoid overriding the system Python interpreter in the virtual environment. This is a legitimate packaging adjustment — the code only reads local metadata and does not perform any network operations, execute external commands, or manipulate files outside the application scope. There is no evidence of malicious behavior such as obfuscation, data exfiltration, or injection of untrusted code.
</details>
<evidence>
</evidence>
<summary>Legitimate packaging adaptation, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing PKGBUILD, keep-venv-interpreter.patch, requirements.md, system-tools.py...
[7/10] Reviewing PKGBUILD, requirements.md, system-tools.py...
+ Reviewed keep-venv-interpreter.patch. Status: SAFE -- Legitimate packaging adaptation, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the hermes-agent package from the official upstream GitHub repository. All sources are pinned with SHA-256 checksums, and the build process follows standard Arch packaging practices for a Python/Node application that bundles its own virtual environment. The `source` array fetches the release tarball over HTTPS from the project&#x27;s own GitHub archive. The `prepare()`, `build()`, and `package()` functions apply a local patch, run npm builds, synchronize Python dependencies via `uv --frozen` (which uses a lockfile), and install files under `/opt` with a launcher script in `/usr/bin`. No obfuscated code, encoded commands, unexpected network requests, or suspicious file operations targeting data outside the application scope are present. The use of a `.pth` file to set up the venv&#x27;s Python path and the environment variable overrides in the launcher are normal packaging patterns for this type of application.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with checksums, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing requirements.md, system-tools.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with checksums, no malicious behavior.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Markdown document that consolidates dependency declarations for the hermes-agent package. It contains no executable instructions, no shell commands, no obfuscated content, and no network requests. It simply lists Python package names with version constraints and references to git repositories for submodule dependencies. There is no evidence of malicious behavior such as data exfiltration, backdoors, or unexpected system modifications. The content is consistent with standard packaging documentation.
</details>
<evidence></evidence>
<summary>Documentation file listing dependencies; no malicious content.</summary>
</security_assessment>

[9/10] Reviewing system-tools.py...
+ Reviewed requirements.md. Status: SAFE -- Documentation file listing dependencies; no malicious content.
LLM auditresponse for system-tools.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build helper for the Hermes package manager. It creates a store of symlinks pointing to system-installed binaries (node, npm, ffmpeg, ripgrep, python, uv) so that Hermes' pm can treat them as installed tools.  

No network requests are made. No obfuscated or encoded strings are present. No dangerous commands (eval, base64, curl, wget) are called. The script only writes symlinks inside a designated store directory and writes two JSON metadata files with static content. It validates that expected tools match the lockfile and that every target binary exists before symlinking.  

All operations are confined to the store and the system binary directory; no exfiltration, backdoors, or unexpected system modifications occur. The behaviour is consistent with the stated purpose of integrating system tools into Hermes' package management.
</details>
<evidence></evidence>
<summary>Standard build helper. No security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed system-tools.py. Status: SAFE -- Standard build helper. No security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,291
  Completion Tokens: 11,430
  Total Tokens: 45,721
  Total Cost: $0.005201
  Execution Time: 54.86 seconds

Final Status: SAFE


No issues found.
