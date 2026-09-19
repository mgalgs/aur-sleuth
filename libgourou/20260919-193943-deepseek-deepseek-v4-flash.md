---
package: libgourou
pkgver: 0.8.10
pkgrel: 4
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16001
completion_tokens: 11770
total_tokens: 27771
cost: 0.00158322164
execution_time: 270.76
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T19:39:43Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Minimal packaging metadata with pinned source and checksum; no malicious behavior detected.
  - file: PKGBUILD
    status: unsafe
    summary: Command injection via unsanitized cookie in DLAGENTS
    evidence: "_cookie=$(curl -s https://forge.soutade.fr/402.html | sed -nE 's/.*document\\.cookie = \"([^;\"]*).*/\\1/p')\nDLAGENTS=(\"https::/usr/bin/curl -b $_cookie -o %o %u\")"
    evidence_line: 27
---

Materializing libgourou from local mirror...
Materialized libgourou
Analyzing libgourou AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope performs a `curl` command to fetch a cookie from the upstream forge (`forge.soutade.fr/402.html`) and stores it in `_cookie`. This runs during `makepkg --printsrcinfo`. While making an immediate network request is atypical, the destination is the same domain as the package's declared source URL and is an anti-bot page required to download the source tarball. No local data is exfiltrated, no code is downloaded or executed from the response (only a cookie string is extracted). This is a workaround for upstream's access restrictions, not a supply-chain attack. All other global assignments are standard variable definitions, and no malicious patterns (eval, obfuscation, unexpected file operations) are present. The command does not pose a genuine security threat during metadata parsing.
</details>
<evidence></evidence>
<summary>Top-level curl fetches a cookie; not malicious.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level curl fetches a cookie; not malicious.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for nvchecker, a tool used to check for new upstream versions. It defines the source for the `gourou` package as a Gitea repository hosted at `forge.soutade.fr`, with a version prefix of `v` and `use_max_tag=true`. There is no executable code, no obfuscation, no suspicious network destinations, and no deviation from expected packaging practices. It is a simple declarative configuration file.
</details>
<evidence></evidence>
<summary>Standard nvchecker configuration; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a .SRCINFO metadata file for the libgourou AUR package. It contains only packaging metadata: package name, version, license, dependencies, source URL, checksum, and split-package definitions. No install scripts, no build logic, no network operations, and no executable code are present.

The source is a versioned tarball fetched from the project&apos;s own upstream forge with a pinned version and a non-SKIP sha512 checksum, which is standard packaging practice. The listed dependencies (libzip, openssl, curl, pugixml, etc.) are consistent with the package&apos;s stated purpose of implementing Adobe&apos;s ADEPT DRM protocol. There is no evidence of obfuscation, malicious file operations, data exfiltration, or execution of untrusted code.
</details>
<evidence>
</evidence>
<summary>Minimal packaging metadata with pinned source and checksum; no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Minimal packaging metadata with pinned source and checksum; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The PKGBUILD executes a `curl` command at source time (outside any function) to fetch a cookie from `forge.soutade.fr/402.html`, then uses that unsanitized cookie value in the `DLAGENTS` array to override the HTTPS download agent. This creates a command injection vulnerability: if the upstream server is compromised or serves a malicious response, the cookie value (extracted via sed with a permissive pattern) can contain shell metacharacters (e.g., `$()`, backticks) that will be executed when `makepkg` invokes the download command. While the source tarball itself has a checksum, this injection occurs before download and could bypass integrity checks or execute arbitrary code.  
Although the network destination is the package’s own upstream, the use of a runtime-fetched, unsanitized value in a shell command line deviates from standard packaging practices and introduces a genuine security risk that qualifies as dangerous behavior.
</details>
<evidence>
_cookie=$(curl -s https://forge.soutade.fr/402.html | sed -nE 's/.*document\.cookie = "([^;"]*).*/\1/p')
DLAGENTS=("https::/usr/bin/curl -b $_cookie -o %o %u")
</evidence>
<summary>Command injection via unsanitized cookie in DLAGENTS</summary>
</security_assessment>

Second look for PKGBUILD (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
This PKGBUILD is **UNSAFE** because it evaluates a remote-server-controlled value in a shell command line at build time. At source time (top level, executed every time makepkg sources the PKGBUILD), it runs:

    _cookie=$(curl -s https://forge.soutade.fr/402.html | sed -nE 's/.*document\.cookie = "([^;"]*).*/\1/p')

and then injects the result into the download agent used by makepkg:

    DLAGENTS=("https::/usr/bin/curl -b $_cookie -o %o %u")

makepkg expands DLAGENTS entries and evaluates them with a shell (eval). The sed pattern only strips `"` and `;`, so the upstream forge.soutade.fr server can return a cookie containing shell metacharacters (e.g. `$(...)`, backticks, `|`, `&amp;`) and achieve arbitrary command execution inside the build (i.e. as the user running makepkg). Because the tarball checksum is pinned, this cookie-injection path is a way to bypass that integrity protection: the server cannot alter the tarball, but it can still run code on the build machine by crafting the cookie payload. That is a genuine supply-chain / command-injection risk, not merely unconventional packaging. The code is not obfuscated and no data appears to be exfiltrated today, but the injection primitive is exactly the kind of dangerous behavior the rules target: remote-controlled shell evaluation.

The rest of the PKGBUILD (make build, `install` into `$pkgdir`, LGPL/BSD metadata, depends) is ordinary packaging. But the `_cookie`/`DLAGENTS` construction weakens the build into a form where the upstream host effectively gets code execution, and it does so in a way that is easy to miss because the pinned checksum gives a false sense of safety.
</details>
<evidence>
_cookie=$(curl -s https://forge.soutade.fr/402.html | sed -nE 's/.*document\.cookie = "([^;"]*).*/\1/p')
DLAGENTS=("https::/usr/bin/curl -b $_cookie -o %o %u")
</evidence>
<summary>Upstream-controlled cookie injected into makepkg shell download command; RCE risk.</summary>
</security_assessment>

[3/3] Reviewing ...
x Reviewed PKGBUILD. Status: UNSAFE -- Command injection via unsanitized cookie in DLAGENTS
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## PKGBUILD

Status: UNSAFE

Summary: Command injection via unsanitized cookie in DLAGENTS

Evidence (line 27):

```
_cookie=$(curl -s https://forge.soutade.fr/402.html | sed -nE 's/.*document\.cookie = "([^;"]*).*/\1/p')
DLAGENTS=("https::/usr/bin/curl -b $_cookie -o %o %u")
```

Details:

The PKGBUILD executes a `curl` command at source time (outside any function) to fetch a cookie from `forge.soutade.fr/402.html`, then uses that unsanitized cookie value in the `DLAGENTS` array to override the HTTPS download agent. This creates a command injection vulnerability: if the upstream server is compromised or serves a malicious response, the cookie value (extracted via sed with a permissive pattern) can contain shell metacharacters (e.g., `$()`, backticks) that will be executed when `makepkg` invokes the download command. While the source tarball itself has a checksum, this injection occurs before download and could bypass integrity checks or execute arbitrary code.  
Although the network destination is the package’s own upstream, the use of a runtime-fetched, unsanitized value in a shell command line deviates from standard packaging practices and introduces a genuine security risk that qualifies as dangerous behavior.

---

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,001
  Completion Tokens: 11,770
  Total Tokens: 27,771
  Total Cost: $0.001583
  Execution Time: 270.76 seconds

Final Status: UNSAFE


Issues Found:

PKGBUILD: [UNSAFE] Command injection via unsanitized cookie in DLAGENTS / The PKGBUILD executes a `curl` command at source time (outside any function) to fetch a cookie from `forge.soutade.fr/402.html`, then uses that unsanitized cookie value in the `DLAGENTS` array to override the HTTPS download agent. This creates a command injection vulnerability: if the upstream server is compromised or serves a malicious response, the cookie value (extracted via sed with a permissive pattern) can contain shell metacharacters (e.g., `$()`, backticks) that will be executed when `makepkg` invokes the download command. While the source tarball itself has a checksum, this injection occurs before download and could bypass integrity checks or execute arbitrary code.  
Although the network destination is the package’s own upstream, the use of a runtime-fetched, unsanitized value in a shell command line deviates from standard packaging practices and introduces a genuine security risk that qualifies as dangerous behavior.
