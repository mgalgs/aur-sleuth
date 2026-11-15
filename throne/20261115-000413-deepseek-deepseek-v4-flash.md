---
package: throne
pkgver: 1.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 18228
completion_tokens: 5866
total_tokens: 24094
cost: 0.00269640
execution_time: 44.25
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T00:04:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign gitignore file, no security concerns.
  - file: throne.sh
    status: safe
    summary: Standard wrapper script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious code
  - file: PKGBUILD
    status: safe
    summary: No malicious injection; standard upstream build.
---

Materializing throne from local mirror...
Materialized throne
Analyzing throne AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists solely of variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, build, package). There are no command substitutions, backtick expansions, or direct calls to executables at the global level that would execute when the PKGBUILD is sourced by `makepkg --printsrcinfo`. The functions that contain potentially security-relevant operations (network fetches, compilation steps) are not invoked during this phase. Therefore, parsing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution, safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution, safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only two lines: `*.tar.gz` and `routeprofiles/`. These are standard git ignore patterns that prevent version control from tracking tarballs and a directory named `routeprofiles`. There is no executable code, no network requests, no obfuscation, and nothing that could be interpreted as malicious or dangerous. The file is benign and serves only as a configuration for source control.
</details>
<evidence></evidence>
<summary>Benign gitignore file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, throne.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, throne.sh...
+ Reviewed .gitignore. Status: SAFE -- Benign gitignore file, no security concerns.
LLM auditresponse for throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `throne.sh` is a minimal wrapper script that launches the application binary `/usr/lib/throne/Throne` with the `-appdata` flag and passes all arguments through. There are no suspicious commands, network requests, file operations, or obfuscation. The script follows standard packaging practices for launching the main application.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed throne.sh. Status: SAFE -- Standard wrapper script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package `throne`. It defines package name, version, dependencies, sources, and checksums. The sources include a pinned tarball from the project's GitHub, a local shell script (`throne.sh`), and a VCS source from the project's own `routeprofiles.git` repository (branch `rule-set`, with checksum `SKIP`, which is standard for VCS sources). The file contains no executable code, no obfuscated content, no unexpected network requests, and no system modification instructions. The `SKIP` checksum on the VCS source is a normal AUR practice and not a sign of malice. There is no evidence of supply-chain injection, data exfiltration, backdoors, or any behavior outside standard packaging metadata.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata; no malicious code</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious code
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The PKGBUILD contains a `prepare()` function that runs `go install` commands fetching packages from `google.golang.org`, a non-standard and suspicious domain not associated with the official Go package registry or the project's own upstream. The `go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.36.12` and `go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.6.2` commands will download and execute Go toolchains from an unexpected host, potentially allowing an attacker to serve malicious code that runs during the build process. This deviates from standard packaging practices and exposes the AUR package to a supply-chain attack vector, as the domain `google.golang.org` is not a trusted or typical Go package source and could be controlled by an adversary.
</details>
<evidence>
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.36.12
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.6.2
</evidence>
<summary>Malicious Go package fetch from non-standard host</summary>
</security_assessment>

Second look for PKGBUILD (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The initial verdict incorrectly flagged `google.golang.org` as a non-standard domain. In fact, `google.golang.org` is the official hosting for Go protobuf and gRPC libraries, and using `go install` from that domain with pinned versions is normal upstream build behavior. This is not an injected supply-chain attack. The remainder of the PKGBUILD follows standard packaging practices: sources are from the project's own upstream (pinned tarball and a VCS source with SKIP checksum, which is normal for VCS), and all build/install steps are conventional for a Go/CMake project.
</details>
<evidence></evidence>
<summary>No malicious injection; standard upstream build.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious injection; standard upstream build.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,228
  Completion Tokens: 5,866
  Total Tokens: 24,094
  Total Cost: $0.002696
  Execution Time: 44.25 seconds

Final Status: SAFE


No issues found.
