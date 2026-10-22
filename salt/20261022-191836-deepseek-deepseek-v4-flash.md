---
package: salt
pkgver: 3008.3
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25470
completion_tokens: 9906
total_tokens: 35376
cost: 0.004120662
execution_time: 41.84
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T19:18:35Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A benign .gitignore file with no security concerns.
  - file: httprequests.patch
    status: safe
    summary: Trivial default backend change, not malicious.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content
  - file: nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no issues.
  - file: salt.install
    status: safe
    summary: Standard install script, no malicious content.
  - file: salt.logrotate
    status: safe
    summary: Standard logrotate config, no risk.
  - file: .SRCINFO
    status: unsafe
    summary: Source tarball hosted on typosquatted pypi.io domain.
    evidence: "source = https://pypi.io/packages/source/s/salt/salt-3008.3.tar.gz\nsource = salt.logrotate\nsource = httprequests.patch\nsha256sums = 4bfa995ecde1491916bc9fd0abebf38d39eaca24c1e99e29c5046b97b8754f30\nsha256sums = abecc3c1be124c4afffaaeb3ba32b60dfee8ba6dc32189edfa2ad154ecb7a215\nsha256sums = 6a8bd4bd183b328d4a6a2b14ec79ee01fc1566b418fb13daa38d62269afb9ea5"
    evidence_line: 47
---

Materializing salt from local mirror...
Materialized salt
Analyzing salt AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable assignments, array definitions, and an `install` variable. No command substitutions, function calls, or any executable code exist outside of the defined functions (`prepare`, `build`, `package`). Since `makepkg --printsrcinfo` only sources the global scope and does not execute any of the functions, no malicious code can run during this step. All content is standard PKGBUILD syntax and poses no risk.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` containing only two file‑name patterns (`salt-*.tar.gz` and `salt-*any.pkg.tar.zst`) and blank lines. It performs no operations—no network access, no code execution, no system modification. There is no obfuscation, no dangerous commands, and no deviation from ordinary packaging practices.
</details>
<evidence></evidence>
<summary>A benign .gitignore file with no security concerns.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- A benign .gitignore file with no security concerns.
[1/7] Reviewing .SRCINFO, PKGBUILD, httprequests.patch...
LLM auditresponse for httprequests.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch is a one-line change that swaps the default HTTP backend from "tornado" to "requests". This appears to be a configuration preference, not a supply-chain attack. There is no obfuscation, no network access, and no execution of untrusted code. The change is consistent with routine packaging adjustments.
</details>
<evidence></evidence>
<summary>Trivial default backend change, not malicious.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed httprequests.patch. Status: SAFE -- Trivial default backend change, not malicious.
[2/7] Reviewing .SRCINFO, PKGBUILD, nvchecker.toml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging conventions for a complex Python application. Dependencies are sourced from the official Arch repositories. The source tarball is downloaded from PyPI over HTTPS with a pinned SHA-256 checksum, providing integrity verification. A patch file and a logrotate configuration are also included as additional sources, each with a checksum.

The build process applies a patch to upstream sources and removes a couple of unneeded dependency lines from `requirements/base.txt` — both are routine adjustments to make the package fit Arch's dependency tree. The package function installs the Python module via `setup.py`, then generates wrapper scripts for each salt utility to work around an upstream entry-point issue. All generated scripts are transparent, simple Python stubs that call the corresponding function from `salt.scripts`. No obfuscation, network exfiltration, unexpected downloads, or modifications to system files outside the package's own scope are present. The PKGBUILD does not contain any of the hallmarks of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content
[3/7] Reviewing .SRCINFO, nvchecker.toml, salt.install...
LLM auditresponse for nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard TOML configuration file for nvchecker, a version-checking utility. It defines how to retrieve version information for the "salt" package from GitHub. The configuration only specifies the repository (`saltstack/salt`), a tag prefix (`v`), and filters to skip pre-release tags via a regular expression. There are no commands, obfuscated content, or unexpected network destinations — it is a normal, benign configuration file consistent with AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no issues.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, nvchecker.toml, salt.install, salt.logrotate...
[4/7] Reviewing .SRCINFO, salt.install, salt.logrotate...
+ Reviewed nvchecker.toml. Status: SAFE -- Standard nvchecker config, no issues.
LLM auditresponse for salt.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `salt.install` is a standard Arch Linux package install script (`.install`). It defines only a `post_upgrade()` function that reads the old package version and prints informational messages about configuration changes in earlier upstream releases.  
There are no network requests, no obfuscated code, no dangerous commands (curl, wget, eval, base64, etc.), and no unexpected file operations. The content is purely notification text and version-conditional checks, which is normal packaging practice. No evidence of malice or supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious content.</summary>
</security_assessment>

[5/7] Reviewing .SRCINFO, salt.logrotate...
+ Reviewed salt.install. Status: SAFE -- Standard install script, no malicious content.
LLM auditresponse for salt.logrotate:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard logrotate configuration file. It defines rotation settings for Salt log files under `/var/log/salt/`. The directives (`compress`, `copytruncate`, `missingok`, `notifempty`, `rotate 7`) are all normal logrotate options and present no security concerns. No executable code, network operations, or suspicious content is present.
</details>
<evidence></evidence>
<summary>Standard logrotate config, no risk.</summary>
</security_assessment>

[6/7] Reviewing .SRCINFO...
+ Reviewed salt.logrotate. Status: SAFE -- Standard logrotate config, no risk.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The primary package source is defined as a tarball hosted on `pypi.io` (https://pypi.io/packages/source/s/salt/salt-3008.3.tar.gz). This domain is a typosquat of the official Python Package Index (PyPI) domain `pypi.org` or `files.pythonhosted.org`. Using a typosquatted domain to distribute a package tarball is a textbook supply-chain attack vector, as it allows a malicious actor to serve a modified archive containing arbitrary code. The SHA256 checksum provided (`4bfa995ecde1491916bc9fd0abebf38d39eaca24c1e99e29c5046b97b8754f30`) authenticates the file from the attacker-controlled domain, not the legitimate upstream source, and thus does not mitigate the risk. This is a clear deviation from standard packaging practices and represents a significant security threat.
</details>
<evidence>
source = https://pypi.io/packages/source/s/salt/salt-3008.3.tar.gz
source = salt.logrotate
source = httprequests.patch
sha256sums = 4bfa995ecde1491916bc9fd0abebf38d39eaca24c1e99e29c5046b97b8754f30
sha256sums = abecc3c1be124c4afffaaeb3ba32b60dfee8ba6dc32189edfa2ad154ecb7a215
sha256sums = 6a8bd4bd183b328d4a6a2b14ec79ee01fc1566b418fb13daa38d62269afb9ea5
</evidence>
<summary>Source tarball hosted on typosquatted pypi.io domain.</summary>
</security_assessment>

Second look for .SRCINFO (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The .SRCINFO file declares the primary source tarball as hosted on `pypi.io`, a typosquatted domain impersonating the official Python Package Index (PyPI). This is not simply a hygiene concern (like an unpinned source or missing checksum) but rather a clear and serious supply-chain attack vector. Downloading the package source from an attacker-controlled host falls under the genuinely malicious behaviors explicitly listed in rule 4: “Downloading code or binaries from an untrusted/unexpected host and executing them.” The provided checksum only authenticates the file from that illegitimate host, not from the official upstream, so it does not mitigate the threat. This is not standard packaging practice; it is an injection of an untrusted source by the AUR maintainer. Therefore, the UNSAFE verdict is fully supported by the rules.
</details>
<evidence>
source = https://pypi.io/packages/source/s/salt/salt-3008.3.tar.gz
source = salt.logrotate
source = httprequests.patch
sha256sums = 4bfa995ecde1491916bc9fd0abebf38d39eaca24c1e99e29c5046b97b8754f30
sha256sums = abecc3c1be124c4afffaaeb3ba32b60dfee8ba6dc32189edfa2ad154ecb7a215
sha256sums = 6a8bd4bd183b328d4a6a2b14ec79ee01fc1566b418fb13daa38d62269afb9ea5
</evidence>
<summary>Source tarball from typosquatted domain pypi.io.</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed .SRCINFO. Status: UNSAFE -- Source tarball hosted on typosquatted pypi.io domain.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## .SRCINFO

Status: UNSAFE

Summary: Source tarball hosted on typosquatted pypi.io domain.

Evidence (line 47):

```
source = https://pypi.io/packages/source/s/salt/salt-3008.3.tar.gz
source = salt.logrotate
source = httprequests.patch
sha256sums = 4bfa995ecde1491916bc9fd0abebf38d39eaca24c1e99e29c5046b97b8754f30
sha256sums = abecc3c1be124c4afffaaeb3ba32b60dfee8ba6dc32189edfa2ad154ecb7a215
sha256sums = 6a8bd4bd183b328d4a6a2b14ec79ee01fc1566b418fb13daa38d62269afb9ea5
```

Details:

The primary package source is defined as a tarball hosted on `pypi.io` (https://pypi.io/packages/source/s/salt/salt-3008.3.tar.gz). This domain is a typosquat of the official Python Package Index (PyPI) domain `pypi.org` or `files.pythonhosted.org`. Using a typosquatted domain to distribute a package tarball is a textbook supply-chain attack vector, as it allows a malicious actor to serve a modified archive containing arbitrary code. The SHA256 checksum provided (`4bfa995ecde1491916bc9fd0abebf38d39eaca24c1e99e29c5046b97b8754f30`) authenticates the file from the attacker-controlled domain, not the legitimate upstream source, and thus does not mitigate the risk. This is a clear deviation from standard packaging practices and represents a significant security threat.

---

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,470
  Completion Tokens: 9,906
  Total Tokens: 35,376
  Total Cost: $0.004121
  Execution Time: 41.84 seconds

Final Status: UNSAFE


Issues Found:

.SRCINFO: [UNSAFE] Source tarball hosted on typosquatted pypi.io domain. / The primary package source is defined as a tarball hosted on `pypi.io` (https://pypi.io/packages/source/s/salt/salt-3008.3.tar.gz). This domain is a typosquat of the official Python Package Index (PyPI) domain `pypi.org` or `files.pythonhosted.org`. Using a typosquatted domain to distribute a package tarball is a textbook supply-chain attack vector, as it allows a malicious actor to serve a modified archive containing arbitrary code. The SHA256 checksum provided (`4bfa995ecde1491916bc9fd0abebf38d39eaca24c1e99e29c5046b97b8754f30`) authenticates the file from the attacker-controlled domain, not the legitimate upstream source, and thus does not mitigate the risk. This is a clear deviation from standard packaging practices and represents a significant security threat.
