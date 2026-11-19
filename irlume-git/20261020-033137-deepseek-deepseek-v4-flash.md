---
package: irlume-git
pkgver: 0.15.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20034
completion_tokens: 4767
total_tokens: 24801
cost: 0.002690688
execution_time: 40.73
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T03:31:35Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Packaging metadata only; all sources are from the project upstream; no malicious behavior found.
  - file: irlume.install
    status: safe
    summary: Standard package install script; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD; no malicious behavior found.
---

Materializing irlume-git from local mirror...
Materialized irlume-git
Analyzing irlume-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. In this PKGBUILD, the top-level scope contains only standard variable and array assignments: `pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `source`, and `sha256sums`. There are no top-level command substitutions, no `eval`, no `curl`/`wget`/`bash` pipelines, no base64-decoded payloads, and no assignments that trigger downloads or execution.

All potentially interesting operations are inside `pkgver()`, `prepare()`, `build()`, and `package_*()` functions, which are not executed by `makepkg --printsrcinfo`. Those functions will be audited in the full PKGBUILD review. The `source` array references the package's own upstream GitHub repository and release assets, which is normal packaging behavior; even the `SKIP` checksum for the VCS source is not relevant to this gate because no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contains only variable definitions; no code executes during --printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contains only variable definitions; no code executes during --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, irlume.install...
[0/3] Reviewing .SRCINFO, irlume.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` packaging metadata file. It contains no executable code, no install-time hooks, and no obfuscated or encoded commands. All remote sources point to the package's own upstream GitHub project (`github.com/archledger/irlume`), either as a git repository or as release-hosted model/runtime assets. This is consistent with normal packaging practice.

The git source tracks `main` with a `SKIP` checksum; that is standard and required for VCS sources and is not evidence of malice. The individual `.onnx` and `.tflite` model files, as well as the TensorFlow Lite runtime tarball, have pinned SHA-256 checksums, which is a good hygiene practice. The package declares expected dependencies, optional dependencies, a PAM config backup, and a Plasma KCM subpackage; none of these indicate malicious behavior.

No evidence of data exfiltration, unexpected downloads, execution of fetched code, credential theft, backdoors, or tampering with unrelated system files was found.
</details>
<evidence>
</evidence>
<summary>
Packaging metadata only; all sources are from the project upstream; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing irlume.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Packaging metadata only; all sources are from the project upstream; no malicious behavior found.
LLM auditresponse for irlume.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install scriptlet. It performs routine post-install, post-upgrade, and pre-remove operations: reloading systemd, applying tmpfiles rules, optionally loading the package's own AppArmor profile, enabling/disabling the package's systemd units, creating a package-owned marker file under /var/lib/irlume, and printing user-facing messages.

There are no network requests, no downloads, no code execution from external sources, no obfuscated or encoded payloads, and no access to sensitive user data. All operations are scoped to the package's own systemd units, its tmpfiles configuration, its AppArmor profile, and its own state directory. The use of `vercmp` to compare versions and the marker file for upgrade migration are normal packaging logic.
</details>
<evidence>
</evidence>
<summary>
Standard package install script; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed irlume.install. Status: SAFE -- Standard package install script; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR VCS packaging practices. All sources come from the project's own GitHub repository: the `main` branch via `git+https`, and model/runtime assets from the project's `models-v1` and `tflite-runtime-v2.19.0` release pages. The non-VCS artifacts have pinned sha256 checksums; the `SKIP` for the git source is normal and required for VCS packages.

The build (`cargo build --release --locked`, `cmake`) and packaging (`install` into `$pkgdir`) steps are routine. There is no use of `eval`, `base64`, `curl|bash`, obfuscated strings, unexpected network endpoints, or any file operations outside the package's own build/install scope. The installed PAM modules, polkit policies, systemd units, tmpfiles, udev rules, and AppArmor profile all serve the application's stated purpose (face authentication on Linux) and are not evidence of injected malicious code.

Minor hygiene considerations: the git source tracks an unpinned `main` branch, and a prebuilt TensorFlow Lite runtime is bundled from the project's own release with a checksum. These are unpinned-supply-chain trust considerations but not malicious behavior. The referenced `irlume.install` hook is not included in this file and should be reviewed separately, but nothing in this PKGBUILD indicates malicious intent.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,034
  Completion Tokens: 4,767
  Total Tokens: 24,801
  Total Cost: $0.002691
  Execution Time: 40.73 seconds

Final Status: SAFE


No issues found.
