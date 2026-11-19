---
package: unreal-engine-css-bin
pkgver: 5.6.1.css83
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 27723
completion_tokens: 7101
total_tokens: 34824
cost: 0.003815175
execution_time: 57.27
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T19:09:48Z
file_verdicts:
  - file: LICENSE.md
    status: safe
    summary: Licensing file, no security concerns.
  - file: LICENSE
    status: safe
    summary: License file only, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata; no malicious content.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE metadata file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious code.
  - file: setup-dotnet-permissions.patch
    status: safe
    summary: Safe conditional chmod on dotnet binary.
  - file: download-gh-asset
    status: safe
    summary: Secure DLAGENT for GitHub asset download.
  - file: prefetch-engine-sources
    status: safe
    summary: Standard AUR prefetch helper, no malicious behavior.
  - file: unreal-engine-css-bin.install
    status: safe
    summary: Benign post-install with group setup and registration hints.
---

Materializing unreal-engine-css-bin from local mirror...
Materialized unreal-engine-css-bin
Analyzing unreal-engine-css-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global (top-level) scope of this PKGBUILD consists only of standard variable assignments (pkgname, pkgver, arch, sources, checksums, etc.) and one command substitution that resolves the directory containing the PKGBUILD to derive the path to a helper script (`download-gh-asset`). This path is assigned to `UNREAL_ENGINE_CSS_DOWNLOAD_HELPER` and exported, and a corresponding `DLAGENTS` entry is defined. No network requests, code evaluation (eval, base64, etc.), or system modifications occur during sourcing. The `package()` function containing archive extraction and patching is not executed by `makepkg --printsrcinfo`. All top‑level code is benign packaging machinery.
</details>
<evidence></evidence>
<summary>No malicious code in global scope</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.md...
LLM auditresponse for LICENSE.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain markdown document referencing the Unreal Engine End User License Agreement. It contains no executable code, no network requests, no obfuscation, and no system-modifying operations. It is entirely benign and consistent with standard licensing documentation.
</details>
<evidence></evidence>
<summary>Licensing file, no security concerns.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.md, PKGBUILD...
[1/9] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed LICENSE.md. Status: SAFE -- Licensing file, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard permissive software license (ISC-style) for the package "unreal-engine-css-bin". It contains no executable code, no network references, no file operations, and no obfuscation. There are no indicators of malicious behavior or supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>License file only, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- License file only, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only descriptor for an Arch User Repository package. It contains no executable code, network requests, or system modifications. All source URLs point to the official upstream GitHub releases (`satisfactorymodding/UnrealEngine`), and every source entry includes a pinned SHA-256 checksum, ensuring integrity. The dependencies and options are standard for a prebuilt Unreal Engine binary. No suspicious content or deviation from safe AUR practices is present.
</details>
<evidence></evidence>
<summary>Declarative metadata; no malicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, download-gh-asset...
[3/9] Reviewing PKGBUILD, REUSE.toml, download-gh-asset...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata; no malicious content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TOML configuration for the REUSE tool, used to specify copyright and license annotations for files in the package. It contains only declarative metadata: default copyright and license for all files, with overrides for specific files (LICENSE.md and a patch file). There is no executable code, no network requests, no file operations, and no obfuscated content. This is a standard packaging metadata file with no security implications.
</details>
<evidence></evidence>
<summary>Standard REUSE metadata file; no security concerns.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, REUSE.toml, download-gh-asset, prefetch-engine-sources...
[4/9] Reviewing PKGBUILD, download-gh-asset, prefetch-engine-sources...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE metadata file; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for distributing a prebuilt binary. All sources are pinned with specific checksums (SHA-256), and no source uses `SKIP`. The custom download agent setup (`DLAGENTS`) is a standard technique for handling non-`http://`/`https://` protocols (here `ghasset://`), and it references a local helper script expected to be present in the PKGBUILD directory. There is no obfuscation, no unexpected network requests, and no execution of code from unvetted external sources. The `package()` function performs only expected operations: concatenating split archives, decompressing, extracting, applying a local patch, setting permissions, and installing files into `$pkgdir`. No system files outside the package scope are modified, and no data is exfiltrated. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums; no malicious code.</summary>
</security_assessment>

[5/9] Reviewing download-gh-asset, prefetch-engine-sources...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious code.
[5/9] Reviewing download-gh-asset, prefetch-engine-sources, setup-dotnet-permissions.patch...
LLM auditresponse for setup-dotnet-permissions.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the Unreal Engine build script `SetupDotnet.sh` to conditionally set the executable permission on the bundled dotnet binary. The change only runs `chmod u+x` when the file is not already executable (`[ -x &quot;$UE_DOTNET_DIR/dotnet&quot; ] || chmod u+x ...`). This is a minor optimization and does not involve any network access, obfuscation, or unintended system modifications. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Safe conditional chmod on dotnet binary.</summary>
</security_assessment>

[5/9] Reviewing download-gh-asset, prefetch-engine-sources, setup-dotnet-permissions.patch, unreal-engine-css-bin.install...
[6/9] Reviewing download-gh-asset, prefetch-engine-sources, unreal-engine-css-bin.install...
+ Reviewed setup-dotnet-permissions.patch. Status: SAFE -- Safe conditional chmod on dotnet binary.
LLM auditresponse for download-gh-asset:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `download-gh-asset` is a custom `makepkg` DLAGENT that securely downloads assets from the `satisfactorymodding/UnrealEngine` GitHub repository using the GitHub CLI (`gh`). It validates input against a strict URI pattern (`ghasset://satisfactorymodding/UnrealEngine/RELEASE-TAG/NUMERIC-ASSET-ID`), prevents directory traversal, and sanitizes environment variables to avoid injection. The download is performed via `gh api`, with integrity verified against the asset’s size and optional SHA256 digest from the GitHub API. Temporary files are handled safely with cleanup. There is no obfuscation, no execution of downloaded content, and no communication with unexpected hosts—all network activity targets the package’s official upstream repository. This is a well-implemented, security-conscious helper script and does not contain any malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Secure DLAGENT for GitHub asset download.</summary>
</security_assessment>

[7/9] Reviewing prefetch-engine-sources, unreal-engine-css-bin.install...
+ Reviewed download-gh-asset. Status: SAFE -- Secure DLAGENT for GitHub asset download.
LLM auditresponse for prefetch-engine-sources:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer convenience helper for pre-fetching GitHub asset sources defined in the PKGBUILD. It sources the local PKGBUILD (standard for such helpers), filters entries with a `::ghasset://` URL pattern, and invokes a local helper script (`download-gh-asset`) to download missing files into a cache directory. There is no obfuscation, no unexpected network destinations beyond the upstream GitHub URLs declared in the PKGBUILD, no exfiltration, and no execution of untrusted code. The script defers integrity verification to makepkg (pinned checksums). It represents a normal, non-malicious packaging workflow.
</details>
<evidence></evidence>
<summary>Standard AUR prefetch helper, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing unreal-engine-css-bin.install...
+ Reviewed prefetch-engine-sources. Status: SAFE -- Standard AUR prefetch helper, no malicious behavior.
LLM auditresponse for unreal-engine-css-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script is a standard post-install hook for a binary package that installs Unreal Engine CSS to /opt/unreal-engine-css. It performs expected system administration tasks: creating a system group, setting group ownership and ACLs for multi-user access, and checking whether the engine has been registered for the invoking user (by reading a local INI file). All operations are local and non‑malicious. There are no network requests, obfuscated code, unexpected file operations, or any behavior consistent with a supply‑chain attack. The script merely prints instructions for the user to register the engine and join the group — normal packaging practices.
</details>
<evidence></evidence>
<summary>Benign post-install with group setup and registration hints.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed unreal-engine-css-bin.install. Status: SAFE -- Benign post-install with group setup and registration hints.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,723
  Completion Tokens: 7,101
  Total Tokens: 34,824
  Total Cost: $0.003815
  Execution Time: 57.27 seconds

Final Status: SAFE


No issues found.
