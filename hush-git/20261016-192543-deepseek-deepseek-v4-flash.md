---
package: hush-git
pkgver: 0.2.0.r4.g2eb4350
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9732
completion_tokens: 2108
total_tokens: 11840
cost: 0.001269268
execution_time: 20.64
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T19:25:42Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO for a -git package; no malicious behavior found.
  - file: hush-git.install
    status: safe
    summary: Install script contains only user-facing echo messages; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package; no malicious or suspicious behavior found.
---

Materializing hush-git from local mirror...
Materialized hush-git
Analyzing hush-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's global/top-level scope. In this PKGBUILD, that scope contains only standard variable assignments (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `optdepends`, `conflicts`, `install`, `source`, `sha256sums`) and the `pkgver()`, `package()` function definitions. There are no top-level command substitutions, no `eval`, no network fetches, no encoded/obfuscated payloads, and no file-modifying operations that would execute during sourcing.

The `sha256sums=(SKIP)` entry is normal for VCS sources and is not a concern for this narrow gate, since no sources are downloaded or verified during `makepkg --printsrcinfo`. The commands inside `pkgver()` and `package()` (git describe, install, cp, rm, ln) are not executed at this step and are out of scope for this gate; they will be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; only standard variables and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only standard variables and function definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, hush-git.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for a `-git` package. It declares the package name, description, dependencies, optional dependencies, upstream URL, and a VCS source (`git+https://github.com/sirrryasir/hush.git`). The `sha256sums = SKIP` entry is expected and required for VCS sources; it is a reproducibility/hygiene note, not evidence of malice. No scripts, build commands, file operations, network calls, or encoded content are present in this file. There is nothing here that deviates from normal packaging practices or indicates a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO for a -git package; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, hush-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO for a -git package; no malicious behavior found.
LLM auditresponse for hush-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script only prints post-install guidance messages to the user. It performs no file operations, network requests, command execution, or system modifications. The referenced `/usr/share/hush/install.sh` and `/usr/share/hush/sddm/install.sh` are optional commands suggested for the user to run manually; the package install script itself does not invoke them. No evidence of malicious behavior, obfuscation, or supply-chain injection is present.
</details>
<evidence>
</evidence>
<summary>
Install script contains only user-facing echo messages; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed hush-git.install. Status: SAFE -- Install script contains only user-facing echo messages; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD builds a -git package from the upstream GitHub repository (git+https://github.com/sirrryasir/hush.git). The source URL is the project's own upstream, and the SKIP checksum is expected for VCS sources. The pkgver() function only reads git metadata, and package() copies the repository into /usr/share/hush, removes internal VCS/development directories, installs a symlink to /usr/bin/hush, and installs the license.

No network requests beyond the declared upstream source, no encoded or obfuscated commands, no use of eval, curl, wget, or other dangerous constructs, and no manipulation of files outside the package's own install prefix. The file follows standard AUR packaging practices for a -git package. The referenced hush-git.install file is not present in this audit, but nothing in the PKGBUILD itself indicates suspicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR git package; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,732
  Completion Tokens: 2,108
  Total Tokens: 11,840
  Total Cost: $0.001269
  Execution Time: 20.64 seconds

Final Status: SAFE


No issues found.
