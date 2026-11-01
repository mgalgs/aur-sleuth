---
package: revanced-cli-bin
pkgver: 6.0.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11699
completion_tokens: 1525
total_tokens: 13224
cost: 0.001342159
execution_time: 24.01
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T12:11:23Z
file_verdicts:
  - file: revanced-cli-bin.sh
    status: safe
    summary: Standard Java wrapper script, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: revanced-cli.install
    status: safe
    summary: Benign informational post-install script.
---

Materializing revanced-cli-bin from local mirror...
Materialized revanced-cli-bin
Analyzing revanced-cli-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and a `package()` function. There are no command substitutions, no `eval` statements, no `curl`/`wget`/`bash` network calls, or any other dynamically executed code in the global/top-level scope. The `source` array simply declares upstream URLs, but no actual download happens during `makepkg --printsrcinfo`. The `package()` function is not executed at this step. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, revanced-cli-bin.sh...
LLM auditresponse for revanced-cli-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal wrapper script that executes the revanced-cli.jar using the system Java runtime. It simply calls `/usr/bin/java -jar` with the jar path and passes all arguments through via `"$@"`. There is no obfuscation, no network access, no data exfiltration, no backdoors, and no unusual operations. This is standard packaging practice for Java applications distributed as JARs.
</details>
<evidence>
</evidence>
<summary>Standard Java wrapper script, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, revanced-cli-bin.sh, revanced-cli.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, revanced-cli.install...
+ Reviewed revanced-cli-bin.sh. Status: SAFE -- Standard Java wrapper script, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. Sources are fetched from the official GitHub repository of the project (`github.com/revanced/revanced-cli`) with pinned version tags and proper checksums. No unexpected network requests, obfuscated code, dangerous commands, or data exfiltration attempts are present. The `package()` function only installs the necessary binaries, JAR, and license files to standard system paths. There is no evidence of malicious behavior or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, revanced-cli.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `revanced-cli-bin` AUR package. It declares the package name, version, description, dependencies, and three source URLs — all pointing to the legitimate upstream GitHub repository at `github.com/revanced/revanced-cli`. Each source has a corresponding SHA256 checksum, and the file contains no executable code, network requests, obfuscation, or any malicious behavior. The content is entirely passive metadata describing how to fetch and build the package.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[3/4] Reviewing revanced-cli.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for revanced-cli.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that prints a informational message during package upgrades and installations. It only calls `echo` with a URL linking to the project's official documentation wiki. There are no dangerous commands, no network requests, no file modifications, no data exfiltration, no obfuscated code, and no deviations from standard packaging practices. The content is entirely benign.
</details>
<evidence></evidence>
<summary>Benign informational post-install script.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed revanced-cli.install. Status: SAFE -- Benign informational post-install script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,699
  Completion Tokens: 1,525
  Total Tokens: 13,224
  Total Cost: $0.001342
  Execution Time: 24.01 seconds

Final Status: SAFE


No issues found.
