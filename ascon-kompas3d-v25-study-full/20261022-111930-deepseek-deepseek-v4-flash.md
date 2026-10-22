---
package: ascon-kompas3d-v25-study-full
pkgver: 25.0.1.2738
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18092
completion_tokens: 3960
total_tokens: 22052
cost: 0.002367092
execution_time: 37.87
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T11:19:29Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative package metadata only; all sources pinned from official vendor with checksums. No malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Legitimate binary repackage, no malicious code.
---

Materializing ascon-kompas3d-v25-study-full from local mirror...
Materialized ascon-kompas3d-v25-study-full
Analyzing ascon-kompas3d-v25-study-full AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments (pkgname, pkgver, depends, source, sha256sums, etc.) in its global scope. No command substitutions, eval, or function calls that would execute during sourcing. All source URLs point to the official vendor site (repo.ascon.ru) over HTTPS. No suspicious top-level code present. Therefore, running `makepkg --printsrcinfo` is safe.</details>
<evidence></evidence>
<summary>No dangerous global code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is purely declarative package metadata for a CAD application. It lists package metadata, dependencies, and 31 RPM source files, all hosted on `https://repo.ascon.ru/`, which is the vendor's official repository referenced by the package URL (`https://kompas.ru/`). No code, scripts, or build commands are present in this file.

All source entries include pinned SHA-256 checksums rather than `SKIP`, which is good supply-chain hygiene. The sources are prebuilt RPMs from the upstream vendor's own repository, which is expected for this type of commercial-software packaging. The dependency `libgtk-x11-2.0.so` is unconventional but appears to be an attempt to satisfy a library-file dependency from the RPM packages; it is not malicious. There are no suspicious network endpoints, no obfuscated content, and no commands that could execute arbitrary code.
</details>
<evidence>
</evidence>
<summary>
Declarative package metadata only; all sources pinned from official vendor with checksums. No malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative package metadata only; all sources pinned from official vendor with checksums. No malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `ascon-kompas3d-v25-study-full` is a well-maintained binary repackaging script. It downloads the official KOMPAS-3D RPM packages directly from the developer's own HTTPS repository (`https://repo.ascon.ru/`) and verifies every single source file using hardcoded SHA-256 checksums, providing strong integrity guarantees. The `package()` function restricts all operations to the `$pkgdir` staging area, performing standard tasks: copying the extracted files, creating symlinks for libraries and executables, setting environment variable scripts, installing udev rules for the Guardant hardware license dongle, and installing the required systemd service. There is no obfuscated code, no network requests to unrelated hosts, no dynamic code execution or download, and no modification of system files outside the build directory. The script is fully transparent and strictly follows standard practices for packaging proprietary Linux applications for Arch.
</details>
<evidence></evidence>
<summary>Legitimate binary repackage, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate binary repackage, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,092
  Completion Tokens: 3,960
  Total Tokens: 22,052
  Total Cost: $0.002367
  Execution Time: 37.87 seconds

Final Status: SAFE


No issues found.
