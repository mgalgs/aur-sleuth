---
package: linux-xanmod-lts-linux-headers-bin-x64v3
pkgbase: linux-xanmod-lts-linux-bin-x64v3
pkgver: 6.18.57
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11810
completion_tokens: 2958
total_tokens: 14768
cost: 0.001613066
execution_time: 40.71
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T03:21:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO with upstream sources and checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard prebuilt kernel package; no malicious behavior or injected code found."
---

linux-xanmod-lts-linux-headers-bin-x64v3 is built from linux-xanmod-lts-linux-bin-x64v3
Materializing linux-xanmod-lts-linux-headers-bin-x64v3 from local mirror...
Materialized linux-xanmod-lts-linux-headers-bin-x64v3
Analyzing linux-xanmod-lts-linux-headers-bin-x64v3 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD top-level scope. The top-level code performs a `curl` request to the package's own upstream source provider (SourceForge Xanmod RSS feed) and parses it with `xmllint` to derive source URLs. This is a routine source-URL resolution pattern and does not download or execute any payload, exfiltrate local data, or modify system files.

The `eval` statements at the bottom only define the `package_*()` functions; they do not call them. Function bodies such as `_package()` and `_package-headers()` are not executed during `--printsrcinfo`. The dynamic `eval` is slightly unusual but is limited to constructing standard packaging function definitions from constant package-name values, so it is not malicious in this context.
</details>
<evidence>
</evidence>
<summary>
Top-level source resolution is benign; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level source resolution is benign; no malicious code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only package metadata: package name, version, description, license, architecture, upstream URLs, source file URLs, PGP signing keys, and SHA-256 checksums. It contains no build, install, or post-install logic, no shell commands, and no executable content.

The sources point to the official Xanmod project releases on SourceForge, which matches the package's stated purpose of providing prebuilt Xanmod LTS kernel images and headers. Both source files have pinned checksums (`sha256sums`) and the package lists `validpgpkeys`, which is consistent with normal Arch packaging practice. No suspicious network endpoints, obfuscated content, or unexpected file operations are present.

Using prebuilt `.deb` artifacts from the project's own upstream release area is a trust/hygiene consideration but not evidence of a supply-chain attack. Nothing in this file deviates from standard packaging metadata or indicates injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Metadata-only .SRCINFO with upstream sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO with upstream sources and checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD resolves the Xanmod LTS prebuilt `.deb` URLs from the project's official SourceForge RSS feed, downloads the image and headers packages, verifies them with pinned sha256 checksums, extracts the `data.tar.xz` payloads, and repackages the kernel modules and headers into Arch packages. The network activity is limited to Xanmod's own upstream SourceForge project and the declared source downloads; there are no unrelated hosts, no `curl | bash` style execution, no obfuscated/encoded commands, and no exfiltration of local data.

The `eval` statements at the end are a standard split-package naming pattern; they create `package_<name>` functions from the statically defined `pkgname` values and execute only known packaging logic. The `prepare()` function extracts and cleans only the downloaded `.deb` files. Dynamic URL resolution from upstream RSS is a supply-chain consideration, but the downloaded artifacts are checksum-pinned and the source is the package's own upstream project, so this is consistent with ordinary AUR packaging practices.
</details>
<evidence></evidence>
<summary>
Safe: standard prebuilt kernel package; no malicious behavior or injected code found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard prebuilt kernel package; no malicious behavior or injected code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,810
  Completion Tokens: 2,958
  Total Tokens: 14,768
  Total Cost: $0.001613
  Execution Time: 40.71 seconds

Final Status: SAFE


No issues found.
