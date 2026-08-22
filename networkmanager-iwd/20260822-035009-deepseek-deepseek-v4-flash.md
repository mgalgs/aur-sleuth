---
package: networkmanager-iwd
pkgver: 1.58.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 51806
completion_tokens: 11442
total_tokens: 63248
cost: 0.00563610740
execution_time: 194.26
files_reviewed: 12
files_skipped: 0
files_unauditable: 79
unpinned_sources: 0
date: 2026-08-22T03:50:08Z
file_verdicts:
  - file: networkmanager-iwd.install
    status: safe
    summary: Informational install script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious code found.
  - file: src/NetworkManager/.gitlab-ci/coverity.sh
    status: safe
    summary: Standard Coverity Scan CI helper script, no malicious behavior.
  - file: src/NetworkManager/.gitlab-ci/debian-install.sh
    status: safe
    summary: Standard CI setup script, no signs of malicious activity.
  - file: src/NetworkManager/.gitlab-ci/distros_support.py
    status: safe
    summary: Standard CI helper script, no security issues.
  - file: src/NetworkManager/.gitlab-ci/fedora-install.sh
    status: safe
    summary: Standard upstream build dependency script, no signs of malicious code.
  - file: src/NetworkManager/.gitlab-ci/alpine-install.sh
    status: safe
    summary: Upstream Alpine build script, no malicious activity.
  - file: src/NetworkManager/.gitlab-ci/run-test.sh
    status: safe
    summary: Standard CI build script, no malicious behavior.
  - file: src/NetworkManager/contrib/fedora/rpm/configure-for-system.sh
    status: safe
    summary: Development helper script; no malicious behavior detected.
  - file: src/NetworkManager/contrib/fedora/rpm/build.sh
    status: safe
    summary: Legitimate RPM build script, no malicious behavior detected.
  - file: src/NetworkManager/contrib/fedora/rpm/build_clean.sh
    status: safe
    summary: Standard build script; no malicious network or data exfiltration activity.
  - file: src/NetworkManager/contrib/fedora/rpm/mockbuild.sh
    status: safe
    summary: Standard build helper script with no malicious behavior.
---

Cloning https://aur.archlinux.org/networkmanager-iwd.git...
Cloned networkmanager-iwd
Analyzing networkmanager-iwd AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable definitions, arrays, and function definitions (build, check, package functions). No `pkgver()` function is defined, so no code runs during `pkgver()` evaluation. The `source` array references the official upstream repository (`git+https://gitlab.freedesktop.org/NetworkManager/NetworkManager.git`) with a pinned tag, and b2sums are provided (not SKIP). No dangerous commands (curl, wget, eval, base64, etc.) appear at the top level. The `.install` file is only used later by `makepkg` and is not executed during the source fetch or parsing steps. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the source from a trusted upstream and verify checksums, with no risk of executing malicious code.
</details>
<summary>Safe source fetch from official upstream.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe source fetch from official upstream.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, networkmanager-iwd.install...
LLM auditresponse for networkmanager-iwd.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (`.install`) for the `networkmanager-iwd` AUR package. It contains only informational messages displayed during post-install and post-remove steps, recommending enabling the iwd service and noting package dependencies. There are no network requests, obfuscated code, dangerous commands (eval, curl, wget, etc.), or any operations that modify system files beyond normal post-install messaging. The content is entirely benign and follows typical packaging practices.
</details>
<summary>Informational install script, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed networkmanager-iwd.install. Status: SAFE -- Informational install script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It fetches the source from the official NetworkManager repository on GitLab using a tagged version (pkgver=1.58.1). The checksums (b2sums) are present and not skipped. The build system uses meson, which is expected for this project. Configuration files are installed using heredocs, and subpackages are split via the `_pick` function. There are no suspicious network requests, no obfuscated code, no use of `eval`, `base64`, `curl|bash`, or any other dangerous commands. The `git+https://` source is pinned to a tag, and there is no `git pull` or `git fetch` in the build or prepare phases that would introduce unchecked content. The version substitution `pkgver/[a-z]/-&amp;` is a standard shell pattern to handle pre-release version tags and is benign given the current version string. No evidence of malicious intent or supply-chain attack is present.
</details>
<summary>Standard PKGBUILD with no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 79 compiled/archived file(s) cannot be audited as text and were not reviewed (src/NetworkManager/src/core/settings/plugins/ifcfg-rh/tests/network-scripts/test_ca_cert.pem, src/NetworkManager/src/core/settings/plugins/ifcfg-rh/tests/network-scripts/test_client.p12, src/NetworkManager/src/core/settings/plugins/keyfile/tests/keyfiles/test-ca-cert.pem and 76 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 2420 files available for selection; offering the 50 highest-priority to the model. 1961 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787370542-7R8B491Ogo1KgvcuD03l', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select up to 10 files that are most likely to contain malicious or dangerous code, prioritizing files that run at build/install time, or that can inject code. Already reviewed: PKGBUILD and networkmanager-iwd.install.\n\nFrom the listing, many are CI/contrib scripts, test scripts, configuration files, etc. The AUR package bundles the upstream NetworkManager source from a release tarball. The PKGBUILD and install hook already reviewed. The other files are from upstream source, not AUR-maintainer modifications. But we still need to inspect them if they could be dangerous. However, the user says "DEPRIORITIZE vendored upstream bundle content" and "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle contents." Here, the package is not a prebuilt archive; it builds from source, so the source files matter. But the user also says "The listing is already ordered with the most security-relevant files first." The listing shows many scripts. We need to pick files that are likely to run during build or install, or that could be used to fetch remote content, execute commands, etc.\n\nThe PKGBUILD already reviewed, and it defines build/install. The install hook also reviewed. The next most relevant are meson.build files? There is "src/NetworkManager/data/meson.build (×93 copies)" and "src/NetworkManager/meson_options.txt (×3 copies)". These are part of the build system. The data/meson.build is likely used to install data files; it could have malicious commands if modified. But these are upstream files; normally not... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787370542-7R8B491Ogo1KgvcuD03l', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select up to 10 files that are most likely to contain malicious or dangerous code, prioritizing files that run at build/install time, or that can inject code. Already reviewed: PKGBUILD and networkmanager-iwd.install.\n\nFrom the listing, many are CI/contrib scripts, test scripts, configuration files, etc. The AUR package bundles the upstream NetworkManager source from a release tarball. The PKGBUILD and install hook already reviewed. The other files are from upstream source, not AUR-maintainer modifications. But we still need to inspect them if they could be dangerous. However, the user says "DEPRIORITIZE vendored upstream bundle content" and "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle contents." Here, the package is not a prebuilt archive; it builds from source, so the source files matter. But the user also says "The listing is already ordered with the most security-relevant files first." The listing shows many scripts. We need to pick files that are likely to run during build or install, or that could be used to fetch remote content, execute commands, etc.\n\nThe PKGBUILD already reviewed, and it defines build/install. The install hook also reviewed. The next most relevant are meson.build files? There is "src/NetworkManager/data/meson.build (×93 copies)" and "src/NetworkManager/meson_options.txt (×3 copies)". These are part of the build system. The data/meson.build is likely used to install data files; it could have malicious commands if modified. But these are upstream files; normally not... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/coverity.sh, src/NetworkManager/.gitlab-ci/debian-install.sh, src/NetworkManager/.gitlab-ci/distros_support.py, src/NetworkManager/.gitlab-ci/fedora-install.sh, src/NetworkManager/.gitlab-ci/run-test.sh, src/NetworkManager/contrib/fedora/rpm/build.sh, src/NetworkManager/contrib/fedora/rpm/build_clean.sh, src/NetworkManager/contrib/fedora/rpm/configure-for-system.sh, src/NetworkManager/contrib/fedora/rpm/mockbuild.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh...
[0/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/coverity.sh...
[0/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/coverity.sh, src/NetworkManager/.gitlab-ci/debian-install.sh...
LLM auditresponse for coverity.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script interacts with Coverity Scan, a well-known static analysis service. It downloads the Coverity analysis tool from `scan.coverity.com` using a project-specific token, and uploads build results to the same service. These are standard operations for Coverity CI integration. No data is sent to any unexpected or unrelated host, no obfuscation or encoded commands are present, and no system files are tampered with. The script relies on environment variables typically set in CI runners (e.g., GitLab CI). There is no evidence of supply-chain attack or malicious activity.
</details>
<summary>Standard Coverity Scan CI helper script, no malicious behavior.</summary>
</security_assessment>

[0/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/coverity.sh, src/NetworkManager/.gitlab-ci/debian-install.sh, src/NetworkManager/.gitlab-ci/distros_support.py...
[1/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/debian-install.sh, src/NetworkManager/.gitlab-ci/distros_support.py...
+ Reviewed src/NetworkManager/.gitlab-ci/coverity.sh. Status: SAFE -- Standard Coverity Scan CI helper script, no malicious behavior.
LLM auditresponse for debian-install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a CI/build environment setup helper. It configures APT sources (only for old Debian releases, pointing to official archive.debian.org), applies workarounds for known packaging bugs (symlinking chfn, masking tmpfiles), installs required packages, and conditionally downgrades iproute2 from an official Debian mirror to fix unit test failures. Every action targets infrastructure used solely for building and testing NetworkManager. There is no obfuscated code, no data exfiltration, no download from untrusted hosts, and no execution of attacker-controlled payloads. The use of plain HTTP for the iproute2 download is a minor hygiene issue but is not indicative of malice (the domain is the official Debian package archive). The script is consistent with expected packaging and CI practices.
</details>
<summary>Standard CI setup script, no signs of malicious activity.</summary>
</security_assessment>

[2/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/distros_support.py...
+ Reviewed src/NetworkManager/.gitlab-ci/debian-install.sh. Status: SAFE -- Standard CI setup script, no signs of malicious activity.
[2/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/distros_support.py, src/NetworkManager/.gitlab-ci/fedora-install.sh...
LLM auditresponse for distros_support.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `distros_support.py` is a helper utility for NetworkManager development. It reads a local YAML file (`distros-info.yml`) containing distribution support dates and prints GitLab CI configuration. It performs no network requests, no file writes, no obfuscation, no execution of downloaded code, and no system modifications. It only uses `yaml.load` with the safe `BaseLoader`, parses dates, and outputs text. There is no malicious behavior or deviation from standard CI helper script practices.
</details>
<summary>Standard CI helper script, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/distros_support.py, src/NetworkManager/.gitlab-ci/fedora-install.sh, src/NetworkManager/.gitlab-ci/run-test.sh...
[3/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/fedora-install.sh, src/NetworkManager/.gitlab-ci/run-test.sh...
+ Reviewed src/NetworkManager/.gitlab-ci/distros_support.py. Status: SAFE -- Standard CI helper script, no security issues.
LLM auditresponse for fedora-install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an upstream NetworkManager build script for Fedora/CentOS systems. It installs required build dependencies by enabling official repositories (EPEL, Copr for nmstate) and running the project's own `REQUIRED_PACKAGES` script. All network operations target legitimate Fedora infrastructure (dl.fedoraproject.org, copr.fedorainfracloud.org, gitlab.freedesktop.org). No obfuscation, data exfiltration, or execution of untrusted code is present. The script performs standard dependency provisioning for building NetworkManager and its CI dependencies.
</details>
<summary>Standard upstream build dependency script, no signs of malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/run-test.sh...
+ Reviewed src/NetworkManager/.gitlab-ci/fedora-install.sh. Status: SAFE -- Standard upstream build dependency script, no signs of malicious code.
[4/10] Reviewing src/NetworkManager/.gitlab-ci/alpine-install.sh, src/NetworkManager/.gitlab-ci/run-test.sh, src/NetworkManager/contrib/fedora/rpm/build.sh...
LLM auditresponse for alpine-install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream build helper for Alpine Linux, included in the source tarball. It executes `./contrib/alpine/REQUIRED_PACKAGES` (likely a script to install dependencies) and creates a symbolic link from `elogind/systemd` to `/usr/include/systemd` for compatibility. No malicious behavior is present: there are no network calls, data exfiltration, obfuscated commands, or modifications outside the intended build scope. The script is consistent with upstream development practices and does not indicate a supply-chain attack.
</details>
<summary>Upstream Alpine build script, no malicious activity.</summary>
</security_assessment>

[5/10] Reviewing src/NetworkManager/.gitlab-ci/run-test.sh, src/NetworkManager/contrib/fedora/rpm/build.sh...
+ Reviewed src/NetworkManager/.gitlab-ci/alpine-install.sh. Status: SAFE -- Upstream Alpine build script, no malicious activity.
[5/10] Reviewing src/NetworkManager/.gitlab-ci/run-test.sh, src/NetworkManager/contrib/fedora/rpm/build.sh, src/NetworkManager/contrib/fedora/rpm/build_clean.sh...
LLM auditresponse for run-test.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a CI build/test script for the NetworkManager project, not part of the package installation. It performs standard build operations (meson, ninja, rpmbuild, tarball creation) and checks for OS type via /etc/os-release to adjust compile options. No suspicious network requests, data exfiltration, obfuscated code, or malicious file operations are present. The script runs `git clean -fdx` and `git diff --exit-code` for repository hygiene, which is normal in CI scripts. There is no evidence of a supply-chain attack; the script is consistent with legitimate upstream testing workflows.
</details>
<summary>Standard CI build script, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/NetworkManager/contrib/fedora/rpm/build.sh, src/NetworkManager/contrib/fedora/rpm/build_clean.sh...
+ Reviewed src/NetworkManager/.gitlab-ci/run-test.sh. Status: SAFE -- Standard CI build script, no malicious behavior.
[6/10] Reviewing src/NetworkManager/contrib/fedora/rpm/build.sh, src/NetworkManager/contrib/fedora/rpm/build_clean.sh, src/NetworkManager/contrib/fedora/rpm/configure-for-system.sh...
LLM auditresponse for configure-for-system.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a development helper for building and installing a local copy of NetworkManager from source in a manner that mimics Fedora/RHEL RPM builds. It does not fetch any remote code, exfiltrate data, or perform obfuscated operations. All commands (`git rev-parse`, `rpm --eval`, `meson`, `ninja`) are standard development tools used for their intended purposes. The script includes a clear warning that using it will overwrite system files provided by the package manager, which is expected behavior for a development overrides script. No indicators of a supply-chain attack are present.
</details>
<summary>Development helper script; no malicious behavior detected.</summary>
</security_assessment>

[7/10] Reviewing src/NetworkManager/contrib/fedora/rpm/build.sh, src/NetworkManager/contrib/fedora/rpm/build_clean.sh...
+ Reviewed src/NetworkManager/contrib/fedora/rpm/configure-for-system.sh. Status: SAFE -- Development helper script; no malicious behavior detected.
[7/10] Reviewing src/NetworkManager/contrib/fedora/rpm/build.sh, src/NetworkManager/contrib/fedora/rpm/build_clean.sh, src/NetworkManager/contrib/fedora/rpm/mockbuild.sh...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build helper for creating NetworkManager RPM packages from a local Git repository. It performs standard packaging operations: creating a source tarball via `git archive`, copying configuration files from the script directory into a temporary build area, generating a spec file with `sed`, running `rpmbuild`, and optionally signing the source with GPG. All file operations are contained within the build environment; no network requests (curl, wget, git fetch/pull) are made, no obfuscated code or encoded commands are present, and no system files outside the build tree are modified. The script adheres to normal RPM packaging workflows and contains no evidence of injected malicious behavior.

The only noteworthy characteristic is that when `SOURCE_FROM_GIT=1` (the default if no pre-existing tarball is found), the script uses the local Git state at `HEAD` to create the source archive. This is standard for development builds and does not introduce a supply-chain risk because it does not fetch unverified content from external sources at build time; it relies on whatever commit the user has checked out locally, which is entirely under the user's control.
</details>
<summary>Legitimate RPM build script, no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing src/NetworkManager/contrib/fedora/rpm/build_clean.sh, src/NetworkManager/contrib/fedora/rpm/mockbuild.sh...
+ Reviewed src/NetworkManager/contrib/fedora/rpm/build.sh. Status: SAFE -- Legitimate RPM build script, no malicious behavior detected.
LLM auditresponse for build_clean.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build helper for NetworkManager (upstream). It performs local git operations (rev-parse, clean, status) and runs meson to configure and create a distribution tarball, then invokes a companion `build.sh` script.  
There are no network requests (no curl, wget, or downloads), no obfuscated or encoded commands, no eval usage, and no attempts to read or exfiltrate sensitive system data. The file does not modify system files outside the build directory or perform any action that would constitute a supply-chain attack. All operations are typical for an upstream developer build script.
</details>
<summary>Standard build script; no malicious network or data exfiltration activity.</summary>
</security_assessment>

[9/10] Reviewing src/NetworkManager/contrib/fedora/rpm/mockbuild.sh...
+ Reviewed src/NetworkManager/contrib/fedora/rpm/build_clean.sh. Status: SAFE -- Standard build script; no malicious network or data exfiltration activity.
LLM auditresponse for mockbuild.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `mockbuild.sh` is a standard AUR maintainer helper script used to generate a source RPM from a git tree and rebuild it with `mock`. It does not perform any network requests, execute obfuscated code, exfiltrate data, or modify system files outside of the normal build process. The commands (`mock`, `readlink`, `sed`, and the referenced `build_clean.sh`) are all typical packaging operations. There is no evidence of malicious behavior.
</details>
<summary>Standard build helper script with no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/NetworkManager/contrib/fedora/rpm/mockbuild.sh. Status: SAFE -- Standard build helper script with no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 51,806
  Completion Tokens: 11,442
  Total Tokens: 63,248
  Total Cost: $0.005636
  Execution Time: 194.26 seconds

Final Status: SAFE


No issues found.
