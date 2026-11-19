---
package: hermes-agent
pkgver: 0.23.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 41366
completion_tokens: 14097
total_tokens: 55463
cost: 0.006329960
execution_time: 58.98
files_reviewed: 11
files_skipped: 0
maintainer_files: 11
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T00:16:18Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for Arch packaging.
  - file: LICENSE
    status: safe
    summary: Plain license text only; no executable or malicious content detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content detected.
  - file: hermes_agent_env.py
    status: safe
    summary: Benign environment-defaults module; no malicious or suspicious behavior found.
  - file: REUSE.toml
    status: safe
    summary: Safe license metadata configuration file.
  - file: keep-venv-interpreter.patch
    status: safe
    summary: Arch packaging patch, no malicious behavior found.
  - file: requirements.md
    status: safe
    summary: Documentation-only dependency list; no security concerns.
  - file: release-date-from-stamp.patch
    status: safe
    summary: Patch adds release date reading from install stamp; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no injected malicious code.
  - file: system-browser-fallback.patch
    status: safe
    summary: Patch adds system browser fallback for distribution builds.
  - file: system-tools.py
    status: safe
    summary: Standard packaging script, no malicious behavior found.
---

Materializing hermes-agent from local mirror...
Materialized hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only global variable definitions and function definitions at the top level. No top-level command substitutions, function calls, or executable statements exist that would run during `makepkg --printsrcinfo`. All potentially suspicious activity (patching, npm builds, venv setup, script execution) is confined within `prepare()`, `build()`, `check()`, and `package()` functions, which are not executed by `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No dangerous top-level code during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code during sourcing.
Reviewing the 11 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/11] Reviewing .gitignore...
[0/11] Reviewing .gitignore, .SRCINFO...
[0/11] Reviewing .gitignore, .SRCINFO, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch Linux AUR package repository. It excludes build artifacts such as compressed archives (`*.tar.gz`, `*.tar.zst`, `*.pkg.tar.zst`) and build directories (`src/`, `pkg/`). There is no suspicious, obfuscated, or malicious content. The file serves only to prevent version control from tracking transient build outputs.
</details>
<evidence></evidence>
<summary>Standard .gitignore for Arch packaging.</summary>
</security_assessment>

[0/11] Reviewing .gitignore, .SRCINFO, LICENSE, PKGBUILD...
[1/11] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for Arch packaging.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text BSD Zero Clause License. It contains only standard license legal text and contains no executable code, network requests, file operations, obfuscation, or any other behavior relevant to a supply-chain attack. The `&quot;` sequences are simply HTML/XML-escaped quotation marks around "AS IS", which is normal for license text.

There is nothing here that deviates from standard packaging practice. The license text is attributable to the package itself and contains no instructions, scripts, or embedded payloads of any kind.
</details>
<evidence>

</evidence>
<summary>
Plain license text only; no executable or malicious content detected.</summary>
</security_assessment>

[1/11] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/11] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Plain license text only; no executable or malicious content detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is solely a metadata descriptor for AUR packaging. It declares the package name, version, dependencies, and confirmed checksums for all sources. No executable code, obfuscated content, suspicious network targets, or deviations from standard packaging practices are present. All sources are pinned with SHA-256 hashes and originate from the official GitHub repository of the upstream project. While the file references patch files and helper scripts (`system-tools.py`, `hermes_agent_env.py`) that are included as separate source items, their content is not visible here; by themselves, these filenames do not indicate malice. The dependencies listed are consistent with a local AI agent that uses Python, Node.js, browser automation, and system libraries—no unexpected or dangerous requirements appear.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content detected.</summary>
</security_assessment>

[2/11] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, hermes_agent_env.py...
[3/11] Reviewing PKGBUILD, REUSE.toml, hermes_agent_env.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content detected.
LLM auditresponse for hermes_agent_env.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small Python module that sets environment defaults when imported by a `.pth` hook or process launcher. It only assigns environment variables using `os.environ.setdefault()`, with values computed from `XDG_DATA_HOME`, `~/.local/share`, and a fixed path under `/opt/hermes-agent`. There are no imports beyond `os`, no network access, no subprocess execution, no file writes, no obfuscation, and no behavior outside the stated packaging purpose of supplying runtime defaults for the hermes-agent venv. The behavior is consistent with ordinary packaging support code.
</details>
<evidence>
</evidence>
<summary>
Benign environment-defaults module; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/11] Reviewing PKGBUILD, REUSE.toml, hermes_agent_env.py, keep-venv-interpreter.patch...
[4/11] Reviewing PKGBUILD, REUSE.toml, keep-venv-interpreter.patch...
+ Reviewed hermes_agent_env.py. Status: SAFE -- Benign environment-defaults module; no malicious or suspicious behavior found.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration file used to declare licensing and copyright information according to the FSFE REUSE specification for license compliance. It explicitly lists the files in the repository (PKGBUILD, .SRCINFO, patches, helper scripts) and assigns them a license (0BSD) and copyright holder ("hermes-agent AUR contributors").

There is no executable code, no network requests, no obfuscation, and no system modifications present. The file is purely metadata intended to improve the transparency and licensing hygiene of the package. It does not contain any of the indicators of a supply-chain attack described in the analysis criteria.
</details>
<evidence></evidence>
<summary>Safe license metadata configuration file.</summary>
</security_assessment>

[4/11] Reviewing PKGBUILD, REUSE.toml, keep-venv-interpreter.patch, release-date-from-stamp.patch...
[5/11] Reviewing PKGBUILD, keep-venv-interpreter.patch, release-date-from-stamp.patch...
+ Reviewed REUSE.toml. Status: SAFE -- Safe license metadata configuration file.
LLM auditresponse for keep-venv-interpreter.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adapts the Hermes CLI application for Arch Linux (pacman) packaging. It adds a check to preserve the venv interpreter when the install stamp indicates distribution is &quot;pacman&quot;. The code imports a local application module (`read_install_stamp`) and reads a value from a package-managed stamp file. There is no network access, obfuscation, file exfiltration, or execution of untrusted code. The change is transparent and solely adjusts the application&#8217;s runtime behavior to match the packaging convention. It follows standard AUR patching practices and does not introduce any supply-chain risk.
</details>
<evidence></evidence>
<summary>Arch packaging patch, no malicious behavior found.</summary>
</security_assessment>

[5/11] Reviewing PKGBUILD, keep-venv-interpreter.patch, release-date-from-stamp.patch, requirements.md...
[6/11] Reviewing PKGBUILD, release-date-from-stamp.patch, requirements.md...
+ Reviewed keep-venv-interpreter.patch. Status: SAFE -- Arch packaging patch, no malicious behavior found.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a markdown documentation file listing Python package dependencies for the Hermes Agent project. It contains no executable code, no shell commands, no network requests, no obfuscation, and no file system operations. The content is purely a human-readable record of version constraints drawn from the project&#39;s configuration files. There is nothing that deviates from standard packaging documentation practices, and no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Documentation-only dependency list; no security concerns.</summary>
</security_assessment>

[7/11] Reviewing PKGBUILD, release-date-from-stamp.patch...
+ Reviewed requirements.md. Status: SAFE -- Documentation-only dependency list; no security concerns.
[7/11] Reviewing PKGBUILD, release-date-from-stamp.patch, system-browser-fallback.patch...
LLM auditresponse for release-date-from-stamp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a git diff that updates `hermes_cli/__init__.py` to read `__release_date__` from an install stamp&#39;s `commitDate` field instead of a hardcoded literal.  The approach—reading a local JSON file (`install-stamp.json`) from the package&#39;s own directory or repo root—is a standard pattern for capturing build-time metadata.  There are no network requests, encoded commands, unknown external downloads, `eval`/`exec` invocations, or any code that would exfiltrate data or modify system files outside the package&#39;s scope.  The imports (`json`, `pathlib.Path`, `datetime`, `hermes_cli.steward`, `pm.paths`) are all part of the normal Python standard library or the project&#39;s own internal modules.  The fallback string remains a placeholder, and no signing or hash verification is bypassed.  The patch is therefore consistent with ordinary packaging and upstream development, and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Patch adds release date reading from install stamp; no malicious behavior.</summary>
</security_assessment>

[7/11] Reviewing PKGBUILD, release-date-from-stamp.patch, system-browser-fallback.patch, system-tools.py...
[8/11] Reviewing PKGBUILD, system-browser-fallback.patch, system-tools.py...
+ Reviewed release-date-from-stamp.patch. Status: SAFE -- Patch adds release date reading from install stamp; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard, well-documented AUR packaging conventions for a complex application. It fetches a pinned release tarball from the official upstream GitHub repository (`NousResearch/hermes-agent`), validates it with explicit SHA-256 checksums, and builds the application using its standard toolchain (npm for web interfaces, uv for the Python virtual environment). 

There is no evidence of genuinely malicious behavior: no obfuscated code, no exfiltration of local data, no unexpected network requests to unrelated hosts, and no backdoors or reverse shells. The `build()` and `package()` functions perform routine operations using the project&#x27;s own build scripts and dependency registries (npm/PyPI), which is expected for this type of package. The maintainer has also taken reasonable hygiene steps, such as setting `GIT_CEILING_DIRECTORIES` to prevent stray git reads and pinning the source tarball and patches with concrete hashes rather than `SKIP`.
</details>
<evidence>
</evidence>
<summary>Standard AUR packaging, no injected malicious code.</summary>
</security_assessment>

[9/11] Reviewing system-browser-fallback.patch, system-tools.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no injected malicious code.
LLM auditresponse for system-browser-fallback.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the browser runtime logic to accommodate distribution-packaged Hermes where lazy installs are disabled. It adds a new tuple `_PACKAGED_SYSTEM_COMMANDS` including Google Chrome, Chromium, and Brave, and a function `_lazy_installs_off()` that checks whether on-demand fetching of Chromium is disabled. The browser resolution chain now falls back to these system browsers when lazy installs are off, even if pm has a Chromium build (since the build won't be fetched automatically in that mode). The `chromium_missing_hint` error message is updated accordingly.

The change is purely functional—expanding the set of fallback browser executables and adjusting the fallback condition. There is no obfuscated code, no network request, no execution of untrusted content, and no data exfiltration. The patch aligns with standard AUR packaging practice, where upstream behavior is customized to fit the distribution's constraints. The modification is transparent and serves the stated purpose of reducing the package's dependency on its own fetcher.
</details>
<evidence></evidence>
<summary>Patch adds system browser fallback for distribution builds.</summary>
</security_assessment>

[10/11] Reviewing system-tools.py...
+ Reviewed system-browser-fallback.patch. Status: SAFE -- Patch adds system browser fallback for distribution builds.
LLM auditresponse for system-tools.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script implements a standard packaging step: building a system-tools store for the Hermes package manager. It symlinks system binaries (node, npm, ffmpeg, rg, python3, uv, uvx) from /usr/bin into a store directory, records version and lockfile data in facts.json, and writes a comment-only manifest.json.

No network requests, no `eval`, `curl`, `wget`, obfuscated strings, or file exfiltration are present. The script only reads from the local filesystem (system bin dir and a pre-existing lockfile) and writes to the store directory. Arguments are not executed or passed to dangerous interpreters. The import path adjustment (`sys.path.insert`) points to the package’s own `pm` module, which is standard for this kind of build helper.

All operations are within the expected scope of a packaging/build script: creating directories, creating symlinks, writing metadata JSON files, and printing status messages. There is no code that modifies unrelated system files, executes arbitrary commands with user input, or contacts unexpected hosts. The design comments describe legitimate upstream behavior (e.g., putting node/npm on PATH) and do not mask malicious intent.
</details>
<evidence></evidence>
<summary>Standard packaging script, no malicious behavior found.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed system-tools.py. Status: SAFE -- Standard packaging script, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,366
  Completion Tokens: 14,097
  Total Tokens: 55,463
  Total Cost: $0.006330
  Execution Time: 58.98 seconds

Final Status: SAFE


No issues found.
