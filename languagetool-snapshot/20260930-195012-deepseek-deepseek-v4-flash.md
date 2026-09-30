---
package: languagetool-snapshot
pkgver: 6.9.20260930
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15882
completion_tokens: 11283
total_tokens: 27165
cost: 0.00301970592
execution_time: 364.07
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-30T19:50:11Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file only; no security concerns found.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file; no malicious or suspicious behavior found. Safe.
  - file: languagetool.service
    status: safe
    summary: Standard systemd service unit for LanguageTool HTTP server; no malicious behavior found.
  - file: languagetool.sh
    status: safe
    summary: Standard LanguageTool Java wrapper; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Official upstream source, pinned checksums, standard install steps; no malicious behavior detected.
---

Materializing languagetool-snapshot from local mirror...
Materialized languagetool-snapshot
Analyzing languagetool-snapshot AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&apos;s global/top-level scope consists only of variable assignments, array definitions, and a `package()` function definition. No command substitutions, `eval`, `curl`, `wget`, base64 decoding, or other executable statements run when the file is sourced by `makepkg --printsrcinfo`. The `package()` function body is not executed during this step, so its contents are out of scope for this narrow gate. The source URL and checksum entries are merely data at parse time.
</details>
<evidence></evidence>
<summary>Top-level scope only has variable assignments; no malicious execution during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only has variable assignments; no malicious execution during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard permissive ISC-style license text. It contains no executable code, no network operations, no file manipulation, no obfuscation, and no references to external resources. The only content is copyright notice and the standard ISC license grant/disclaimer. There is nothing in this file that could constitute malicious behavior or a supply-chain risk.
</details>
<evidence></evidence>
<summary>License file only; no security concerns found.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, languagetool.service...
[1/5] Reviewing .SRCINFO, PKGBUILD, languagetool.service...
+ Reviewed LICENSE. Status: SAFE -- License file only; no security concerns found.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for the `languagetool-snapshot` package. It contains only package metadata: name, version, URL, dependencies, source URLs, and BLAKE2 checksums. No build, install, or post-install logic is present in this file itself.

The source is fetched over HTTPS from the project's official download host (`languagetool.org`), and all three source files have pinned B2 checksums. There are no suspicious network requests, obfuscated commands, file operations, or execution of downloaded code. The `&gt;=` sequences are simply escaped `>=` dependency version operators, which is normal `.SRCINFO` syntax and not a security concern.

No evidence of malicious or supply-chain behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard package metadata file; no malicious or suspicious behavior found. Safe.
</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, languagetool.service, languagetool.sh...
[2/5] Reviewing PKGBUILD, languagetool.service, languagetool.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file; no malicious or suspicious behavior found. Safe.
LLM auditresponse for languagetool.service:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the LanguageTool HTTP server. It starts the `/usr/bin/languagetool` binary with `--http` and an `--allow-origin` setting, uses `DynamicUser=yes` to provide an isolated user, and restarts the service on failure. There are no network exfiltration commands, no downloads, no shell execution, no encoded or obfuscated payloads, and no file system manipulation outside normal service startup.

The `--allow-origin "*"` setting is a permissive CORS configuration, which may be a minor operational/privacy consideration depending on deployment, but it is not a supply-chain attack or malicious behavior. The unit does not deviate from ordinary packaging practice and contains no evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service unit for LanguageTool HTTP server; no malicious behavior found.
</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, languagetool.sh...
+ Reviewed languagetool.service. Status: SAFE -- Standard systemd service unit for LanguageTool HTTP server; no malicious behavior found.
LLM auditresponse for languagetool.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
Standard LanguageTool Java launcher wrapper. It builds a Java classpath from jars under /usr/share/java/languagetool, inspects command-line flags to choose between the CLI, GUI, HTTP, or HTTPS entry points, and then executes the corresponding Java main class via `exec /usr/bin/java`. No network requests, downloads, encoded payloads, eval usage, file writes, or data exfiltration are present. The only external commands are `/usr/bin/java` and `sed` for help text formatting, both expected for this package. The script behaves like an ordinary application wrapper and contains no evidence of injected or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard LanguageTool Java wrapper; no malicious or suspicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed languagetool.sh. Status: SAFE -- Standard LanguageTool Java wrapper; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD installs a daily snapshot of LanguageTool from the official upstream domain over HTTPS and verifies all three source files with pinned BLAKE2 checksums. The package() function only creates directories under pkgdir, unzips the snapshot, moves the JAR files into place, and installs the launcher and systemd unit with install. There is no use of eval, base64, curl, wget, or any network access during build or install, and no file writes outside the package destination.

The code is consistent with standard AUR packaging practice. The source is the project's own upstream artifact, and the checksums are explicit rather than SKIP. No obfuscation, backdoors, credential access, or suspicious system modifications are present. The future snapshot date and use of unzip in package() may be worth noting as hygiene, but neither is a security threat.
</details>
<evidence></evidence>
<summary>Official upstream source, pinned checksums, standard install steps; no malicious behavior detected.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Official upstream source, pinned checksums, standard install steps; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,882
  Completion Tokens: 11,283
  Total Tokens: 27,165
  Total Cost: $0.003020
  Execution Time: 364.07 seconds

Final Status: SAFE


No issues found.
