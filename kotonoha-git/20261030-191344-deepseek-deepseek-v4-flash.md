---
package: kotonoha-git
pkgver: 0.3.0.r254.g5a98630
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13797
completion_tokens: 6136
total_tokens: 19933
cost: 0.002372279
execution_time: 51.91
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T19:13:43Z
file_verdicts:
  - file: kotonoha-git.install
    status: safe
    summary: Clean post-removal hook, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no supply-chain attack indicators found.
  - file: .SRCINFO
    status: safe
    summary: Metadata file only; no executable or suspicious content.
  - file: kotonoha-rebuild-bridge.hook
    status: safe
    summary: Standard pacman hook file with no security issues.
---

Materializing kotonoha-git from local mirror...
Materialized kotonoha-git
Analyzing kotonoha-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. In this PKGBUILD, the global scope consists solely of static variable assignments, dependency arrays, the `source` array, and `sha256sums`. There are no top-level command substitutions, no `eval`, no `curl`/`wget`/`git` commands, no network operations, and no encoded or obfuscated payloads that would execute during sourcing.

The `pkgver()`, `build()`, `check()`, and `package()` functions contain the more active logic, but those are not executed by `makepkg --printsrcinfo`; they are deferred to the full PKGBUILD audit. The `source` array references the package's own upstream git repository plus a local hook file, which is normal packaging practice and does not run during this step. The `SKIP` checksum is also not relevant at this stage because no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is static; printsrcinfo executes no malicious code.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is static; printsrcinfo executes no malicious code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, kotonoha-git.install...
LLM auditresponse for kotonoha-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains a standard post_remove() hook that cleans up package-specific files under /var/lib/kotonoha/ after package removal. It deletes only two specific files (libkoto-layer.so and build.lock) and attempts to remove the parent directory if empty. There are no network requests, obfuscation, dangerous command patterns, or operations that manipulate data outside the package's own scope. This is normal AUR packaging practice and does not indicate malicious behavior.
</details>
<evidence></evidence>
<summary>Clean post-removal hook, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, kotonoha-git.install, kotonoha-rebuild-bridge.hook...
[1/4] Reviewing .SRCINFO, PKGBUILD, kotonoha-rebuild-bridge.hook...
+ Reviewed kotonoha-git.install. Status: SAFE -- Clean post-removal hook, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It fetches the upstream source from the project&#39;s own GitHub repository, uses normal Python build tools (python -m build, python -m installer), and installs files via install commands. The sha256sums entry of &#39;SKIP&#39; for the git source is required and expected for VCS sources; the other source file has a valid checksum. There is no obfuscated code, no network requests to unexpected hosts, no data exfiltration, and no execution of untrusted downloaded code. The symlink creation points to a path that appears to be managed by the package&#39;s own post-transaction hook, consistent with the package&#39;s stated functionality (Wayland lyrics overlay requiring a native bridge). The build steps are entirely standard and transparent.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no supply-chain attack indicators found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, kotonoha-rebuild-bridge.hook...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no supply-chain attack indicators found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only description of the package. It contains no executable code, no network requests, and no obfuscated strings. All sources point to the project's own upstream repository (github.com/locez/kotonoha) and a local hook file, both standard in AUR packaging. The use of `SKIP` for the VCS source checksum is normal and expected for git-based packages. No malicious or suspicious behavior is present in this file.
</details>
<evidence></evidence>
<summary>Metadata file only; no executable or suspicious content.</summary>
</security_assessment>

[3/4] Reviewing kotonoha-rebuild-bridge.hook...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file only; no executable or suspicious content.
LLM auditresponse for kotonoha-rebuild-bridge.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman hook (alpm hook) that triggers the execution of a local script `/usr/lib/kotonoha/rebuild-bridge` whenever specific Qt and Kotonoha packages are installed or upgraded.  

The hook contains no network requests, obfuscated code, encoded blobs, or dangerous command patterns. Its structure follows the standard INI-like format for pacman hooks, which are a widely accepted mechanism in Arch Linux for performing post-transaction actions (e.g., rebuilding native bindings against a newly updated library ABI).  

The `Exec` directive points to an absolute path within the installed package itself, not a remote resource. The `Depends` and `Target` directives are standard hook grammar used for correct sequencing and triggering. While the downstream logic of `rebuild-bridge` would require its own audit, the hook file *itself* is a safe, conventional packaging artifact with no indicators of supply-chain compromise.
</details>
<evidence>
</evidence>
<summary>Standard pacman hook file with no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed kotonoha-rebuild-bridge.hook. Status: SAFE -- Standard pacman hook file with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,797
  Completion Tokens: 6,136
  Total Tokens: 19,933
  Total Cost: $0.002372
  Execution Time: 51.91 seconds

Final Status: SAFE


No issues found.
