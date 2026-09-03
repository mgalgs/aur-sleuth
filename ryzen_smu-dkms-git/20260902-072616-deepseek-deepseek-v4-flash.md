---
package: ryzen_smu-dkms-git
pkgver: 191.d298366
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16558
completion_tokens: 5213
total_tokens: 21771
cost: 0.002390944304
execution_time: 107.6
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 50
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T07:26:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR DKMS package, no suspicious activity.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: ryzen_smu.install
    status: safe
    summary: Standard install script, no malicious content.
  - file: dkms.conf
    status: safe
    summary: Standard DKMS config template, no security issues.
  - file: ryzen_smu.conf
    status: safe
    summary: Standard depmod config, no malicious content.
---

Cloning https://aur.archlinux.org/ryzen_smu-dkms-git.git...
Cloned ryzen_smu-dkms-git
Analyzing ryzen_smu-dkms-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This narrow gate only covers what runs during `makepkg --printsrcinfo` and `makepkg --nobuild --nodeps --noprepare`: sourcing the PKGBUILD (top-level code), fetching/extracting the `source` array, and executing `pkgver()`. The top-level scope contains only plain variable assignments — no command substitution, no eval, no network requests, and no file operations. The one VCS source entry is `ryzen_smu::git+https://github.com/amkillam/ryzen_smu.git`, the package's own declared upstream, and the other two sources (`dkms.conf`, `ryzen_smu.conf`) are ordinary files shipped with this AUR package. Fetching these is exactly what the commands are designed to do. The `SKIP` checksum on the git source is standard and required for VCS sources and is never grounds to fail this gate; the two local files carry real sha256 checksums.

`pkgver()` runs only read-only git commands (`git rev-list --count HEAD` and `git rev-parse --short HEAD`) inside the freshly cloned repo. Nothing fetches new content, executes downloaded payloads, or touches anything outside `$srcdir`. `prepare()`, `build()`, and `package()` contain artifacts worth auditing later (e.g. `rm -rf scripts/ pics/ README.md` and installing a built binary), but with `--noprepare` and `--nobuild` they cannot execute during these two commands, so they are out of scope for this gate. The unpinned git branch is typical -git packaging practice and is not malicious on its own.
</details>
<evidence>
</evidence>
<summary>
Safe: only plain assignments, upstream git clone, and read-only pkgver git commands execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only plain assignments, upstream git clone, and read-only pkgver git commands execute.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 6 file(s) in the AUR repository. The 50 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard configuration file for a Git repository. It follows the common AUR pattern of ignoring all files (`*`) and then whitelisting only the essential packaging files (`PKGBUILD`, `dkms.conf`, `ryzen_smu.conf`, `.SRCINFO`, `ryzen_smu.install`, and `*.patch`). There is no code execution, no network requests, no obfuscation, and no deviation from normal packaging practices. The file contains no malicious or suspicious content.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package; no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, dkms.conf...
[1/6] Reviewing .SRCINFO, PKGBUILD, dkms.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a DKMS driver package. The source is fetched from the upstream GitHub repository (amkillam/ryzen_smu) via git, which is normal for a `-git` package. The `sha256sums` entry for the VCS source is correctly set to `SKIP`. The `prepare()` function removes unnecessary files (scripts, pics, README.md) from the source, which is benign. `build()` runs `make` in the userspace directory, and `package()` copies the relevant driver files, a depmod configuration, and the `monitor_cpu` binary into the package directory. There are no obfuscated commands, no unexpected network requests, no attempts to execute downloaded code outside the declared upstream, and no manipulation of system files beyond what is required for the kernel module and its userland tool. The `install` variable points to a `.install` file (not shown here), but that is standard for post-install hooks. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR DKMS package, no suspicious activity.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, dkms.conf, ryzen_smu.conf...
[2/6] Reviewing .SRCINFO, dkms.conf, ryzen_smu.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR DKMS package, no suspicious activity.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It defines the package base, version, dependencies, sources, and checksums for the `ryzen_smu-dkms-git` package. All sources point to the project's official GitHub repository. The VCS source (`git+https://...`) correctly uses `SKIP` for the checksum, which is standard practice for version-controlled sources. The two static configuration files (`dkms.conf` and `ryzen_smu.conf`) have explicit SHA-256 checksums, providing integrity verification. There are no network requests, obfuscated code, or suspicious operations. The file performs no actions itself—it only declares metadata for `makepkg` to process. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, dkms.conf, ryzen_smu.conf, ryzen_smu.install...
[3/6] Reviewing dkms.conf, ryzen_smu.conf, ryzen_smu.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for ryzen_smu.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an Arch Linux DKMS package. It contains only two functions: `post_install()` prints a message instructing the user to reboot or load the module, and `post_upgrade()` calls `post_install()`. There are no network requests, file operations, encoded commands, or any other suspicious behavior. The script is entirely benign and follows typical packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing dkms.conf, ryzen_smu.conf...
+ Reviewed ryzen_smu.install. Status: SAFE -- Standard install script, no malicious content.
LLM auditresponse for dkms.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard DKMS configuration template for a kernel module package. It contains only expected DKMS directives (PACKAGE_NAME, PACKAGE_VERSION, MAKE, BUILT_MODULE_NAME, DEST_MODULE_LOCATION, AUTOINSTALL) with placeholder variables for substitution during packaging. The MAKE command uses `make` with standard kernel source and module paths. There are no network requests, obfuscated code, dangerous commands, or any behavior deviating from normal packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard DKMS config template, no security issues.</summary>
</security_assessment>

[5/6] Reviewing ryzen_smu.conf...
+ Reviewed dkms.conf. Status: SAFE -- Standard DKMS config template, no security issues.
LLM auditresponse for ryzen_smu.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard depmod configuration file used by the kernel module dependency system. It specifies the search order for kernel modules: updates, extramodules, built-in. There are no executable commands, network requests, obfuscation, or any other suspicious patterns. The content is purely declarative and benign.
</details>
<evidence></evidence>
<summary>Standard depmod config, no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed ryzen_smu.conf. Status: SAFE -- Standard depmod config, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,558
  Completion Tokens: 5,213
  Total Tokens: 21,771
  Total Cost: $0.002391
  Execution Time: 107.60 seconds

Final Status: SAFE


No issues found.
