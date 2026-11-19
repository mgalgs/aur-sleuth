---
package: ibus-mozc-with-jp-dict
pkgbase: mozc-with-jp-dict
pkgver: 3.34.6239.2
pkgrel: 1
result: inconclusive
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 64464
completion_tokens: 21619
total_tokens: 86083
cost: 0.0285167984
execution_time: 305.87
files_reviewed: 14
files_skipped: 0
maintainer_files: 14
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-08T03:25:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging; no malicious code found.
  - file: PKGBUILD.fcitx.normal
    status: safe
    summary: No malicious code found. Standard AUR packaging.
  - file: PKGBUILD.fcitx
    status: safe
    summary: Legitimate PKGBUILD for Mozc with extra dictionaries.
  - file: PKGBUILD.normal
    status: inconclusive
    summary: "Audit error: could not parse a decision from the model response."
  - file: buildifier.sh
    status: safe
    summary: Standard build tool script, no malicious code.
  - file: fcitx5-mozc-conf.patch
    status: safe
    summary: Patch contains harmless configuration files only.
  - file: fcitx5-mozc.install
    status: safe
    summary: Standard configuration deployment script, no security issues.
  - file: build-all.sh
    status: safe
    summary: Maintainer build script, no malicious behavior detected.
  - file: update-submodule.sh
    status: safe
    summary: Maintainer helper script for updating submodule commits and checksums.
  - file: partial-clone.sh
    status: safe
    summary: Partial clone helper script, no security concerns.
  - file: update.sh
    status: safe
    summary: Standard AUR maintainer update script, no malicious behavior.
  - file: update_sha512sums.sh
    status: safe
    summary: Benign AUR maintainer packaging helper script.
  - file: pkgrel.sh
    status: safe
    summary: Routine pkgrel bump helper; no malicious behavior found.
---

ibus-mozc-with-jp-dict is built from mozc-with-jp-dict
Materializing ibus-mozc-with-jp-dict from local mirror...
Materialized ibus-mozc-with-jp-dict
Analyzing ibus-mozc-with-jp-dict AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only executes its top-level (global) scope. The entire top-level consists of variable definitions (`pkgbase`, `pkgname`, `source`, etc.), function definitions (`pkgver`, `prepare`, `build`, `package_*`), and a benign `export RUSTUP_TOOLCHAIN=stable`. There are no command substitutions, `eval`s, `curl`/`wget` calls, or any code that could exfiltrate data or download/execute payloads at source time. All potentially sensitive operations are confined inside functions that are **not** called during `--printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 14 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/14] Reviewing .SRCINFO...
[0/14] Reviewing .SRCINFO, PKGBUILD...
[0/14] Reviewing .SRCINFO, PKGBUILD, PKGBUILD.fcitx...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares upstream sources for Mozc, SudachiDict, MeCab Neologd dictionaries, and related build dependencies, all with corresponding `sha512sums`. There are no shell commands, no `eval`, `curl`, `wget`, base64, obfuscation, or file-manipulation operations present. All source origins are related to the package's stated purpose of building Japanese input dictionaries and IME modules.

The only notable hygiene points are that several dictionary sources use plain `http://` URLs (SudachiDict S3) and some GitHub `raw` refs point at mutable `master` branches. However, all sources have pinned checksums, so the downloaded content is integrity-checked before use. These are supply-chain hygiene considerations, not evidence of malicious behavior. Nothing in this file exfiltrates data, fetches executable code from an unexpected host, or modifies unrelated system files.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[0/14] Reviewing .SRCINFO, PKGBUILD, PKGBUILD.fcitx, PKGBUILD.fcitx.normal...
[1/14] Reviewing PKGBUILD, PKGBUILD.fcitx, PKGBUILD.fcitx.normal...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging script for the ibus-mozc-with-jp-dict package. It builds Mozc (Google Japanese Input) with additional Japanese dictionaries (SudachiDict, MeCab-unidic-neologd, MeCab-ipadic-neologd) integrated. All source URLs point to official or maintainer-owned repositories (fcitx/mozc, bazelbuild, phoepsilonix/dict-to-mozc, WorksApplications/SudachiDict via AWS S3, and Neologd forks). The build process compiles all tools from source, then processes dictionary data files. There is no evidence of obfuscated code, unexpected network requests, exfiltration, or backdoor-like behavior. The plain HTTP URLs for SudachiDict are the official distribution method and carry no executable code; they present a minor integrity risk (MITM could tamper with dictionary data) but this is a hygiene concern rather than a supply-chain attack. All other practices (checksums, build system, install steps) are standard.
</details>
<evidence>
</evidence>
<summary>
Standard packaging; no malicious code found.
</summary>
</security_assessment>

[1/14] Reviewing PKGBUILD, PKGBUILD.fcitx, PKGBUILD.fcitx.normal, PKGBUILD.normal...
[2/14] Reviewing PKGBUILD.fcitx, PKGBUILD.fcitx.normal, PKGBUILD.normal...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging; no malicious code found.
LLM auditresponse for PKGBUILD.fcitx.normal:
<security_assessment>
<decision>SAFE</decision>
<details>The PKGBUILD is a standard packaging file for a Fcitx module of Mozc (Google Japanese Input). It pins specific commits for both the main source and the Bazel central registry dependency, provides SHA-512 checksums for both, and uses typical build tools (bazel, git, python, mold). No network requests are made outside of the legitimate package sources. The build and install scripts invoke upstream build/install scripts from the pinned source, which is expected and not cause for suspicion. There is no obfuscation, no eval, no base64, no curl/wget, and no manipulation of sensitive system files beyond the package installation directory. The file follows standard AUR packaging practices.</details>
<evidence>
</evidence>
<summary>No malicious code found. Standard AUR packaging.</summary>
</security_assessment>

[3/14] Reviewing PKGBUILD.fcitx, PKGBUILD.normal...
+ Reviewed PKGBUILD.fcitx.normal. Status: SAFE -- No malicious code found. Standard AUR packaging.
[3/14] Reviewing PKGBUILD.fcitx, PKGBUILD.normal, build-all.sh...
LLM auditresponse for PKGBUILD.fcitx:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD.fcitx file is a standard Arch User Repository package definition for building the Fcitx frontend of Mozc (Google Japanese Input) with additional SudachiDict and MeCab dictionary support. All sources are fetched from the project&#39;s own upstream repositories (fcitx/mozc, bazelbuild/bazel-central-registry, phoepsilonix/dict-to-mozc) or from the official dictionary distribution channels (SudachiDict on AWS S3, MeCab dictionaries on GitHub). The prepare() function builds a Rust tool (dict-to-mozc) from source to convert the dictionaries into Mozc format, then deduplicates and integrates them into the Mozc source tree. The build() and install functions follow typical Mozc compilation steps.

There are no signs of malicious behavior: no data exfiltration, no execution of fetched code from unexpected hosts, no obfuscated commands, no backdoors, and no tampering with unrelated system files. The use of HTTP URLs for the SudachiDict downloads and the mutable `refs/heads/master` references for the MeCab seed files are supply-chain hygiene concerns (unpinned sources, plain-http downloads) rather than evidence of active malice. Checksums (sha512sums) are provided for all downloadable sources, mitigating tampering in transit if the checksums themselves are trusted. Overall, the file is consistent with legitimate packaging practices for a dictionary-enhanced input method.
</details>
<evidence>
</evidence>
<summary>Legitimate PKGBUILD for Mozc with extra dictionaries.</summary>
</security_assessment>

[4/14] Reviewing PKGBUILD.normal, build-all.sh...
+ Reviewed PKGBUILD.fcitx. Status: SAFE -- Legitimate PKGBUILD for Mozc with extra dictionaries.
[4/14] Reviewing PKGBUILD.normal, build-all.sh, buildifier.sh...
LLM auditresponse for PKGBUILD.normal:
 

LLM audit error for PKGBUILD.normal: Audit error: could not parse a decision from the model response.

[5/14] Reviewing build-all.sh, buildifier.sh...
? Reviewed PKGBUILD.normal. Status: INCONCLUSIVE -- Audit error: could not parse a decision from the model response.
[5/14] Reviewing build-all.sh, buildifier.sh, fcitx5-mozc-conf.patch...
LLM auditresponse for buildifier.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script installs `buildifier` from the official `bazelbuild/buildtools` repository using `go install` and then runs it in diff mode on the current directory. This is a standard developer workflow for checking Bazel BUILD file formatting. There is no network request to an unexpected host, no obfuscation, no dangerous commands (eval, base64, curl, wget), no system modifications outside the project directory, and no exfiltration of data. The use of `@latest` is unpinned but is a hygiene choice, not malicious behavior. The script does not deviate from standard packaging or development practices.
</details>
<evidence>
</evidence>
<summary>Standard build tool script, no malicious code.</summary>
</security_assessment>

[6/14] Reviewing build-all.sh, fcitx5-mozc-conf.patch...
+ Reviewed buildifier.sh. Status: SAFE -- Standard build tool script, no malicious code.
[6/14] Reviewing build-all.sh, fcitx5-mozc-conf.patch, fcitx5-mozc.install...
LLM auditresponse for fcitx5-mozc-conf.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds configuration files for the Fcitx5 input-method framework as part of the Mozc Japanese IME package.  The content is entirely confined to standard INI-style settings (input mode, UI preferences, keyboard layouts, color themes) and a profile file.  No executable code, network requests, obfuscation, or system file modifications outside the package's own source tree are present.  The changes match expected behavior for packaging an input-method engine.
</details>
<evidence></evidence>
<summary>Patch contains harmless configuration files only.</summary>
</security_assessment>

[6/14] Reviewing build-all.sh, fcitx5-mozc-conf.patch, fcitx5-mozc.install, partial-clone.sh...
[7/14] Reviewing build-all.sh, fcitx5-mozc.install, partial-clone.sh...
+ Reviewed fcitx5-mozc-conf.patch. Status: SAFE -- Patch contains harmless configuration files only.
LLM auditresponse for fcitx5-mozc.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-installation script for the fcitx5-mozc input method package. It copies configuration files from the package's own directory (`/usr/share/fcitx5-mozc/fcitx5/`) to the current user's home directory and `/etc/skel/`. This is normal behavior for setting up a user environment after package installation.  

The script uses `SUDO_USER` and `eval echo ~$SUDO_USER` to locate the user's home directory. While not perfectly robust (e.g., if `SUDO_USER` were malformed), this is a common pattern in AUR `.install` scripts and not malicious. No network requests, obfuscated code, dangerous commands (curl/wget/eval of untrusted input), or tampering with system files outside the package's scope are present. The operations are confined to `/etc/skel/` and the user's `~/.config/fcitx5/` directory.  

The script only installs files that already exist in the package's installed path, and it only runs if the files are not already present (`install_if_not_exists`). There is no evidence of a supply chain attack or any behavior that exfiltrates data, downloads code, or installs backdoors.
</details>
<evidence></evidence>
<summary>Standard configuration deployment script, no security issues.</summary>
</security_assessment>

[7/14] Reviewing build-all.sh, fcitx5-mozc.install, partial-clone.sh, pkgrel.sh...
[8/14] Reviewing build-all.sh, partial-clone.sh, pkgrel.sh...
+ Reviewed fcitx5-mozc.install. Status: SAFE -- Standard configuration deployment script, no security issues.
LLM auditresponse for build-all.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build automation helper intended for the package maintainer's personal use. It performs standard packaging operations: running `makepkg` with different PKGBUILD variants, applying a patch, and resetting dictionary files via `git checkout`. The repeated use of `gpg -dq ~/.ssh/pass.gpg | sudo -S` decrypts a locally stored password for sudo/paru commands — a questionable security practice but not evidence of an attack; it is a convenience mechanism for interactive builds, not exfiltration. There are no network requests to non-standard hosts, no obfuscated code, no execution of downloaded remote scripts, and no attempts to access or transmit data outside the package's own scope. The `git checkout` of dictionary files reverts tracked content, which is intrusive but within the application's own repository and related to its stated purpose (dictionary management). No signs of a supply-chain attack, backdoors, or credential theft are present.
</details>
<evidence>

</evidence>
<summary>Maintainer build script, no malicious behavior detected.</summary>
</security_assessment>

[8/14] Reviewing build-all.sh, partial-clone.sh, pkgrel.sh, update-submodule.sh...
[9/14] Reviewing partial-clone.sh, pkgrel.sh, update-submodule.sh...
+ Reviewed build-all.sh. Status: SAFE -- Maintainer build script, no malicious behavior detected.
LLM auditresponse for update-submodule.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer automation tool for updating submodule commit references in the PKGBUILD. It clones the local mozc repository, fetches the latest commits from each submodule's upstream, and updates the corresponding `_${r}_commit` variables in PKGBUILD files. After updating the commit hashes, it regenerates checksums using `makepkg -g` and passes them to a companion script `update_sha512sums.sh`. All operations (git fetch, sed substitution, checksum generation) are standard for AUR packaging workflows.

No suspicious behavior is present: the script does not download or execute code from untrusted/unexpected hosts, contains no obfuscated commands, does not access or exfiltrate sensitive system data, and does not modify any files outside the package's own source directory or PKGBUILD. The script is intended to be run voluntarily by the maintainer and is part of the normal package update process.
</details>
<evidence></evidence>
<summary>Maintainer helper script for updating submodule commits and checksums.</summary>
</security_assessment>

[9/14] Reviewing partial-clone.sh, pkgrel.sh, update-submodule.sh, update.sh...
[10/14] Reviewing partial-clone.sh, pkgrel.sh, update.sh...
+ Reviewed update-submodule.sh. Status: SAFE -- Maintainer helper script for updating submodule commits and checksums.
LLM auditresponse for partial-clone.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `partial-clone.sh` is a maintainer helper script that performs partial cloning of git sources listed in a PKGBUILD's `source` array.  It parses `git+` URLs, extracts the remote URL and commit/tag, then clones the repository with a `--filter=tree:0` option to avoid fetching unnecessary objects.  The subsequent `git worktree` operations are used to populate the local clone with the needed commit's tree and blob objects.  

The script does **not** exfiltrate data, download or execute code from unexpected hosts, decode obfuscated payloads, or perform any unusual file operations.  All git operations target the same URLs that would be used in a normal build process (i.e., the project's own upstream repository).  No `eval`, `curl`, `wget`, base64 decoding, or backdoor mechanisms are present.  

Sourcing the local PKGBUILD is a routine step for tools like this and does not by itself introduce a supply-chain risk.  The script behaves as a standard, transparent packaging utility.
</details>
<evidence></evidence>
<summary>Partial clone helper script, no security concerns.</summary>
</security_assessment>

[10/14] Reviewing partial-clone.sh, pkgrel.sh, update.sh, update_sha512sums.sh...
[11/14] Reviewing pkgrel.sh, update.sh, update_sha512sums.sh...
+ Reviewed partial-clone.sh. Status: SAFE -- Partial clone helper script, no security concerns.
LLM auditresponse for update.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a maintainer helper script for an AUR package. It checks for upstream updates (SudachiDict, Mozc, BCR) via standard HTTP requests to AWS S3 and GitHub API, then updates the PKGBUILD accordingly. All operations are normal for AUR packaging: fetching upstream data, regenerating checksums with `makepkg -g`, updating version strings, running git commands, and building a version string with bazelisk. There is no obfuscated code, no unexpected network destinations, no data exfiltration, and no execution of untrusted content. The use of `eval` with `makepkg -g` output is a standard technique for sourcing checksum arrays. The script does not perform any genuinely malicious actions.
</details>
<evidence></evidence>
<summary>Standard AUR maintainer update script, no malicious behavior.</summary>
</security_assessment>

[12/14] Reviewing pkgrel.sh, update_sha512sums.sh...
+ Reviewed update.sh. Status: SAFE -- Standard AUR maintainer update script, no malicious behavior.
LLM auditresponse for update_sha512sums.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an AUR maintainer helper script whose sole purpose is updating the `sha512sums` array inside a PKGBUILD file. It contains no network requests (`curl`, `wget`, `git`), no obfuscated code, no `eval`, and no file operations outside modifying the specified PKGBUILD file (and its temporary copy). The script operates entirely within the expected AUR packaging workflow and matches the description of a safe maintainer utility. No evidence of malicious injection, data exfiltration, or unexpected command execution was found.
</details>
<evidence>
</evidence>
<summary>Benign AUR maintainer packaging helper script.</summary>
</security_assessment>

[13/14] Reviewing pkgrel.sh...
+ Reviewed update_sha512sums.sh. Status: SAFE -- Benign AUR maintainer packaging helper script.
LLM auditresponse for pkgrel.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small AUR maintainer helper script that bumps, decrements, or resets the `pkgrel` value in `PKGBUILD*` files in the current directory. It reads the existing `pkgrel=` line, computes a new value, and rewrites the line with `sed -i`. This is routine packaging maintenance work and matches the expected purpose of such a helper script.

No malicious behavior was found: there are no network requests, no downloads, no encoded or obfuscated payloads, no `eval`, and no writes outside the current directory. The only file modifications are to `PKGBUILD*` files in the working directory, which is exactly what the script is intended to do. As with any script that edits files, a user should run it only in the intended repository directory, but this is a normal hygiene consideration rather than evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Routine pkgrel bump helper; no malicious behavior found.</summary>
</security_assessment>

[14/14] Reviewing ...
+ Reviewed pkgrel.sh. Status: SAFE -- Routine pkgrel bump helper; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: Inconclusive -- NO VERDICT
(Inconclusive 1 file: PKGBUILD.normal)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 64,464
  Completion Tokens: 21,619
  Total Tokens: 86,083
  Total Cost: $0.028517
  Execution Time: 305.87 seconds

Final Status: INCONCLUSIVE



Inconclusive Results:

PKGBUILD.normal: [INCONCLUSIVE] Audit error: could not parse a decision from the model response.
