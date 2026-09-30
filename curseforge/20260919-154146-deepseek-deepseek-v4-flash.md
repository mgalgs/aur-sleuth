---
package: curseforge
pkgver: 1.321.1_39714
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19460
completion_tokens: 6314
total_tokens: 25774
cost: 0.001347696
execution_time: 162.07
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T15:41:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned checksums; no code or malicious behavior.
  - file: .gitignore
    status: safe
    summary: A simple .gitignore with no security concerns.
  - file: LICENSE
    status: safe
    summary: Plain license file, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: "Benign nvchecker config: fetches upstream version string from official CurseForge endpoint."
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD is a standard package build with no malicious behavior detected.
---

Materializing curseforge from local mirror...
Materialized curseforge
Analyzing curseforge AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD only executes top-level variable/array assignments and a `package()` function definition. There is no command substitution, `eval`, `curl`, `wget`, base64 decoding, or any network activity at global scope, so `makepkg --printsrcinfo` (which sources the file and prints metadata) triggers no dangerous code.

The logic inside `package()` (`bsdtar`, `mv`, `sed -i`, `install`, `ln -s`) is out of scope for this gate because `--printsrcinfo` never runs function bodies; in any case, those operations are standard packaging behavior scoped to `${pkgdir}`. The source URL points to the project's own upstream (CurseForge distributed by Overwolf), and checksums are pinned, though no downloads occur during this step at all.
</details>
<evidence>
</evidence>
<summary>
Safe: --printsrcinfo only sources inert variable and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: --printsrcinfo only sources inert variable and function definitions.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an Arch User Repository package. It contains only package metadata: name, version, description, URL, architecture, license, dependencies, build options, and source/checksum entries. There is no script code, no `prepare()`/`build()`/`package()` functions, and no install hooks present in this file.

The source is fetched from `curseforge.overwolf.com`, which matches the package's stated upstream domain (`https://curseforge.com`), and both source entries have pinned SHA-256 checksums rather than being skipped. This is ordinary packaging practice. No suspicious network requests, obfuscation, file operations, or execution of untrusted code are present. The file is benign.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata with pinned checksums; no code or malicious behavior.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/5] Reviewing .gitignore, .nvchecker.toml, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned checksums; no code or malicious behavior.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It instructs Git to ignore all files except the PKGBUILD, .SRCINFO, .gitignore, and .nvchecker.toml. The bare `LICENSE` line is likely a typo (missing `!` prefix) but has no security impact—it simply does not negate the ignore for a LICENSE file, meaning any LICENSE file would still be ignored, which is harmless. There is no code, no network requests, no obfuscation, and no system modification. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>A simple .gitignore with no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, .nvchecker.toml, LICENSE, PKGBUILD...
[2/5] Reviewing .nvchecker.toml, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- A simple .gitignore with no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license document containing the Overwolf terms of use. It contains no executable code, no obfuscated commands, no network requests, and no system operations. It is a standard legal notice distributed as part of the package to comply with licensing requirements. There is no evidence of any malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Plain license file, no security concerns.</summary>
</security_assessment>

[3/5] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain license file, no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `nvchecker` configuration used to track upstream versions for the CurseForge AUR package. It fetches a version metadata YAML from `https://curseforge.overwolf.com/electron/linux/latest-linux.yml`, which is the official upstream endpoint for the CurseForge/Overwolf Linux application. The `regex` source type only retrieves and parses the version string; it does not download, execute, or install any code. The `from_pattern`/`to_pattern` fields merely reformat the version string (e.g., `1.2.3-45` to `1.2.3_45`) for proper Arch package versioning.

There is no obfuscation, no network exfiltration, no file system modification, and no execution of attacker-controlled content. The config only reads a public version manifest over HTTPS from the project's own upstream. Even the regex patterns are ordinary, non-executable version-matching syntax.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config: fetches upstream version string from official CurseForge endpoint.
</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config: fetches upstream version string from official CurseForge endpoint.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a prebuilt Electron-based application. It downloads a `.deb` package from `curseforge.overwolf.com` over HTTPS, verifies it with a pinned sha256 checksum, extracts the upstream `data.tar.xz` into the package directory, relocates the application directory, creates a symlink in `/usr/bin`, and installs license files. No scripts are executed from the downloaded content during the build, and no network requests are made outside the declared source URL.

The `package()` function performs only expected filesystem operations within `$pkgdir`, such as `mv`, `sed` on the `.desktop` file, `install`, and `ln -s`. There is no use of `eval`, `curl` piping to a shell, base64 decoding, obfuscated content, or any attempt to access or exfiltrate data outside the packaging scope. The pinned checksum and official upstream domain are consistent with legitimate packaging.

Overall, this PKGBUILD does not contain any signs of injected malicious code or supply-chain attack behavior. It is a conventional package definition for the CurseForge desktop client.
</details>
<evidence>
</evidence>
<summary>
PKGBUILD is a standard package build with no malicious behavior detected.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD is a standard package build with no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,460
  Completion Tokens: 6,314
  Total Tokens: 25,774
  Total Cost: $0.001348
  Execution Time: 162.07 seconds

Final Status: SAFE


No issues found.
