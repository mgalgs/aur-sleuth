---
package: mcpp-bin
pkgver: 2026.8.24.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 24023
completion_tokens: 2392
total_tokens: 26415
cost: 0.0016535218
execution_time: 144.59
files_reviewed: 5
files_skipped: 0
files_unauditable: 3
unpinned_sources: 0
date: 2026-08-24T07:45:12Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Simple launcher wrapper, no suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious behavior detected.
  - file: src/mcpp-2026.8.24.1-linux-x86_64/mcpp
    status: safe
    summary: Safe wrapper script for bundled binary.
  - file: src/mcpp-2026.8.24.1-linux-x86_64/README.md
    status: safe
    summary: Documentation file with no executable content.
  - file: src/mcpp-2026.8.24.1-linux-x86_64/LICENSE
    status: safe
    summary: Standard license file, no security issues.
---

Cloning https://aur.archlinux.org/mcpp-bin.git...
Cloned mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only standard variable assignments, source definitions, and a `package()` function that is not executed during the `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` commands. There are no top-level command substitutions, no `pkgver()` function, and no code that would execute arbitrary commands during sourcing. The source URLs point to the package's own GitHub releases and a local file (`mcpp.sh`), which is standard. Checksums are present for the architecture-specific tarballs, and the `SKIP` for the shared source array is a common practice. No suspicious network requests, obfuscated code, or dangerous operations are present in the global scope. Running the specified commands is safe.
</details>
<evidence></evidence>
<summary>PKGBUILD has no dangerous global-scope code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD has no dangerous global-scope code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, mcpp.sh...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a straightforward launcher wrapper that sets two environment variables (MCPP_HOME and MCPP_VENDORED_XLINGS) and executes the mcpp binary from `/opt/mcpp/bin/`. There is no encoded, obfuscated, or dangerous code. No network requests, file exfiltration, unexpected system modifications, or backdoors are present. The script only performs its stated purpose of redirecting writable paths away from the read-only `/opt/mcpp` installation, which is standard packaging practice for self-contained binaries that require a writable runtime directory.</details>
<evidence></evidence>
<summary>Simple launcher wrapper, no suspicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Simple launcher wrapper, no suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary release. It fetches tarballs from the project's own GitHub releases over HTTPS, and the arch-specific tarballs have pinned SHA-256 checksums. The package() function merely extracts and installs the binaries and a wrapper script into expected locations (/opt/mcpp and /usr/bin). There are no dangerous commands, obfuscated code, unexpected network requests, or any attempt to exfiltrate data or execute untrusted content. The `!strip` option and the `SKIP` checksum on the local mcpp.sh source are normal for this type of package and do not indicate malice.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 3 compiled/archived file(s) cannot be audited as text and were not reviewed (mcpp-2026.8.24.1-linux-x86_64.tar.gz, src/mcpp-2026.8.24.1-linux-x86_64/registry/bin/xlings, src/mcpp-2026.8.24.1-linux-x86_64/bin/mcpp). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 3 additional files: src/mcpp-2026.8.24.1-linux-x86_64/mcpp, src/mcpp-2026.8.24.1-linux-x86_64/README.md, src/mcpp-2026.8.24.1-linux-x86_64/LICENSE
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing src/mcpp-2026.8.24.1-linux-x86_64/mcpp...
[0/3] Reviewing src/mcpp-2026.8.24.1-linux-x86_64/mcpp, src/mcpp-2026.8.24.1-linux-x86_64/README.md...
[0/3] Reviewing src/mcpp-2026.8.24.1-linux-x86_64/mcpp, src/mcpp-2026.8.24.1-linux-x86_64/README.md, src/mcpp-2026.8.24.1-linux-x86_64/LICENSE...
LLM auditresponse for mcpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script generated by the upstream application's build system. It derives the directory of the script and then executes the corresponding `bin/mcpp` binary with the given arguments. There is no network activity, no execution of untrusted code, no obfuscation, and no deviation from normal packaging practices. The script performs exactly its stated purpose: running the program from the bundle root.
</details>
<evidence></evidence>
<summary>Safe wrapper script for bundled binary.</summary>
</security_assessment>

[1/3] Reviewing src/mcpp-2026.8.24.1-linux-x86_64/README.md, src/mcpp-2026.8.24.1-linux-x86_64/LICENSE...
+ Reviewed src/mcpp-2026.8.24.1-linux-x86_64/mcpp. Status: SAFE -- Safe wrapper script for bundled binary.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a README.md documentation file for the mcpp project. It contains no executable code, no obfuscated content, no network requests, and no system modifications. The file simply describes the project's features, installation methods, and usage instructions. While it references external installation commands (e.g., `curl -fsSL ... | bash`), those are instructions for the upstream project's users—not code that executes within the AUR packaging context. The AUR package (mcpp-bin) would have its own PKGBUILD which is not included in this file. Documentation files are inherently safe and do not pose a supply-chain attack vector.
</details>
<evidence></evidence>
<summary>Documentation file with no executable content.</summary>
</security_assessment>

[2/3] Reviewing src/mcpp-2026.8.24.1-linux-x86_64/LICENSE...
+ Reviewed src/mcpp-2026.8.24.1-linux-x86_64/README.md. Status: SAFE -- Documentation file with no executable content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Apache License 2.0 text with a copyright header. It contains no executable code, no network requests, no obfuscated content, and no file system operations. It is a static license file distributed with the package and presents no security threat.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed src/mcpp-2026.8.24.1-linux-x86_64/LICENSE. Status: SAFE -- Standard license file, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,023
  Completion Tokens: 2,392
  Total Tokens: 26,415
  Total Cost: $0.001654
  Execution Time: 144.59 seconds

Final Status: SAFE


No issues found.
