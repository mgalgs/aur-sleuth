---
package: flutter-bin
pkgver: 3.47.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 17092
completion_tokens: 2856
total_tokens: 19948
cost: 0.002020571224
execution_time: 179.99
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 1
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T11:21:56Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file; no issue.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config pointing to official Flutter repo.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata file, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging for Flutter binary; no malicious behavior.
  - file: flutter.install
    status: safe
    summary: Standard install script, no malicious behavior.
---

Cloning https://aur.archlinux.org/flutter-bin.git...
Cloned flutter-bin
Analyzing flutter-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, arrays, and shell functions (`prepare`, `package`, `_gen_scripts`) in its global scope. No arbitrary commands or dangerous operations (e.g. curl, eval, base64 decoding, or data exfiltration) execute at source‑time or during the source fetch. The source is downloaded from the official Google Flutter storage URL with a non‑SKIP checksum. `makepkg --nobuild --nodeps --noprepare` will only source the PKGBUILD and fetch the tarball; the defined functions are not invoked by these commands. Therefore no malicious code runs during this step.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope or source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope or source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 1 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .gitignore...
[0/5] Reviewing .gitignore, .SRCINFO...
[0/5] Reviewing .gitignore, .SRCINFO, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files (`*`) and then explicitly un-ignores only `PKGBUILD`, `.SRCINFO`, and `.gitignore`. This is a normal practice to keep the repository minimal. There is no executable code, no network requests, no obfuscation, no system modifications, and no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file; no issue.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file; no issue.
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration file for `nvchecker`, a tool commonly used in AUR packaging to automatically check for new upstream versions. It specifies the package name `flutter-bin` and points to the official Flutter GitHub repository as the source. There is no code execution, no obfuscated commands, no network requests to unexpected hosts, and no deviation from standard packaging practices. The content is benign and serves only to enable automated version tracking.
</details>
<evidence></evidence>
<summary>Standard nvchecker config pointing to official Flutter repo.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config pointing to official Flutter repo.
[2/5] Reviewing .SRCINFO, PKGBUILD, flutter.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the flutter-bin AUR package. It declares standard packaging information: name, version, dependencies, conflicts, source URL (from the official Google Flutter release infrastructure over HTTPS), and an MD5 checksum. No executable code, obfuscated content, or suspicious network targets are present. The source originates from the legitimate upstream distribution channel (storage.googleapis.com/flutter_infra_release). This file does not contain any operations that could exfiltrate data, download untrusted payloads, or modify system files. It is a normal, non-executable manifest for a binary AUR package.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata file, no malicious code.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, flutter.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata file, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary distribution. It downloads the official Flutter SDK from the legitimate Google Cloud Storage URL (`storage.googleapis.com/flutter_infra_release/...`) and includes an MD5 checksum. The generated helper scripts (`flutter_init.sh`, `flutter.sh`, `flutter_dart.sh`) set up a writable overlay using `unionfs` over the read-only installation directory—a common technique for Flutter SDK packages to allow necessary write operations (e.g., Dart cache, pub get) without modifying the original install. The script checks for builder users and group membership, which is reasonable for a development tool. There is no evidence of obfuscated code, unexpected network connections, data exfiltration, or backdoor behavior. All operations are scoped to the Flutter SDK and user cache directories.
</details>
<evidence></evidence>
<summary>Standard AUR packaging for Flutter binary; no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing flutter.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging for Flutter binary; no malicious behavior.
LLM auditresponse for flutter.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for the `flutter-bin` AUR package. It performs routine post-install tasks: creating a system group (`flutter`), setting POSIX ACLs on `/opt/flutter` for designated builder and group users, and cleaning up permissions and the directory on removal. All commands (`groupadd`, `setfacl`, `chmod`, `rm`, `getfacl`) are benign system utilities used within expected packaging workflows. There is no network activity, obfuscation, eval, or execution of untrusted code. The script does not exfiltrate data, install backdoors, or deviate from standard AUR packaging practices. The ACL manipulations are intentional to allow specific users/groups write access to the Flutter SDK directory, consistent with the package's stated need for write permissions. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard install script, no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed flutter.install. Status: SAFE -- Standard install script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,092
  Completion Tokens: 2,856
  Total Tokens: 19,948
  Total Cost: $0.002021
  Execution Time: 179.99 seconds

Final Status: SAFE


No issues found.
