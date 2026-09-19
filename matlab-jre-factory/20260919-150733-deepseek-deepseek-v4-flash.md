---
package: matlab-jre-factory
pkgbase: matlab
pkgver: R2026a+26.1.0.3346908
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 36172
completion_tokens: 6375
total_tokens: 42547
cost: 0.00208212032
execution_time: 177.05
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T15:07:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata; no malicious content found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: matlab.install
    status: safe
    summary: Informational message only, no malicious code.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker version-tracking configuration for MATLAB container images; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; official MathWorks MATLAB packaging with minor hygiene concerns.
---

matlab-jre-factory is built from matlab
Materializing matlab-jre-factory from local mirror...
Materialized matlab-jre-factory
Analyzing matlab-jre-factory AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD performs only standard variable assignments, default value setup, and a `for` loop that populates `provides` and `conflicts` arrays with simple string operations (parameter expansion, `tr`). No network requests, file writes, command execution from external sources, or obfuscated code appear in the top-level code. The `local` usage outside a function is a syntax concern, not a security threat. All potentially dangerous logic (MPM download, file moves, patching) resides inside function bodies (`prepare()`, `build()`, `package_*()`) and will not execute during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No malicious top-level code; only safe variable manipulation.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; only safe variable manipulation.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is purely declarative metadata for several subpackages of the `matlab` AUR package family. It defines package names, descriptions, version numbers, dependencies, conflicts, and provides fields. There are no scripts, no network commands, no obfuscation, and no operations that execute code. The content follows standard AUR packaging conventions and does not contain any indicators of supply-chain compromise. All dependencies reference standard core packages (e.g., `sh`) or other matlab-related subpackages from the same package base, which is expected.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO metadata; no malicious content found.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata; no malicious content found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git ignore configuration. It only contains ignore patterns to include specific files (`PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `*.install`) while ignoring everything else by default. There are no executable commands, network requests, obfuscated code, or any other potentially malicious content. This file is harmless and follows normal repository practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, matlab.install...
[2/5] Reviewing .nvchecker.toml, PKGBUILD, matlab.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for matlab.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `matlab.install` contains only standard `post_install` and `post_upgrade` hooks that print a message to the user about activating MATLAB using `MathWorksProductAuthorizer`. There are no network requests, no file system modifications, no obfuscated code, no execution of untrusted binaries, and no attempts to exfiltrate or modify system data. The content is purely informational and follows typical AUR packaging patterns for providing user guidance after installation.
</details>
<evidence></evidence>
<summary>Informational message only, no malicious code.</summary>
</security_assessment>

[3/5] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed matlab.install. Status: SAFE -- Informational message only, no malicious code.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration used to watch for new MATLAB release versions. It defines a version source that checks the `mathworks/matlab` container on `docker.io` for tags matching the pattern `r20\d{2}[ab]`, and maps them to version strings like `R20XX+autoupdated`. The commented-out alternatives reference MathWorks GitHub repositories and MathWorks documentation pages, which are the project's own upstream sources. There is no obfuscated code, no execution of downloaded content, no data exfiltration, and no unexpected file system or network activity. The configuration only describes how to query version metadata from the upstream container registry and official MathWorks resources.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker version-tracking configuration for MATLAB container images; no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker version-tracking configuration for MATLAB container images; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a conventional split packaging of MathWorks MATLAB. It uses the official MathWorks Package Manager (`matlab-mpm`) to download a pinned MATLAB release, then splits the Java, JRE, GCC, and Fortran components into separate subpackages. The download and install steps both target MathWorks' own tooling and the package's own upstream release; executing the downloaded `mpm` binary from the local download directory is normal for this kind of vendor-managed proprietary installation. No `eval`, no base64/obfuscated payloads, no unexpected network destinations, no credential or file exfiltration, and no writes outside the package's own install paths were found.

A few hygiene issues are worth noting but do not rise to malicious behavior: there is no `source=()`/checksum verification because the vendor content is fetched at build time; `install -vdm777` creates a world-writable MATLAB release directory under `/opt`, which is a local permissions concern; and `local` is used at top-level scope outside a function, which would be a Bash error during parsing. These are packaging-quality concerns rather than evidence of an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; official MathWorks MATLAB packaging with minor hygiene concerns.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; official MathWorks MATLAB packaging with minor hygiene concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,172
  Completion Tokens: 6,375
  Total Tokens: 42,547
  Total Cost: $0.002082
  Execution Time: 177.05 seconds

Final Status: SAFE


No issues found.
