---
package: powershell
pkgver: 7.6.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 52010
completion_tokens: 9325
total_tokens: 61335
cost: 0.00533200360
execution_time: 711.61
files_reviewed: 12
files_skipped: 0
files_unauditable: 39
unpinned_sources: 0
date: 2026-08-22T03:33:32Z
file_verdicts:
  - file: powershell.install
    status: safe
    summary: Standard shell registration script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no evidence of malicious behavior.
  - file: src/PowerShell/assets/MicrosoftUpdate/RegisterMicrosoftUpdate.ps1
    status: safe
    summary: Legitimate Microsoft Update registration script; no security concerns.
  - file: src/PowerShell/assets/GroupPolicy/InstallPSCorePolicyDefinitions.ps1
    status: safe
    summary: Standard administrative template installer; no malicious behavior detected.
  - file: src/PowerShell/docker/InstallTarballPackage.sh
    status: safe
    summary: Standard install script for PowerShell from official GitHub releases.
  - file: src/PowerShell/dsc/pwsh.profile.resource.ps1
    status: safe
    summary: PowerShell profile management script, no malicious behavior detected.
  - file: src/PowerShell/src/PowerShell.Core.Instrumentation/RegisterManifest.ps1
    status: safe
    summary: Legitimate ETW manifest registration script from Microsoft.
  - file: src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1
    status: safe
    summary: Standard release pipeline script, no malicious indicators.
  - file: src/PowerShell/src/powershell-native/Install-PowerShellRemoting.ps1
    status: safe
    summary: Legitimate PowerShell remoting configuration script, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for PowerShell releases.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is standard metadata; no malicious content.
  - file: src/PowerShell/.config/suppress.json
    status: safe
    summary: JSON suppression file for test certificates, no threats.
---

Cloning https://aur.archlinux.org/powershell.git...
Cloned powershell
Analyzing powershell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is safe to source and fetch sources for `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The top-level scope contains only static variable assignments, array definitions, and a comment block. There is no `pkgver()` function, no command substitutions, and no execution of external commands during sourcing. The `source` array points to the official PowerShell GitHub repository with a pinned tag and valid checksums (no SKIP). All functional code (prepare, build, check, package) resides inside functions that are not executed by these commands. No malicious activities are triggered.
</details>
<summary>No malicious code executed during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, powershell.install...
LLM auditresponse for powershell.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.install` script for the AUR `powershell` package. It manages adding and removing `/bin/pwsh` and `/usr/bin/pwsh` from the system's `/etc/shells` file. This is normal and expected behavior for any shell package to allow it to be set as a user's login shell. The script uses only basic shell commands (`grep`, `echo`, `sed`) and performs no network access, no download or execution of external code, no obfuscation, and no modifications to files outside of the intended scope. No security issues are present.
</details>
<summary>Standard shell registration script, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed powershell.install. Status: SAFE -- Standard shell registration script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard build script for the PowerShell package. It fetches source from the official GitHub repository using a pinned tag (`v$pkgver`) with checksums provided. The build process involves standard dotnet restore/publish commands, helper scripts for dependency management (`dotnet-outdated`), and removal of telemetry code. No obfuscation, data exfiltration, unexpected network requests, or execution of attacker-controlled code is present. The use of `dotnet outdated --upgrade` updates NuGet dependencies at build time, which is a trust/hygiene choice rather than a malicious injection. All operations serve the legitimate purpose of building and packaging PowerShell for Arch Linux.
</details>
<summary>Standard PKGBUILD, no evidence of malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no evidence of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 39 compiled/archived file(s) cannot be audited as text and were not reviewed (src/PowerShell/assets/Powershell-preview.icns, src/PowerShell/assets/Powershell.icns, src/PowerShell/docs/community/process_diagram.vsdx and 36 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 2566 files available for selection; offering the 50 highest-priority to the model. 2411 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787369000-rcT4aP34O13zPMI4UeiT', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to choose up to 10 files from the listing that are most likely to contain malicious or dangerous code, focusing on files that run at build or install time. The PKGBUILD and powershell.install are already reviewed, so we exclude them. The listing contains many files that are CI/CD pipeline YAML files, JSON configs, and some PowerShell scripts. \n\nFirst, identify files that could execute during build/install. The PKGBUILD likely calls some scripts, but we already reviewed it. The install hook is also reviewed. Now look at the remaining files: scripts that may be invoked during build/install. The listing includes several PowerShell scripts under src/PowerShell/.pipelines/EV2Specs/..., assets/, docker/, dsc/, src/PowerShell/src/... These are likely used for packaging, deployment, or testing. However, many are CI pipeline scripts or development tools. \n\nWe need to prioritize files that are actually invoked during makepkg. The PKGBUILD may reference some of these scripts. But we don\'t have the PKGBUILD content to check. Since we are to audit based on typical AUR packaging, the build process likely uses the upstream build system (dotnet build or similar). The install hook is already reviewed. \n\nGiven that the package is PowerShell itself, which is a large project, the AUR-specific files are likely only PKGBUILD and install hook. The rest are upstream source files. However, some of those upstream scripts could be used during build if the PKGBUILD references them. But we can\'t be sure. \n\nThe instruction says: "This package uses VCS sources (git/svn/hg). The cloned repository may contain files that are NOT installed by the package. Prioritize files that the PKGBUILD\'s package() function ref... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787369000-rcT4aP34O13zPMI4UeiT', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to choose up to 10 files from the listing that are most likely to contain malicious or dangerous code, focusing on files that run at build or install time. The PKGBUILD and powershell.install are already reviewed, so we exclude them. The listing contains many files that are CI/CD pipeline YAML files, JSON configs, and some PowerShell scripts. \n\nFirst, identify files that could execute during build/install. The PKGBUILD likely calls some scripts, but we already reviewed it. The install hook is also reviewed. Now look at the remaining files: scripts that may be invoked during build/install. The listing includes several PowerShell scripts under src/PowerShell/.pipelines/EV2Specs/..., assets/, docker/, dsc/, src/PowerShell/src/... These are likely used for packaging, deployment, or testing. However, many are CI pipeline scripts or development tools. \n\nWe need to prioritize files that are actually invoked during makepkg. The PKGBUILD may reference some of these scripts. But we don\'t have the PKGBUILD content to check. Since we are to audit based on typical AUR packaging, the build process likely uses the upstream build system (dotnet build or similar). The install hook is already reviewed. \n\nGiven that the package is PowerShell itself, which is a large project, the AUR-specific files are likely only PKGBUILD and install hook. The rest are upstream source files. However, some of those upstream scripts could be used during build if the PKGBUILD references them. But we can\'t be sure. \n\nThe instruction says: "This package uses VCS sources (git/svn/hg). The cloned repository may contain files that are NOT installed by the package. Prioritize files that the PKGBUILD\'s package() function ref... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/assets/GroupPolicy/InstallPSCorePolicyDefinitions.ps1, src/PowerShell/assets/MicrosoftUpdate/RegisterMicrosoftUpdate.ps1, src/PowerShell/docker/InstallTarballPackage.sh, src/PowerShell/dsc/pwsh.profile.resource.ps1, src/PowerShell/src/PowerShell.Core.Instrumentation/RegisterManifest.ps1, src/PowerShell/src/powershell-native/Install-PowerShellRemoting.ps1, .nvchecker.toml, REUSE.toml, src/PowerShell/.config/suppress.json
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/PowerShell/assets/GroupPolicy/InstallPSCorePolicyDefinitions.ps1...
[0/10] Reviewing src/PowerShell/assets/GroupPolicy/InstallPSCorePolicyDefinitions.ps1, src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1...
[0/10] Reviewing src/PowerShell/assets/GroupPolicy/InstallPSCorePolicyDefinitions.ps1, src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/assets/MicrosoftUpdate/RegisterMicrosoftUpdate.ps1...
LLM auditresponse for RegisterMicrosoftUpdate.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This PowerShell script registers Microsoft Update with the Windows Update Agent using a predefined COM interface and GUID (7971f918-a847-4430-9279-4a52d1efe18d). The script includes a `TestHook` parameter with options `Hang` and `Fail` for testing scenarios, executing either a long sleep or a throwing script block. The core logic interacts only with the Windows Update COM object (`Microsoft.Update.ServiceManager`) to check and set registration status. There are no network requests, file manipulations, obfuscated code, or system modifications beyond the intended Windows Update registration. The script is a legitimate, upstream-sourced tool from Microsoft (MIT licensed) and contains no injected malicious behavior. It is consistent with standard packaging practices.
</details>
<summary>Legitimate Microsoft Update registration script; no security concerns.</summary>
</security_assessment>

[0/10] Reviewing src/PowerShell/assets/GroupPolicy/InstallPSCorePolicyDefinitions.ps1, src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/assets/MicrosoftUpdate/RegisterMicrosoftUpdate.ps1, src/PowerShell/docker/InstallTarballPackage.sh...
[1/10] Reviewing src/PowerShell/assets/GroupPolicy/InstallPSCorePolicyDefinitions.ps1, src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/docker/InstallTarballPackage.sh...
+ Reviewed src/PowerShell/assets/MicrosoftUpdate/RegisterMicrosoftUpdate.ps1. Status: SAFE -- Legitimate Microsoft Update registration script; no security concerns.
LLM auditresponse for InstallPSCorePolicyDefinitions.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This PowerShell script installs Group Policy Administrative Templates (ADMX/ADML files) for PowerShell Core on Windows. It performs the following standard operations:
- Checks that the OS is Windows, the process is elevated, and it is not Nano Server.
- Copies the `PowerShellCoreExecutionPolicy.admx` and `.adml` files from a local path (defaulting to the script's directory) into `%WINDIR%\PolicyDefinitions\` and its `en-US` subdirectory.
- No network requests, no obfuscated code, no use of dangerous commands like `eval`, `curl`, `wget`, or `base64`.
- No data exfiltration, backdoors, or unexpected system modifications beyond installing policy definition files.

The script is a legitimate administrative tool from the upstream PowerShell project (Microsoft) and contains no evidence of a supply-chain attack. The file is safe.
</details>
<summary>Standard administrative template installer; no malicious behavior detected.</summary>
</security_assessment>

[1/10] Reviewing src/PowerShell/assets/GroupPolicy/InstallPSCorePolicyDefinitions.ps1, src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/docker/InstallTarballPackage.sh, src/PowerShell/dsc/pwsh.profile.resource.ps1...
[2/10] Reviewing src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/docker/InstallTarballPackage.sh, src/PowerShell/dsc/pwsh.profile.resource.ps1...
+ Reviewed src/PowerShell/assets/GroupPolicy/InstallPSCorePolicyDefinitions.ps1. Status: SAFE -- Standard administrative template installer; no malicious behavior detected.
LLM auditresponse for InstallTarballPackage.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script downloads a PowerShell release tarball from the official GitHub repository (`https://github.com/PowerShell/PowerShell/releases/download/...`), extracts it to `/opt/microsoft/powershell/`, creates a symlink at `/usr/bin/pwsh`, and adds the symlink path to `/etc/shells` if not already present. All operations are standard for a tarball-based installation of a legitimate application. There is no obfuscation, no unexpected network destinations, no exfiltration of data, and no execution of untrusted code. The script performs exactly the actions advertised by the package upstream.
</details>
<summary>Standard install script for PowerShell from official GitHub releases.</summary>
</security_assessment>

[3/10] Reviewing src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/dsc/pwsh.profile.resource.ps1...
+ Reviewed src/PowerShell/docker/InstallTarballPackage.sh. Status: SAFE -- Standard install script for PowerShell from official GitHub releases.
[3/10] Reviewing src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/dsc/pwsh.profile.resource.ps1, src/PowerShell/src/PowerShell.Core.Instrumentation/RegisterManifest.ps1...
LLM auditresponse for pwsh.profile.resource.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `pwsh.profile.resource.ps1` is a PowerShell Desired State Configuration (DSC) resource for managing PowerShell profile files. It performs only standard file operations (reading, writing, deleting) on profile paths derived from `$PROFILE`. There are no network requests, obfuscated code, base64 decoding, or execution of arbitrary commands. The script does not exfiltrate data, download or execute code from untrusted sources, or tamper with unrelated system files. All operations are confined to the legitimate PowerShell profile scope. No supply-chain attack indicators are present.
</details>
<summary>PowerShell profile management script, no malicious behavior detected.</summary>
</security_assessment>

[3/10] Reviewing src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/dsc/pwsh.profile.resource.ps1, src/PowerShell/src/PowerShell.Core.Instrumentation/RegisterManifest.ps1, src/PowerShell/src/powershell-native/Install-PowerShellRemoting.ps1...
[4/10] Reviewing src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/src/PowerShell.Core.Instrumentation/RegisterManifest.ps1, src/PowerShell/src/powershell-native/Install-PowerShellRemoting.ps1...
+ Reviewed src/PowerShell/dsc/pwsh.profile.resource.ps1. Status: SAFE -- PowerShell profile management script, no malicious behavior detected.
LLM auditresponse for RegisterManifest.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a legitimate Microsoft-provided utility for registering/unregistering the PowerShell ETW manifest on Windows. It performs the following standard operations:

- Checks that it is running on Windows and from an elevated process (required for ETW manifest registration).
- Uses `wevtutil.exe` (a built-in Windows tool) to unregister or register the manifest, with the binary paths provided via the `-Path` parameter.
- The use of `Invoke-Expression` is to execute the dynamically constructed `wevtutil` command, which is a common pattern in PowerShell when the command string is built from variables. While `Invoke-Expression` can be risky if user input is involved, here the input is constrained to the local manifest and binary files, and the command itself is a fixed utility. There is no evidence of obfuscation, network requests, or system modification beyond the intended ETW manifest management.

The script is consistent with standard packaging practices for PowerShell's own components. No supply-chain attack indicators are present.
</details>
<summary>Legitimate ETW manifest registration script from Microsoft.</summary>
</security_assessment>

[4/10] Reviewing src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/src/PowerShell.Core.Instrumentation/RegisterManifest.ps1, src/PowerShell/src/powershell-native/Install-PowerShellRemoting.ps1, .nvchecker.toml...
[5/10] Reviewing src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/src/powershell-native/Install-PowerShellRemoting.ps1, .nvchecker.toml...
+ Reviewed src/PowerShell/src/PowerShell.Core.Instrumentation/RegisterManifest.ps1. Status: SAFE -- Legitimate ETW manifest registration script from Microsoft.
LLM auditresponse for Run.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a release automation tool for PowerShell's official package publishing pipeline. It downloads files from URLs provided via environment variables (expected in a CI/CD context), extracts a tarball, installs a Python wheel (pmc-cli) from within the extracted archive, and then uses that CLI to upload and publish .deb and .rpm packages to configured repositories.  

- No obfuscated code, embedded base64, or `eval`/`curl|bash` patterns.  
- No exfiltration of local data (no access to `/etc/shadow`, SSH keys, etc.).  
- The URLs are sourced from environment variables (normal for CI pipelines) and point to the package's own upstream release artifacts.  
- The `pip install` on a `.whl` file from the extracted archive is standard for deploying required tooling within the same release workflow.  
- All file operations stay within `/package/unarchive/`, a temporary working directory.  

The script performs only the operations necessary for its stated purpose: staging and publishing PowerShell packages. There is no evidence of injected malicious code or supply-chain attack behavior.
</details>
<summary>Standard release pipeline script, no malicious indicators.</summary>
</security_assessment>

[5/10] Reviewing src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1, src/PowerShell/src/powershell-native/Install-PowerShellRemoting.ps1, .nvchecker.toml, REUSE.toml...
[6/10] Reviewing src/PowerShell/src/powershell-native/Install-PowerShellRemoting.ps1, .nvchecker.toml, REUSE.toml...
+ Reviewed src/PowerShell/.pipelines/EV2Specs/ServiceGroupRoot/Shell/Run/Run.ps1. Status: SAFE -- Standard release pipeline script, no malicious indicators.
LLM auditresponse for Install-PowerShellRemoting.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `Install-PowerShellRemoting.ps1` is a standard Microsoft-authored script for enabling PowerShell Remoting via WinRM on Windows. It performs administrative operations such as checking for administrator rights, creating registry keys, copying a plugin DLL, and restarting the WinRM service. All actions are directly related to its stated purpose and are typical for packaging and system configuration. There is no evidence of obfuscated code, unauthorized network requests, data exfiltration, or any other malicious behavior. The script is safe and follows expected packaging practices.
</details>
<summary>Legitimate PowerShell remoting configuration script, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing .nvchecker.toml, REUSE.toml...
+ Reviewed src/PowerShell/src/powershell-native/Install-PowerShellRemoting.ps1. Status: SAFE -- Legitimate PowerShell remoting configuration script, no malicious content.
[7/10] Reviewing .nvchecker.toml, REUSE.toml, src/PowerShell/.config/suppress.json...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a standard configuration for nvchecker, a tool used to track upstream releases. It specifies the GitHub repository `PowerShell/PowerShell`, a version prefix `v`, and instructs the tool to use the latest release. There is no executable code, no network requests beyond what is expected for version checking, and no indication of malicious intent. This is a routine packaging helper file.
</details>
<summary>Standard nvchecker config for PowerShell releases.</summary>
</security_assessment>

[8/10] Reviewing REUSE.toml, src/PowerShell/.config/suppress.json...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for PowerShell releases.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration file for the REUSE compliance tool, which automates license and copyright headers. It simply lists file path patterns and their associated SPDX copyright and license identifiers. There is no executable code, no network requests, no obfuscation, and no system modifications. The content is purely metadata and follows standard open-source practices. No security concerns are present.
</details>
<summary>REUSE.toml is standard metadata; no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/PowerShell/.config/suppress.json...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is standard metadata; no malicious content.
LLM auditresponse for suppress.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a JSON configuration for the "Credential Scanner" tool, listing suppressions for test certificate files (PFX and PSM1). It contains no executable code, network requests, or system modifications. The content is a standard development practice to suppress false positives for test credentials. There is no evidence of malicious behavior.
</details>
<summary>JSON suppression file for test certificates, no threats.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/PowerShell/.config/suppress.json. Status: SAFE -- JSON suppression file for test certificates, no threats.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 52,010
  Completion Tokens: 9,325
  Total Tokens: 61,335
  Total Cost: $0.005332
  Execution Time: 711.61 seconds

Final Status: SAFE


No issues found.
