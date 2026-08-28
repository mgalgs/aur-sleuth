---
package: dosr
pkgver: 4.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 20419
completion_tokens: 4214
total_tokens: 24633
cost: 0.002556017282
execution_time: 33.78
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 219
upstream_named_files: 4
unpinned_sources: 0
date: 2026-08-28T11:19:30Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain permissive license text; no executable or malicious content.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is a metadata config file; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious patterns found.
  - file: update-checksums.sh
    status: safe
    summary: Routine maintainer checksum-update script; no malicious behavior identified.
  - file: rootasrole.install
    status: safe
    summary: Standard package install script, no malicious behavior.
---

Cloning https://aur.archlinux.org/dosr.git...
Cloned dosr
Analyzing dosr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD appears to be a standard build script for the `dosr` package, a Rust-based alternative to sudo/su. During the requested commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`), only the top‑level scope of the PKGBUILD is sourced and the source (a single tarball from the official GitHub repository with a hardcoded checksum) is downloaded and extracted.  

No dangerous top‑level code execution, no obfuscated commands, no unexpected network requests, and no `pkgver()` function are present. All potentially risky operations (`cargo fetch`, `cargo build`, `install`, `setcap`) are confined to `prepare()`, `build()`, and `package_dosr()` which are not executed during this narrow safety gate.  

The source is fetched over HTTPS from the project’s own GitHub repository and has a provided SHA‑256 checksum (not SKIP), so downloading and extracting the archive is safe. No exfiltration, backdoors, or injection of untrusted code is possible from the top‑level scope or the source download.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, safe to fetch and source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, safe to fetch and source.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 4 file(s) in the downloaded sources (src/RootAsRole-4.0.1/resources/arch/arch_sr_pam.conf, src/RootAsRole-4.0.1/resources/man/en_US.md, src/RootAsRole-4.0.1/resources/man/fr_FR.md and 1 more); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 219 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain software license (an ISC-style permissive license attributed to Arch Linux Contributors). It contains no executable code, no network operations, no file modifications, no obfuscation, and no packaging logic. There is nothing in this file that could constitute a supply-chain attack or malicious behavior.

No security concerns identified.
</details>
<evidence>
</evidence>
<summary>
Plain permissive license text; no executable or malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain permissive license text; no executable or malicious content.
[1/6] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file compliant with the REUSE Initiative specification. It defines annotations for copyright and license information for the package files. There is no executable code, no network requests, no obfuscated content, and no system modifications. The content is strictly metadata for license compliance. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>REUSE.toml is a metadata config file; no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, rootasrole.install...
[2/6] Reviewing .SRCINFO, PKGBUILD, rootasrole.install...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is a metadata config file; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file for the dosr package contains standard AUR metadata. It specifies a source tarball fetched from the project's official GitHub repository, includes a PGP key for verification, and provides a valid SHA-256 checksum. There are no suspicious commands, obfuscated code, or unexpected network destinations. The file is a standard packaging descriptor and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, rootasrole.install, update-checksums.sh...
[3/6] Reviewing PKGBUILD, rootasrole.install, update-checksums.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust-based AUR package. It builds the `dosr` and `chsr` binaries from a pinned source tarball with a valid checksum. All build, check, and packaging commands are confined to the project directory and perform typical operations (cargo fetch/build, man page generation, file installation). There is no evidence of obfuscated code, unexpected network requests, or exfiltration. The `setcap` call is a capability setting required for the application's intended privilege-related functionality and is not malicious. The file is secure.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious patterns found.</summary>
</security_assessment>

[4/6] Reviewing rootasrole.install, update-checksums.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious patterns found.
LLM auditresponse for update-checksums.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR maintainer helper script. It sources `./PKGBUILD` to read the declared `source` entry, downloads that declared source tarball with `curl`, computes its SHA256 checksum, and updates `PKGBUILD` and `.SRCINFO` with the new checksum via `sed`. It then deletes the downloaded tarball. This matches the routine `updpkgsums`-style workflow and does not install or execute the downloaded content.

There are no signs of obfuscation, data exfiltration, backdoors, or execution of attacker-controlled code. The network destination is the package's own declared upstream source, not an unrelated host. Minor hygiene concerns such as using `curl -L` without `--fail` and trusting whatever bytes are fetched to update the checksum are typical for such helper scripts and are not evidence of malice. Sourcing the `PKGBUILD` is also normal for this type of script, since `makepkg` itself executes `PKGBUILD` code during normal builds.
</details>
<evidence></evidence>
<summary>Routine maintainer checksum-update script; no malicious behavior identified.</summary>
</security_assessment>

[5/6] Reviewing rootasrole.install...
+ Reviewed update-checksums.sh. Status: SAFE -- Routine maintainer checksum-update script; no malicious behavior identified.
LLM auditresponse for rootasrole.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script for the `dosr` package. It manages configuration files under `/etc/security/rootasrole.json` and `/etc/security/rootasrole.d/`, sets immutable flags via `chattr`, and configures a default admin user by inspecting environment variables and the process tree.  

All operations are local and serve the application’s intended purpose:  
- Creating and protecting policy files.  
- Detecting the non‑root user who invoked the install to assign administrative privileges.  
- Removing immutable flags during removal for clean uninstall.  

There are no network requests, obfuscated commands, base64 decoding, `eval`, or any code that downloads or executes external content. The script modifies only its own configuration paths under `/etc/security/` and uses standard POSIX utilities (`sed`, `chattr`, `setcap`, `ps`, etc.).  

While some actions (e.g., walking the process tree, setting `chmod 000` on a directory) may appear aggressive, they are consistent with a security‑hardening tool and do not indicate a supply‑chain attack. No exfiltration, backdoors, or unexpected remote interactions are present.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed rootasrole.install. Status: SAFE -- Standard package install script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,419
  Completion Tokens: 4,214
  Total Tokens: 24,633
  Total Cost: $0.002556
  Execution Time: 33.78 seconds

Final Status: SAFE


No issues found.
