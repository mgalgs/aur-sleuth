---
package: stremio-linux-shell
pkgver: 1.2.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 21681
completion_tokens: 4461
total_tokens: 26142
cost: 0.00275427
execution_time: 25.18
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T00:23:49Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Safe configuration file for version checking.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: LICENSE
    status: safe
    summary: Plain license file, no executable content, safe.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with pinned sources and standard tooling.
  - file: REUSE.toml
    status: safe
    summary: Declarative REUSE metadata file, no security concerns.
  - file: stremio.sh
    status: safe
    summary: "Safe: standard application launcher, no suspicious behavior."
---

Materializing stremio-linux-shell from local mirror...
Cloning https://aur.archlinux.org/stremio-linux-shell.git...
Cloned stremio-linux-shell
Analyzing stremio-linux-shell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable assignments (pkgname, pkgver, depends, source, etc.) and function definitions (prepare, build, package). There are no command substitutions executed at the top level that would download or run code, exfiltrate data, or perform any dangerous operations. During `makepkg --printsrcinfo`, the functions are not executed—only the top-level is sourced. Therefore, running this command on this PKGBUILD is safe.

The content inside `prepare()`, `build()`, and `package()` is out of scope for this specific gate and will be audited separately when the full PKGBUILD is reviewed.
</details>
<evidence></evidence>
<summary>Safe for printsrcinfo, no top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for printsrcinfo, no top-level execution.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration file for nvchecker, a tool that checks for new upstream releases.  
It specifies that versions are tracked via GitHub tags from the official repository `Stremio/stremio-linux-shell`,  
using `use_max_tag = true` and standard prefix/pattern replacements.  
There are no commands, no network requests to unexpected hosts, and no obfuscation.  
This is a declarative, benign configuration and does not introduce any security risk.
</details>
<evidence>
</evidence>
<summary>Safe configuration file for version checking.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe configuration file for version checking.
[1/8] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for an Arch User Repository (AUR) package. It lists patterns for directories (`pkg/`, `src/`) and file types (`*.tar.zst`, `*.tar.gz`, `*.tar.bz2`, `*.log`) generated during the packaging and build process. No code, network requests, or system modifications are present. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security concerns.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore, LICENSE, LICENSE...
[2/8] Reviewing .SRCINFO, LICENSE, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch User Repository package metadata file. It defines the package name, version, dependencies, and sources. All source URLs point to the official Stremio GitHub repository with pinned version tags and corresponding SHA256 checksums. There is no embedded code, obfuscation, suspicious network requests, or any deviation from normal packaging practices. The file contains only declarative metadata and is safe.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, LICENSE, LICENSE, PKGBUILD...
[3/8] Reviewing LICENSE, LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text, identical to the commonly used ISC template. It contains no executable code, no obfuscation, no network requests, no file operations, and no system modifications. There is no evidence of malicious behavior or supply-chain attack. The copyright attribution to "Arch Linux Contributors" is unconventional but not suspicious—it simply indicates the license was adopted by the project for its packaging scripts. The file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Plain license file, no executable content, safe.</summary>
</security_assessment>

[3/8] Reviewing LICENSE, LICENSE, PKGBUILD, REUSE.toml...
[4/8] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Plain license file, no executable content, safe.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard permissive license (ISC-style) used by Arch Linux Contributors. It contains no executable code, no hidden instructions, and no network or file operations. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[4/8] Reviewing LICENSE, PKGBUILD, REUSE.toml, stremio.sh...
[5/8] Reviewing PKGBUILD, REUSE.toml, stremio.sh...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a clean, well-structured PKGBUILD for the legitimate Stremio Linux client. The source is pinned to a specific tagged release (v1.2.2) from the official GitHub repository with verified SHA-256 checksums. All build steps use standard Rust tooling (`cargo fetch --locked`, `cargo build --release --frozen`) with no unexpected network access or code execution. The `sed` command in `package()` that removes `DBusActivatable=true` from the desktop file is a routine packaging adjustment, not malicious. The package uses pinned checksums for both the upstream tarball and the auxiliary `stremio.sh` script, making the supply chain well-defined and reproducible.</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD with pinned sources and standard tooling.</summary>
</security_assessment>

[6/8] Reviewing REUSE.toml, stremio.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with pinned sources and standard tooling.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE.toml configuration for the REUSE compliance tool. It contains only a version field and an annotation block that maps file patterns to a copyright holder (&quot;Arch Linux contributors&quot;) and a license identifier (&quot;0BSD&quot;). There are no executable statements, no network operations, no file manipulation, and no obfuscated content. This is a standard, harmless metadata file.
</details>
<evidence>
</evidence>
<summary>Declarative REUSE metadata file, no security concerns.</summary>
</security_assessment>

[7/8] Reviewing stremio.sh...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative REUSE metadata file, no security concerns.
LLM auditresponse for stremio.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for launching the Stremio application. It sets required environment variables, detects NVIDIA GPUs to configure the GTK renderer, optionally starts a local web server component (`stremio-web`) on localhost, and launches the main application. All operations are within the expected scope of the package. No obfuscated code, unexpected network requests, or dangerous command constructs are present. The script performs no data exfiltration, no downloads from untrusted sources, and no system modifications beyond its own application context.
</details>
<evidence>
</evidence>
<summary>
Safe: standard application launcher, no suspicious behavior.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed stremio.sh. Status: SAFE -- Safe: standard application launcher, no suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,681
  Completion Tokens: 4,461
  Total Tokens: 26,142
  Total Cost: $0.002754
  Execution Time: 25.18 seconds

Final Status: SAFE


No issues found.
