---
package: q2-feature-table
pkgver: 2026.10.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 161625
completion_tokens: 9595
total_tokens: 171220
cost: 0.016454165
execution_time: 57.17
files_reviewed: 11
files_skipped: 0
maintainer_files: 11
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T00:20:13Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file only; no executable or malicious content present.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: build-frontends.py
    status: safe
    summary: Standard build script for frontend assets.
  - file: datatables-package-lock.json
    status: safe
    summary: Standard npm lockfile with pinned versions and official registry URLs; no malicious behavior found.
  - file: export-frontend-notices.patch
    status: safe
    summary: Patch copies bundled license assets into output directory; no malicious behavior.
  - file: copy-frontend-licenses.py
    status: safe
    summary: Legitimate license collection script, no malicious activity.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package; no malicious code found.
  - file: jquery-package-lock.json
    status: safe
    summary: Standard npm lockfile; all URLs are the official npm registry; no malicious behavior found.
  - file: package-lock.json
    status: safe
    summary: Standard npm lockfile; no malicious content.
  - file: offline_usage_tests.py
    status: safe
    summary: Benign offline test fixture server with hash-pinned local responses; no malicious activity.
  - file: vega-embed-package-lock.json
    status: safe
    summary: Standard npm lock file, no malicious content.
---

Materializing q2-feature-table from local mirror...
Materialized q2-feature-table
Analyzing q2-feature-table AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function declarations in its global scope. No commands (curl, wget, eval, etc.) are present outside of functions. Running `makepkg --printsrcinfo` will source the file, which merely sets variable values and defines functions, with no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No dangerous global code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code found.
Reviewing the 11 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/11] Reviewing .SRCINFO...
[0/11] Reviewing .SRCINFO, PKGBUILD...
[0/11] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style software license text (Copyright Arch Linux Contributors). It contains no code, no network operations, no file operations, no obfuscation, and no instructions of any kind. It is exactly what a LICENSE file should be and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
License file only; no executable or malicious content present.</summary>
</security_assessment>

[0/11] Reviewing .SRCINFO, PKGBUILD, LICENSE, build-frontends.py...
[1/11] Reviewing .SRCINFO, PKGBUILD, build-frontends.py...
+ Reviewed LICENSE. Status: SAFE -- License file only; no executable or malicious content present.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a .SRCINFO metadata file for an AUR package. It contains only declarative information: package name, description, version, source URLs with pinned commit hashes, SHA256 checksums, dependencies, and noextract lists. No shell commands, obfuscated code, network requests (beyond declaring pinned source URLs), or suspicious operations are present. All source tarballs are pinned to specific commits and checksummed. The file conforms to standard AUR packaging practices and does not contain any malicious or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[2/11] Reviewing PKGBUILD, build-frontends.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
[2/11] Reviewing PKGBUILD, build-frontends.py, copy-frontend-licenses.py...
LLM auditresponse for build-frontends.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard packaging script that automates building browser assets (Vega, jQuery, DataTables, etc.) from pinned upstream sources. It invokes the projects' own build tools (npm, node, grunt, sass, uglifyjs, rollup, tsc) in the expected way, and does not perform any network requests, download code from unexpected hosts, exfiltrate data, or use obfuscated commands. The modifications made to source files (e.g., adding sourcemap support and exit code handling) are straightforward build tweaks that do not introduce security concerns. No hidden, encoded, or dangerous operations are present.
</details>
<evidence></evidence>
<summary>Standard build script for frontend assets.</summary>
</security_assessment>

[2/11] Reviewing PKGBUILD, build-frontends.py, copy-frontend-licenses.py, datatables-package-lock.json...
[3/11] Reviewing PKGBUILD, copy-frontend-licenses.py, datatables-package-lock.json...
+ Reviewed build-frontends.py. Status: SAFE -- Standard build script for frontend assets.
LLM auditresponse for datatables-package-lock.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard npm `package-lock.json` (lockfileVersion 3) for the datatables.net-src package. It contains normal dependency metadata: package names, pinned versions, `resolved` URLs pointing exclusively to the official npm registry (registry.npmjs.org), and `integrity` SHA-512 hashes for every entry. No suspicious patterns were found in the shown head/tail portions, and no lines matching curl, wget, eval, base64, exec, or similar patterns were flagged in the omitted region. The presence of optional binary platform packages (e.g., `@rollup/*`, `@parcel/watcher*`) and packages with install scripts is ordinary for a JavaScript project lockfile and does not indicate malicious behavior. Nothing in this file executes code, exfiltrates data, downloads from unexpected hosts, or deviates from standard npm packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard npm lockfile with pinned versions and official registry URLs; no malicious behavior found.</summary>
</security_assessment>

[3/11] Reviewing PKGBUILD, copy-frontend-licenses.py, datatables-package-lock.json, export-frontend-notices.patch...
[4/11] Reviewing PKGBUILD, copy-frontend-licenses.py, export-frontend-notices.patch...
+ Reviewed datatables-package-lock.json. Status: SAFE -- Standard npm lockfile with pinned versions and official registry URLs; no malicious behavior found.
LLM auditresponse for export-frontend-notices.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a `shutil.copytree` call that copies a `third-party-licenses` directory from the package template assets into the output directory of a QIIME 2 feature-table visualization. This is routine, expected packaging behavior: it distributes license files alongside generated outputs and does not fetch, execute, or exfiltrate anything. The source path is derived from the package's own bundled `TEMPLATES` directory and the destination is the package's own output directory. There is no obfuscation, no network activity, no dangerous command execution, and no modification of files outside the application's normal output scope. This patch is consistent with ordinary upstream development and does not present a supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Patch copies bundled license assets into output directory; no malicious behavior.</summary>
</security_assessment>

[4/11] Reviewing PKGBUILD, copy-frontend-licenses.py, export-frontend-notices.patch, jquery-package-lock.json...
[5/11] Reviewing PKGBUILD, copy-frontend-licenses.py, jquery-package-lock.json...
+ Reviewed export-frontend-notices.patch. Status: SAFE -- Patch copies bundled license assets into output directory; no malicious behavior.
LLM auditresponse for copy-frontend-licenses.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `copy-frontend-licenses.py` collects license notices from bundled JavaScript libraries (Vega, Embed, jQuery, DataTables, icons) and copies them into an output directory, producing a JSON manifest of bundled modules and their license files. It operates entirely on local files passed as command-line arguments and performs no network requests, no shell commands, no code evaluation, and no file operations outside the specified input/output directories. The only external data it reads are `package.json` metadata (name and version fields) and license/licence/copying/notice/copyright files, which is the intended function. Path traversal is guarded by `is_relative_to()` assertions that ensure all accessed files reside within the expected root directories. There is no obfuscation, no encoded payloads, and no deviation from the stated purpose of license bundling. The file is a normal build‑time helper; it does not contain or introduce any supply‑chain attack vector.
</details>
<evidence></evidence>
<summary>Legitimate license collection script, no malicious activity.</summary>
</security_assessment>

[5/11] Reviewing PKGBUILD, copy-frontend-licenses.py, jquery-package-lock.json, offline_usage_tests.py...
[6/11] Reviewing PKGBUILD, jquery-package-lock.json, offline_usage_tests.py...
+ Reviewed copy-frontend-licenses.py. Status: SAFE -- Legitimate license collection script, no malicious activity.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a QIIME 2 plugin that bundles JavaScript frontend assets. All source archives are fetched from the project's own GitHub repositories and from domains controlled by the upstream project (github.com, data.qiime2.org, docs.qiime2.org) using pinned commit hashes and SHA‑256 checksums, which provides strong supply‑chain integrity.

The `prepare()` function applies a patch from the source bundle (not an external attacker‑supplied patch), copies lock‑files, and runs `npm ci` with `--ignore‑scripts` to avoid executing arbitrary npm code — a secure approach. The `build()` and `package()` steps only run the project’s own Python build scripts and install files into the expected locations. The `check()` function performs a defensive runtime origin check to ensure the installed modules come from the intended site‑packages directory, which is not malicious but is an extra safety measure.

There are no obfuscated commands, no eval/base64 or similar encoding, no network requests that do not serve the package’s dependencies, no modification of system files outside the package’s scope, and no exfiltration of data. The test fixture files (usage‑*.qza, sample‑metadata.tsv) are data files only and are never executed as code.

No supply‑chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR package; no malicious code found.</summary>
</security_assessment>

[6/11] Reviewing PKGBUILD, jquery-package-lock.json, offline_usage_tests.py, package-lock.json...
[7/11] Reviewing jquery-package-lock.json, offline_usage_tests.py, package-lock.json...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package; no malicious code found.
LLM auditresponse for jquery-package-lock.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard npm `package-lock.json` for the jQuery project (version 3.7.0). It lists normal development dependencies (Babel, Grunt, Karma, QUnit, ESLint, etc.), each pinned with a version, a `resolved` URL, and an `integrity` hash. All `resolved` URLs point to the official npm registry (`https://registry.npmjs.org/`), which is expected for a lockfile. No suspicious patterns (curl, wget, eval, base64, exec, obfuscated strings, or postinstall scripts) were found in the visible portions or flagged by the truncated-review scan. The dependency graph is consistent with jQuery's upstream build/test toolchain. No exfiltration, backdoors, or injection of attacker-controlled code is present.
</details>
<evidence>
</evidence>
<summary>Standard npm lockfile; all URLs are the official npm registry; no malicious behavior found.</summary>
</security_assessment>

[7/11] Reviewing jquery-package-lock.json, offline_usage_tests.py, package-lock.json, vega-embed-package-lock.json...
[8/11] Reviewing offline_usage_tests.py, package-lock.json, vega-embed-package-lock.json...
+ Reviewed jquery-package-lock.json. Status: SAFE -- Standard npm lockfile; all URLs are the official npm registry; no malicious behavior found.
LLM auditresponse for package-lock.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `package-lock.json` for a Vega visualization library monorepo. All dependencies are resolved from the official npm registry (`registry.npmjs.org`) with integrity hashes. There are no suspicious network requests, obfuscated code, or dangerous commands. The content is purely declarative dependency metadata and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Standard npm lockfile; no malicious content.</summary>
</security_assessment>

[9/11] Reviewing offline_usage_tests.py, vega-embed-package-lock.json...
+ Reviewed package-lock.json. Status: SAFE -- Standard npm lockfile; no malicious content.
LLM auditresponse for offline_usage_tests.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a pytest helper that makes upstream usage-example tests run offline. It reads pre-staged fixture files from a directory specified by `Q2_TEST_FIXTURES`, verifies their SHA-256 digests against pinned values, and serves them from a local `127.0.0.1` HTTP server. It then monkeypatches `urllib.request.urlopen` so that only the exact known `data.qiime2.org` and `docs.qiime2.org` URLs are redirected to that local server; any other URL, POST request, or unexpected data payload causes a test assertion failure.

There is no evidence of malicious behavior: no data is sent to external hosts, no code is downloaded or executed, no obfuscation or encoded commands are used, and no system files or credentials are accessed. The local server binds only to loopback, and the fixture content is integrity-checked before being served. This is consistent with normal offline-testing or supply-chain hardening practice, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Benign offline test fixture server with hash-pinned local responses; no malicious activity.</summary>
</security_assessment>

[10/11] Reviewing vega-embed-package-lock.json...
+ Reviewed offline_usage_tests.py. Status: SAFE -- Benign offline test fixture server with hash-pinned local responses; no malicious activity.
LLM auditresponse for vega-embed-package-lock.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard npm package-lock.json for the `vega-embed` project. It contains only metadata: package names, version constraints, resolved tarball URLs (all pointing to the official npm registry at registry.npmjs.org), integrity hashes, and dependency trees. No executable code, scripts, or build commands are present. The truncated sections highlight only package dependency lists that include harmless names like `base64-arraybuffer`—those are legitimate npm packages, not obfuscated commands. There is no evidence of data exfiltration, unauthorized network requests, backdoors, or any deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard npm lock file, no malicious content.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed vega-embed-package-lock.json. Status: SAFE -- Standard npm lock file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 161,625
  Completion Tokens: 9,595
  Total Tokens: 171,220
  Total Cost: $0.016454
  Execution Time: 57.17 seconds

Final Status: SAFE


No issues found.
