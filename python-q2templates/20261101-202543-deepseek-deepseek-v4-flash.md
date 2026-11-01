---
package: python-q2templates
pkgver: 2026.10.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18144
completion_tokens: 13930
total_tokens: 32074
cost: 0.004186364
execution_time: 66.13
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T20:25:43Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no code.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, standard upstream source, no threats.
  - file: PKGBUILD
    status: safe
    summary: No malicious indicators found; standard AUR PKGBUILD.
  - file: runtime-notices.py
    status: safe
    summary: Safe build helper for license collection.
  - file: runtime-modules.js
    status: safe
    summary: Standard Vite build plugin; no security issues identified.
  - file: matryoshka-vite.config.ts
    status: safe
    summary: No malicious code in file.
---

Materializing python-q2templates from local mirror...
Materialized python-q2templates
Analyzing python-q2templates AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions in the global/top-level scope. All variables (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `checkdepends`, `_commit`, `source`, `sha256sums`) are assigned static strings or arrays using variable expansion only — no command substitution, arithmetic expansion, or execution of arbitrary commands occurs. The four functions (`prepare`, `build`, `check`, `package`) are defined but not invoked during `makepkg --printsrcinfo`. Therefore sourcing this PKGBUILD for metadata parsing is safe.
</details>
<evidence></evidence>
<summary>No global code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global code execution risk.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard software license text (LICENSE). It contains only legal disclaimers granting permission to use, copy, and distribute the software, along with a standard warranty disclaimer. There is no executable code, no network requests, no system modifications, no obfuscated content, and no instructions that could perform any action on the system. It poses no security risk in a supply chain audit.
</details>
<evidence>
</evidence>
<summary>Standard license file, no code.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, matryoshka-vite.config.ts...
[1/6] Reviewing .SRCINFO, PKGBUILD, matryoshka-vite.config.ts...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely declarative metadata for the AUR package. It contains the package definition, dependencies, and pointers to source files. The upstream source URL points directly to the official **qiime2/q2templates** project on GitHub, pinned to a specific commit hash (`59d47eb`), which is a strong security practice. All source files are accompanied by SHA-256 checksums for integrity verification. There are no executable instructions, network requests, obfuscated strings, references to unexpected hosts, or any logic that could facilitate a supply-chain attack. The file simply describes standard packaging metadata.
</details>
<evidence/>
<summary>Declarative metadata, standard upstream source, no threats.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, matryoshka-vite.config.ts, runtime-modules.js...
[2/6] Reviewing PKGBUILD, matryoshka-vite.config.ts, runtime-modules.js...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, standard upstream source, no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for an AUR package that includes a Python library with an npm-built frontend. All source files are integrity-protected with SHA-256 checksums, including the three extra files shipped alongside the PKGBUILD. The prepare() and build() functions invoke npm and Python in expected ways: cloning the upstream repository from a pinned commit, installing npm dependencies, running the upstream build system, and building a Python wheel. No obfuscated code, suspicious network requests, or unexpected system modifications are present. The execution of runtime-notices.py during the build is consistent with the package's purpose of generating HTML reports, and its provenance is verified by a checksum. While the three extra files are not part of the upstream tarball and are supplied by the AUR maintainer, their use is integral to building the package, and no evidence of malice is visible in the PKGBUILD itself.
</details>
<evidence></evidence>
<summary>No malicious indicators found; standard AUR PKGBUILD.</summary>
</security_assessment>

[3/6] Reviewing matryoshka-vite.config.ts, runtime-modules.js...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious indicators found; standard AUR PKGBUILD.
[3/6] Reviewing matryoshka-vite.config.ts, runtime-modules.js, runtime-notices.py...
LLM auditresponse for runtime-notices.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `runtime-notices.py` is a build helper that collects third-party license notices from bundled npm packages and generates a manifest with integrity hashes. It only reads local files (`.runtime-modules.json`, `package-lock.json`, and files under `node_modules/`) and writes within `build/third-party-licenses/`. No network requests, code execution, or system modifications outside the project directory occur. All file operations are constrained by path validation and assertions to prevent directory traversal.
</details>
<evidence></evidence>
<summary>Safe build helper for license collection.</summary>
</security_assessment>

[4/6] Reviewing matryoshka-vite.config.ts, runtime-modules.js...
+ Reviewed runtime-notices.py. Status: SAFE -- Safe build helper for license collection.
LLM auditresponse for runtime-modules.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `runtime-modules.js` implements a Vite plugin that generates a JSON inventory of runtime modules used in a build. It reads `package.json` files from within `node_modules` to collect package names and versions, then writes them to `.runtime-modules.json`. The code restricts file access to paths starting with the project root, preventing directory traversal. All operations are local file system reads and writes; there are no network requests, no execution of external commands, no obfuscated code, and no use of dangerous functions like `eval`, `curl`, or `wget`. The hardcoded list of CSS packages is simply included in the output and does not introduce any supply-chain risk. This script is a standard build-time tool and contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Vite build plugin; no security issues identified.</summary>
</security_assessment>

[5/6] Reviewing matryoshka-vite.config.ts...
+ Reviewed runtime-modules.js. Status: SAFE -- Standard Vite build plugin; no security issues identified.
LLM auditresponse for matryoshka-vite.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vite configuration file (`vite.config.ts`) for a SvelteKit project that also uses the `@tailwindcss/vite` plugin. It imports `runtimeModules` from a local module `./runtime-modules.js`, which is a common and legitimate pattern for organizing Vite extensions and does not inherently indicate malicious behavior.

There is no evidence of obfuscation, dangerous system commands (e.g., `eval`, `curl`, `wget`, `base64`), network requests to unexpected hosts, data exfiltration, or backdoors. The content is entirely static configuration logic composed of standard, well-known web development tools and libraries.

While the presence of a Node.js/Vite front-end configuration inside a Python-based AUR package (`python-q2templates`) may seem contextually unusual, the file itself performs no operations outside of declaring its build plugins. It serves only as configuration for the upstream application's web frontend component and contains no injected or supply-chain attack code.
</details>
<evidence>
</evidence>
<summary>No malicious code in file.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed matryoshka-vite.config.ts. Status: SAFE -- No malicious code in file.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,144
  Completion Tokens: 13,930
  Total Tokens: 32,074
  Total Cost: $0.004186
  Execution Time: 66.13 seconds

Final Status: SAFE


No issues found.
