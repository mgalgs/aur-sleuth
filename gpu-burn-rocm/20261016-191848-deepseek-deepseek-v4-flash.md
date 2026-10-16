---
package: gpu-burn-rocm
pkgver: 1.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19749
completion_tokens: 4235
total_tokens: 23984
cost: 0.002567929
execution_time: 54.0
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T19:18:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: No malicious code; standard metadata file.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package.
  - file: Makefile.rocm
    status: safe
    summary: Standard ROCm build Makefile with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators found.
  - file: rocm-port.patch
    status: safe
    summary: Straightforward CUDA-to-ROCm port patch. No malware found.
---

Materializing gpu-burn-rocm from local mirror...
Materialized gpu-burn-rocm
Analyzing gpu-burn-rocm AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope contains only standard metadata variable assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `_commit`, `source`, and `sha256sums`. There are no command substitutions, no external tool invocations, no network requests, and no executable statements at the top level.

The `prepare()`, `build()`, and `package()` functions contain normal packaging operations such as applying a patch, copying files, running `make`, and installing into `$pkgdir`. These functions are not executed by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate and will be reviewed separately. The `SKIP` checksum on the git source is not a concern for this step because no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD only defines variables; no malicious code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD only defines variables; no malicious code executes during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, Makefile.rocm...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares package dependencies, sources (a pinned git commit, a patch, and a Makefile), and checksums. No executable code, obfuscation, or unexpected network operations are present. The `SKIP` checksum for the git source is normal and not a security issue. The file is purely declarative and contains no malicious content.
</details>
<evidence></evidence>
<summary>No malicious code; standard metadata file.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, Makefile.rocm, PKGBUILD...
[1/5] Reviewing .gitignore, Makefile.rocm, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious code; standard metadata file.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package. It lists patterns to exclude from version control: built package archives (`*.pkg.tar.*`), build directories (`src/` and `pkg/`), and a directory named `gpu-burn/`. No malicious content, obfuscation, or dangerous operations are present. It is a benign configuration file.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, Makefile.rocm, PKGBUILD, rocm-port.patch...
[2/5] Reviewing Makefile.rocm, PKGBUILD, rocm-port.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package.
LLM auditresponse for Makefile.rocm:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard build configuration for the gpu-burn-rocm package. It defines variables for the ROCm toolchain, compilation flags, and build targets. The only commands executed are `hipcc` for compilation and `rm` for cleaning. The GPU architecture auto-detection uses `rocminfo`, a legitimate ROCm utility. There are no network requests, obfuscated code, or unusual system modifications. The file follows normal packaging and build practices.
</details>
<evidence></evidence>
<summary>Standard ROCm build Makefile with no malicious content.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, rocm-port.patch...
+ Reviewed Makefile.rocm. Status: SAFE -- Standard ROCm build Makefile with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches the upstream source from the project's own GitHub repository pinned to a specific commit (`_commit`). The prepare() step applies a local patch (`rocm-port.patch`) and a custom Makefile (`Makefile.rocm`), then adjusts a C++ `#define` path via `sed` to point to the installed data directory—a routine packaging modification. The build() step runs `make` with the provided Makefile. The package() step installs the binary, a HIP code object, and the license into standard locations. No dangerous commands (eval, curl, wget, base64), no obfuscation, no suspicious network activity, and no attempts to modify system files outside the package scope. The `SKIP` checksum on the git source is standard for VCS sources and not a security issue. The file presents no evidence of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators found.</summary>
</security_assessment>

[4/5] Reviewing rocm-port.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators found.
LLM auditresponse for rocm-port.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a unified diff that ports the upstream `gpu-burn` CUDA stress-test application to AMD's ROCm/HIP framework. The changes are mechanical API translations (e.g., `cuMemAlloc` → `hipMalloc`, `CUDA_SUCCESS` → `hipSuccess`) and necessary functional replacements for AMD hardware.

The most notable change is in `pollTemp`, where the NVIDIA-specific `nvidia-smi` polling loop is replaced by a shell script that reads AMD GPU temperatures from sysfs (`/sys/class/drm/card*`). While an `execlp("sh", "sh", "-c", ...)` call merits attention, this script only reads local hardware state and echoes it to stdout for the parent process to parse. It does not accept any external input, open network connections, or execute untrusted code. The in-child memory copy workaround (`startBurn`) addresses a known ROCm/fork compatibility issue. All changes directly serve the declared purpose of providing a working ROCm port and contain no evidence of exfiltration, backdoors, obfuscation, or supply-chain tampering.
</details>
<evidence></evidence>
<summary>Straightforward CUDA-to-ROCm port patch. No malware found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed rocm-port.patch. Status: SAFE -- Straightforward CUDA-to-ROCm port patch. No malware found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,749
  Completion Tokens: 4,235
  Total Tokens: 23,984
  Total Cost: $0.002568
  Execution Time: 54.00 seconds

Final Status: SAFE


No issues found.
