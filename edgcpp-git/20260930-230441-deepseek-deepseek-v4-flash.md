---
package: edgcpp-git
pkgver: r62396.90b6647
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13497
completion_tokens: 5934
total_tokens: 19431
cost: 0.00199216710
execution_time: 218.83
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-30T23:04:41Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS package metadata; no security issues found.
  - file: eccp
    status: safe
    summary: Standard compiler wrapper script; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; the PKGBUILD follows normal AUR git packaging practices.
---

Materializing edgcpp-git from local mirror...
Materialized edgcpp-git
Analyzing edgcpp-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments, dependency arrays, and function definitions when inspected for the scope of `makepkg --printsrcinfo`. No top-level command substitution, download-and-execute, file exfiltration, or obfuscated payload is present. The `source` array references the upstream GitHub repository and a local `eccp` file, but merely defining sources does not download or execute anything during `--printsrcinfo`.

The `pkgver`, `build`, `check`, and `package` functions contain commands, but these functions are not executed by `makepkg --printsrcinfo`; they are out of scope for this gate and will be audited separately. SKIP checksums are also not a concern for this step because no sources are fetched. No genuinely malicious behavior is visible at the top level.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD only defines variables and functions; nothing malicious executes during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD only defines variables and functions; nothing malicious executes during --printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an Arch User Repository (AUR) git repository. It ignores all files by default and then un-ignores the packaging files `PKGBUILD`, `.SRCINFO`, `.gitignore`, and the `eccp` file. This is a common pattern for AUR packages to keep only relevant source-control files tracked while ignoring everything else. There is no code execution, network activity, obfuscation, file exfiltration, or any behavior that deviates from normal AUR packaging practice. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious or suspicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, eccp...
[1/4] Reviewing .SRCINFO, PKGBUILD, eccp...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious or suspicious behavior found.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file describes a standard VCS package build for the edgcpp-git package. The source is the project's own upstream GitHub repository (`git+https://github.com/edgcpp/compiler.git`), and the second source entry (`eccp`) is an additional local/auxiliary file with a pinned SHA-256 checksum. The `sha256sums = SKIP` entry applies only to the VCS source, which is normal and required for `-git` packages. There are no suspicious network requests, no obfuscated code, no dangerous command invocations, and no attempts to exfiltrate data or execute untrusted content outside normal packaging practice. The file is consistent with a legitimate AUR packaging workflow.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS package metadata; no security issues found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, eccp...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS package metadata; no security issues found.
LLM auditresponse for eccp:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the EDG C++ front end (edgcpp). It sets up environment variables pointing to the compiler components under `/usr/lib/edgcpp` and then `exec`s the real compiler driver (`$ECCP`, defaulting to `$EDG_BASE/bin/eccp.sh`) with all passed arguments. There is no network activity, no encoded/obfuscated content, no file system manipulation, and no execution of anything other than the package's own declared binaries.

The use of environment-variable overrides (`${ECCP-...}`, `${EDG_BASE-...}`, etc.) is explicitly documented in the script header and is a standard pattern for compiler wrappers — it allows users to redirect to alternate toolchain installations. While an attacker who can set `ECCP` or `EDG_BASE` in the build environment could cause arbitrary code execution, this is a general property of environment-driven build tools and not evidence of a supply-chain attack in the package itself. The `&quot;` sequences are just HTML-escaped quotes from the rendering; the actual file contains ordinary `exec "$ECCP" "$@"`.

No genuinely malicious behavior — no data exfiltration, no downloads, no backdoors, no tampering with system files — was found. The file is consistent with ordinary packaging practice for a compiler front-end wrapper.
</details>
<evidence>
</evidence>
<summary>Standard compiler wrapper script; no malicious behavior detected.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed eccp. Status: SAFE -- Standard compiler wrapper script; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices for a `-git` package. It clones the project&apos;s own upstream repository from `https://github.com/edgcpp/compiler.git`, builds it with `cmake`/`ninja`, runs a simple smoke test in `check()`, and installs the resulting binaries, headers, libraries, and configuration files into the package directory. The `SKIP` checksum for the git source is expected and not suspicious; the local `eccp` source file is pinned by a real SHA-256 checksum.

No malicious behavior is present in the PKGBUILD: there is no obfuscated code, no `eval`/`base64`/`curl`/`wget`, no unexpected network access, no writes outside `$srcdir`/`$pkgdir`, and no post-build hooks that modify the system. Installing `$srcdir/eccp` to `/usr/bin/eccp` is consistent with the package providing an `eccp` driver/compiler wrapper. The unpinned git branch/tag is a standard `-git` package characteristic and does not by itself constitute a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; the PKGBUILD follows normal AUR git packaging practices.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; the PKGBUILD follows normal AUR git packaging practices.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,497
  Completion Tokens: 5,934
  Total Tokens: 19,431
  Total Cost: $0.001992
  Execution Time: 218.83 seconds

Final Status: SAFE


No issues found.
