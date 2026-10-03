---
package: docker-credential-atcr-git
pkgver: 0.1.4.r194.g3232ecb
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18472
completion_tokens: 4812
total_tokens: 23284
cost: 0.000786688
execution_time: 76.73
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T07:32:07Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license text; no executable or malicious content.
  - file: LICENSE
    status: safe
    summary: Plain license file, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE license compliance configuration file.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR Go PKGBUILD; no malicious code detected.
  - file: .SRCINFO
    status: unsafe
    summary: Source points to unexpected untrusted domain
    evidence: "source = docker-credential-atcr-git::git+https://tangled.org/did:plc:pddp4xt5lgnv2qsegbzzs4xg/at-container-registry.git"
    evidence_line: 14
---

Materializing docker-credential-atcr-git from local mirror...
Materialized docker-credential-atcr-git
Analyzing docker-credential-atcr-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. There are no command substitutions, backtick executions, or other executable code in the global scope that would run when the file is sourced by `makepkg --printsrcinfo`. The `source` array assignment uses a non-standard DID-based URL, but this is a static string and does not cause any network activity or code execution during parsing. No dangerous constructs are present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain software license text (an ISC-style license) attributed to Arch Linux Contributors. It contains no executable code, no network operations, no obfuscation, and no file or system modifications. It is a standard packaging file with no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard license text; no executable or malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, LICENSE, PKGBUILD...
[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license text; no executable or malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plaintext license file (ISC-style) attributed to "Arch Linux Contributors". It contains no executable code, network operations, obfuscation, or any other potentially malicious behavior. It is a standard open-source license used for AUR packaging.
</details>
<evidence>
</evidence>
<summary>Plain license file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/5] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Plain license file, no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file (REUSE.toml) that declares SPDX copyright and license annotations for a set of packaging-related files (PKGBUILD, .SRCINFO, .install, .service, etc.). It contains no executable code, no network requests, no obfuscation, and no system modifications. It is a standard compliance artifact for declaring licensing metadata. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard REUSE license compliance configuration file.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE license compliance configuration file.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The `.SRCINFO` file declares a `source` URL pointing to `tangled.org`, a domain unrelated to the official project (`atcr.io`). This is a significant red flag: instead of fetching from the legitimate upstream, the package would download and build code from an unverified third-party host. Combined with `sha256sums = SKIP`, there is no integrity check on the fetched content. This pattern matches supply-chain attack vectors where malicious code is inserted via a compromised or attacker-controlled repository. The source URL is not a mirror of the official project; it uses a DID-based path under `tangled.org`, which is not a standard host for this package.
</details>
<evidence>
source = docker-credential-atcr-git::git+https://tangled.org/did:plc:pddp4xt5lgnv2qsegbzzs4xg/at-container-registry.git
</evidence>
<summary>Source points to unexpected untrusted domain</summary>
</security_assessment>

LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Go packaging practices for AUR `-git` packages. It clones the declared upstream source, initializes a Go workspace, downloads dependencies, builds the binary, runs tests, and installs the result. There is no obfuscation, no unexpected network operations (other than the declared `git clone` and standard `go mod download`), no file exfiltration, and no execution of attacker-controlled scripts. The source URL uses an unconventional DID-based host (`tangled.org`) rather than the official `atcr.io` domain, which is a supply-chain trust consideration but not malicious code within the PKGBUILD itself. The package does not contain any of the genuinely malicious behaviors described in the analysis guidelines.
</details>
<evidence></evidence>
<summary>Standard AUR Go PKGBUILD; no malicious code detected.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR Go PKGBUILD; no malicious code detected.
Second look for .SRCINFO (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The original verdict stands. The `.SRCINFO` directs `makepkg` to clone source code from `tangled.org`, an unrelated host, not the official upstream (`atcr.io`). This is not a hygiene concern or an unpinned VCS branch of the official repo — it is a substitution of the entire source origin. The rules permit VCS sources and SKIP checksums, but they specifically warn that pulling code from an unexpected host is suspicious. Combined with the fact that this code will be compiled and executed on the user's system, this matches the genuinely malicious pattern of "downloading code or binaries from an untrusted/unexpected host and executing them." There is no evidence that `tangled.org` is a legitimate mirror or fork authorized by the project; the DID-based path suggests obfuscation. This is a clear supply-chain attack vector.
</details>
<evidence>
source = docker-credential-atcr-git::git+https://tangled.org/did:plc:pddp4xt5lgnv2qsegbzzs4xg/at-container-registry.git
</evidence>
<summary>Source points to unrelated, untrusted host</summary>
</security_assessment>

[5/5] Reviewing ...
x Reviewed .SRCINFO. Status: UNSAFE -- Source points to unexpected untrusted domain
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## .SRCINFO

Status: UNSAFE

Summary: Source points to unexpected untrusted domain

Evidence (line 14):

```
source = docker-credential-atcr-git::git+https://tangled.org/did:plc:pddp4xt5lgnv2qsegbzzs4xg/at-container-registry.git
```

Details:

The `.SRCINFO` file declares a `source` URL pointing to `tangled.org`, a domain unrelated to the official project (`atcr.io`). This is a significant red flag: instead of fetching from the legitimate upstream, the package would download and build code from an unverified third-party host. Combined with `sha256sums = SKIP`, there is no integrity check on the fetched content. This pattern matches supply-chain attack vectors where malicious code is inserted via a compromised or attacker-controlled repository. The source URL is not a mirror of the official project; it uses a DID-based path under `tangled.org`, which is not a standard host for this package.

---

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,472
  Completion Tokens: 4,812
  Total Tokens: 23,284
  Total Cost: $0.000787
  Execution Time: 76.73 seconds

Final Status: UNSAFE


Issues Found:

.SRCINFO: [UNSAFE] Source points to unexpected untrusted domain / The `.SRCINFO` file declares a `source` URL pointing to `tangled.org`, a domain unrelated to the official project (`atcr.io`). This is a significant red flag: instead of fetching from the legitimate upstream, the package would download and build code from an unverified third-party host. Combined with `sha256sums = SKIP`, there is no integrity check on the fetched content. This pattern matches supply-chain attack vectors where malicious code is inserted via a compromised or attacker-controlled repository. The source URL is not a mirror of the official project; it uses a DID-based path under `tangled.org`, which is not a standard host for this package.
