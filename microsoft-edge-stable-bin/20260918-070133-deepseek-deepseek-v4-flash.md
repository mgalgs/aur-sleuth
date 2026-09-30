---
package: microsoft-edge-stable-bin
pkgver: 153.0.4234.46
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17435
completion_tokens: 3068
total_tokens: 20503
cost: 0.002088532026
execution_time: 54.73
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T07:01:32Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious code detected.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Benign install script with only informational notes.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard Edge launcher; minor quoting issue but safe.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions: `pkgname`, `pkgver`, `pkgrel`, `arch`, `url`, `license`, `depends`, `source`, `sha256sums`, and similar metadata. There are no top-level command substitutions, no calls to `curl`, `wget`, `eval`, `base64`, or other dangerous operations that would execute while the PKGBUILD is sourced by `makepkg --printsrcinfo`.

The `package()` function contains the actual install logic, including extracting the package and setting the sandbox SUID bit, but that function is not executed during `makepkg --printsrcinfo`. That behavior is also consistent with packaging this browser's binary and will be covered in the full audit. Nothing in the top-level scope poses a risk for this narrow safety gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is standard metadata only; no malicious code executes during parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is standard metadata only; no malicious code executes during parsing.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for `nvchecker`, a tool used by AUR maintainers to monitor upstream releases. It defines a routine version check for the `microsoft-edge-stable-bin` package by scraping the official Microsoft repository's `Packages` file using a regex. There is no executable content, no network requests outside the legitimate upstream URL, no obfuscation, and no signs of malicious intent. It is safe.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
[1/7] Reviewing .SRCINFO, .gitignore, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .gitignore, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` that lists file extensions commonly generated during packaging (`*.log`, `*.zst`, `*.deb`, `*.rpm`). There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. No security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It declares sources from Microsoft&#39;s official repository (`packages.microsoft.com`), includes a local shell script and a license PDF, and provides SHA256 checksums for all three sources. There are no executable commands, obfuscated code, unexpected network destinations, or any behavior that deviates from standard packaging practices. The file is purely declarative and contains no logic that could perform malicious actions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a prebuilt binary package. It downloads the official Microsoft Edge .deb from the legitimate Microsoft repository (`packages.microsoft.com`), verifies it with a pinned sha256sum, and extracts it. The `package()` function performs routine operations: extracting the archive, setting the suid sandbox bit (standard for Chromium-based browsers), resizing icons, installing a launcher script, and placing the license file. There are no obfuscated commands, no unexpected network requests, no exfiltration, no backdoors, and no deviation from expected behavior. The only external file referenced is the launcher script `microsoft-edge-stable.sh`, which is included as a source with its own checksum—this is normal for AUR packages and not inherently suspicious.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious code detected.</summary>
</security_assessment>

[5/7] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious code detected.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It defines colored output helper functions and `post_install`/`post_upgrade` hooks that simply print informational notes to the user. There are no network requests, file operations, system modifications, or any other potentially dangerous actions. The content is entirely benign and follows typical AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Benign install script with only informational notes.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Benign install script with only informational notes.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching Microsoft Edge. It reads optional user flags from a configuration file under `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf` and passes them to the Edge binary.  
The script does not download, fetch, or execute any code from external sources. There is no obfuscation, no network connections, and no tampering with system files.  

One minor security observation: the `EDGE_USER_FLAGS` variable is not quoted when used in the `exec` line (`$EDGE_USER_FLAGS` instead of `"$EDGE_USER_FLAGS"`). This could theoretically allow word splitting and command injection if a user deliberately places malicious content in their own config file. However, the config file is entirely user-controlled; this is a coding hygiene issue rather than evidence of a supply-chain attack. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard Edge launcher; minor quoting issue but safe.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard Edge launcher; minor quoting issue but safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,435
  Completion Tokens: 3,068
  Total Tokens: 20,503
  Total Cost: $0.002089
  Execution Time: 54.73 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
