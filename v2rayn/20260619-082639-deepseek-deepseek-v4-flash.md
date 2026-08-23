---
package: v2rayn
pkgver: 7.22.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 76654
completion_tokens: 10624
total_tokens: 87278
cost: 0.00881118
execution_time: 90.61
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T08:26:39Z
file_verdicts:
  - file: v2rayn.install
    status: safe
    summary: Informational install script with no malicious content.
  - file: v2rayn.sh
    status: safe
    summary: Standard launcher script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious code found.
  - file: src/GlobalHotKeys/.github/workflows/dotnet.yml
    status: safe
    summary: Standard CI workflow, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: src/v2rayN/v2rayN/ServiceLib/FodyWeavers.xml
    status: safe
    summary: Static build config, no security concerns.
  - file: src/v2rayN/package-osx.sh
    status: safe
    summary: Standard macOS packaging script for v2rayN; no malicious behavior.
  - file: src/GlobalHotKeys/src/Directory.Packages.props
    status: safe
    summary: Standard .NET package version configuration file; no malicious content.
  - file: src/v2rayN/package-rhel-riscv.sh
    status: safe
    summary: Standard build script for v2rayN on RISC‑V; no malicious behavior found.
  - file: src/v2rayN/package-debian-loong.sh
    status: safe
    summary: Legitimate build script for loongarch64 Debian packaging.
  - file: src/v2rayN/package-debian-riscv.sh
    status: safe
    summary: Legitimate build script for v2rayN Debian package on riscv64.
  - file: src/v2rayN/package-debian.sh
    status: safe
    summary: Standard Debian packaging script for v2rayN; no malicious behavior.
  - file: src/v2rayN/package-rhel.sh
    status: safe
    summary: Legitimate build script with expected upstream downloads.
---

Cloning https://aur.archlinux.org/v2rayn.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g4ga7prl...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g4ga7prl
Analyzing v2rayn AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g4ga7prl) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable definitions, source array declarations, and standard packaging metadata. There are no command substitutions, backtick executions, or function calls at the global level. The `pkgver()` function is not defined, so no code is executed during `makepkg --printsrcinfo` or sourcing beyond the trivial assignment of `pkgver=7.22.7`. The source URLs all point to the project's own GitHub repositories (`2dust/v2rayN`, `2dust/GlobalHotKeys`, `2dust/v2rayN-core-bin`), which is expected for this package. Checksums are provided for all non-VCS sources, while the VCS source (`GlobalHotKeys`) appropriately uses `SKIP`. There is no obfuscated code, no external executables being fetched from unexpected hosts, and no exfiltration or backdoor mechanisms. Executing `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only download the declared source archives and parse the PKGBUILD, both of which are standard and safe operations.
</details>
<summary>Standard PKGBUILD with no malicious top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no malicious top-level execution.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, v2rayn.install...
[0/3] Reviewing PKGBUILD, v2rayn.install, v2rayn.sh...
LLM auditresponse for v2rayn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `v2rayn.install` is a standard Arch Linux package install script. It contains only informational `echo` statements that instruct the user to manually download a core file and place it in the appropriate directory. There are no commands that execute code, make network requests, modify system files, or perform any other potentially dangerous operations. The script is entirely benign and follows normal packaging practices.
</details>
<summary>Informational install script with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, v2rayn.sh...
+ Reviewed v2rayn.install. Status: SAFE -- Informational install script with no malicious content.
LLM auditresponse for v2rayn.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script that simply executes the v2rayN binary from the system library path with the provided arguments. There are no network requests, obfuscated code, file operations, or any other suspicious behavior. It follows typical packaging practices for launching an application.
</details>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed v2rayn.sh. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices. It fetches the upstream source code from the official GitHub repository (`2dust/v2rayN`) using a tagged commit, and a pre-built binary zip from the same upstream's core-bin repository with a pinned SHA256 checksum. Submodule handling uses local paths and git configuration, which is typical for nested dependencies. Build and install steps are straightforward: `dotnet publish`, file copying, and creation of a symlink to the system `xray` binary. There is no obfuscated code, no unexpected network destinations, no execution of fetched content outside normal build tooling, and no manipulation of system files beyond the package's own installation paths. The `sha256sums` include the expected hashes and `SKIP` only for the VCS submodule source (which is normal). All operations serve the package's stated purpose as a GUI client for v2rayN, and no injected malicious behavior is present.
</details>
<summary>Standard AUR package, no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 469 files available for selection; offering the 50 highest-priority to the model. 367 lower-priority file(s) were not offered.
LLM response for file selection:
src/v2rayN/package-debian-loong.sh
src/v2rayN/package-debian-riscv.sh
src/v2rayN/package-debian.sh
src/v2rayN/package-osx.sh
src/v2rayN/package-rhel-riscv.sh
src/v2rayN/package-rhel.sh
.nvchecker.toml
src/v2rayN/v2rayN/ServiceLib/FodyWeavers.xml
src/GlobalHotKeys/.github/workflows/dotnet.yml
src/GlobalHotKeys/src/Directory.Packages.props
Decided to review 10 additional files: src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-rhel-riscv.sh, src/v2rayN/package-rhel.sh, .nvchecker.toml, src/v2rayN/v2rayN/ServiceLib/FodyWeavers.xml, src/GlobalHotKeys/.github/workflows/dotnet.yml, src/GlobalHotKeys/src/Directory.Packages.props
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, .nvchecker.toml...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, .nvchecker.toml, src/v2rayN/package-rhel-riscv.sh...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, .nvchecker.toml, src/v2rayN/package-rhel-riscv.sh, src/v2rayN/v2rayN/ServiceLib/FodyWeavers.xml...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, .nvchecker.toml, src/v2rayN/package-rhel-riscv.sh, src/v2rayN/v2rayN/ServiceLib/FodyWeavers.xml, src/GlobalHotKeys/src/Directory.Packages.props...
[0/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, .nvchecker.toml, src/v2rayN/package-rhel-riscv.sh, src/v2rayN/v2rayN/ServiceLib/FodyWeavers.xml, src/GlobalHotKeys/src/Directory.Packages.props, src/GlobalHotKeys/.github/workflows/dotnet.yml...
LLM auditresponse for dotnet.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GitHub Actions workflow for a .NET project. It uses official actions (`actions/checkout@v4.2.2`, `actions/setup-dotnet@v4.3.0`) with pinned versions. The only commands run are `dotnet restore`, `dotnet build`, and `dotnet test`, which are normal build steps. There are no suspicious network requests, obfuscated code, or attempts to exfiltrate data. The workflow is consistent with standard CI practices and does not introduce any supply-chain risks beyond those inherent to the upstream project itself.
</details>
<summary>Standard CI workflow, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, .nvchecker.toml, src/v2rayN/package-rhel-riscv.sh, src/v2rayN/v2rayN/ServiceLib/FodyWeavers.xml, src/GlobalHotKeys/src/Directory.Packages.props...
+ Reviewed src/GlobalHotKeys/.github/workflows/dotnet.yml. Status: SAFE -- Standard CI workflow, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for nvchecker, a tool that checks for new releases of software. It specifies the source as GitHub, the repository as "2dust/v2rayN", and instructs to use the latest release. There is no executable code, no obfuscation, no unexpected network destinations, and no deviation from normal packaging practices. It is a benign metadata file.
</details>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, src/v2rayN/package-rhel-riscv.sh, src/v2rayN/v2rayN/ServiceLib/FodyWeavers.xml, src/GlobalHotKeys/src/Directory.Packages.props...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for FodyWeavers.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `FodyWeavers.xml` is a standard configuration file for the Fody IL weaving tool, commonly used in .NET projects. It declares that the `ReactiveUI` weaver should be applied during build. There are no executable instructions, network requests, obfuscated content, or any operations that deviate from normal packaging or build practices. The content is static XML with no dynamic or dangerous commands.
</details>
<summary>Static build config, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-osx.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, src/v2rayN/package-rhel-riscv.sh, src/GlobalHotKeys/src/Directory.Packages.props...
+ Reviewed src/v2rayN/v2rayN/ServiceLib/FodyWeavers.xml. Status: SAFE -- Static build config, no security concerns.
LLM auditresponse for package-osx.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard macOS packaging script for the v2rayN application. It downloads a pre-built binary zip from the project's own GitHub repository (`2dust/v2rayN-core-bin`), extracts it, assembles a `.app` bundle with a `Info.plist`, and creates a DMG installer using `create-dmg`. All network operations target the project's official upstream source. There is no obfuscated code, no unexpected system modifications, no exfiltration of data, and no execution of untrusted content beyond the declared upstream binary. The use of `wget` without checksum verification is a common packaging practice (especially for binary releases) and does not indicate malice. The script performs only the actions necessary to produce a distributable macOS application bundle.
</details>
<summary>Standard macOS packaging script for v2rayN; no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, src/v2rayN/package-rhel-riscv.sh, src/GlobalHotKeys/src/Directory.Packages.props...
+ Reviewed src/v2rayN/package-osx.sh. Status: SAFE -- Standard macOS packaging script for v2rayN; no malicious behavior.
LLM auditresponse for Directory.Packages.props:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .NET MSBuild project file used for central package version management. It declares package version references for common .NET libraries (System.Reactive, NUnit, Avalonia, etc.) and sets properties like `ManagePackageVersionsCentrally`, `CentralPackageTransitivePinningEnabled`, and `CentralPackageVersionOverrideEnabled`. There is no executable code, no network requests, no system modifications, and no obfuscation. It is purely a configuration file for the .NET build system. No security concerns.
</details>
<summary>Standard .NET package version configuration file; no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh, src/v2rayN/package-rhel-riscv.sh...
+ Reviewed src/GlobalHotKeys/src/Directory.Packages.props. Status: SAFE -- Standard .NET package version configuration file; no malicious content.
LLM auditresponse for package-rhel-riscv.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build and packaging helper for creating an RPM of v2rayN on RISC‑V Linux. It performs standard operations: detecting the environment, installing dependencies via `dnf`, downloading the upstream source code and pre‑built binaries (Xray‑core, sing‑box, geo rules) from their official GitHub repositories, and building an RPM.  

The only notable supply‑chain consideration is the download of a RISC‑V .NET SDK from a third‑party GitHub user (`xujiegb/dotnet-riscv`) rather than Microsoft’s official channel. This is a practical necessity for the RISC‑V architecture and is not obfuscated or hidden; it is a known community project. The script does not contain any obfuscated code, backdoors, data exfiltration, or unexpected network destinations. All other downloads come from the package’s own upstream or well‑known rule‑set repositories.  

While the script lacks checksum verification for downloaded artifacts (a hygiene concern), this does not rise to the level of a genuine supply‑chain attack. The behavior is consistent with a legitimate AUR‑style packaging script.
</details>
<summary>Standard build script for v2rayN on RISC‑V; no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing src/v2rayN/package-debian-loong.sh, src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh...
+ Reviewed src/v2rayN/package-rhel-riscv.sh. Status: SAFE -- Standard build script for v2rayN on RISC‑V; no malicious behavior found.
LLM auditresponse for package-debian-loong.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script automates building a Debian package of v2rayN for the loongarch64 architecture. All network downloads target expected upstream sources: GitHub repositories of the v2rayN project (2dust), Xray-core (XTLS), sing-box (SagerNet), and geo-rule providers (Loyalsoldier, MetaCubeX). The dotnet SDK is fetched from the loongson/dotnet GitHub release, which is a legitimate fork for loongarch64. The NuGet configuration includes a custom source `loongnix` with `allowInsecureConnections="true"`; while this is a security weakness (permitting HTTP connections to that source), it is not evidence of a supply-chain attack—it is a pragmatic choice for accessing loongarch64-specific packages. The script performs no obfuscation, no data exfiltration, no execution of attacker-controlled code, and no tampering with system files outside the package's scope. All operations are consistent with standard packaging practices for this niche architecture.
</details>
<summary>Legitimate build script for loongarch64 Debian packaging.</summary>
</security_assessment>

[7/10] Reviewing src/v2rayN/package-debian-riscv.sh, src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh...
+ Reviewed src/v2rayN/package-debian-loong.sh. Status: SAFE -- Legitimate build script for loongarch64 Debian packaging.
LLM auditresponse for package-debian-riscv.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build helper for creating a Debian package of v2rayN on riscv64. It performs standard packaging operations: detecting the environment, installing dependencies (including a riscv64-specific .NET SDK from a third-party GitHub fork), cloning/checking out the upstream v2rayN repository, publishing the .NET application, and downloading core binaries (Xray, sing-box) and geo assets from the project's own GitHub releases and related repositories. All network destinations (github.com/2dust, github.com/XTLS, github.com/SagerNet, github.com/Loyalsoldier, github.com/MetaCubeX, and the dotnet-riscv fork) are directly related to the application's dependencies or the packaging workflow. There is no obfuscated code, no exfiltration of local data, no execution of attacker-controlled scripts, and no backdoors. The use of `git fetch --tags --force` and `git checkout -f` is normal for a build script that resolves a specific release tag. The third-party .NET SDK is a practical necessity for riscv64 support and is pinned to a specific version; while it introduces a trust dependency, it is not evidence of a supply-chain attack. The script is consistent with legitimate packaging practices.
</details>
<summary>Legitimate build script for v2rayN Debian package on riscv64.</summary>
</security_assessment>

[8/10] Reviewing src/v2rayN/package-debian.sh, src/v2rayN/package-rhel.sh...
+ Reviewed src/v2rayN/package-debian-riscv.sh. Status: SAFE -- Legitimate build script for v2rayN Debian package on riscv64.
LLM auditresponse for package-debian.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a Debian packaging script for v2rayN. It downloads dependencies (Xray-core, sing-box, geo assets) from the official GitHub repositories of the project and its upstream dependencies. It also fetches the .NET SDK installer from dot.net (Microsoft). All network destinations are legitimate and expected for this project: GitHub (`2dust/v2rayN`, `XTLS/Xray-core`, `SagerNet/sing-box`, `Loyalsoldier/geoip`, `MetaCubeX/meta-rules-dat`), `raw.githubusercontent.com/2dust`, and `dot.net`. There is no obfuscated code, base64 decoding, eval, or execution of arbitrary downloaded scripts during the build (the launcher scripts are static her docs). Git operations (`fetch --tags --force`, checkout) target the package's own upstream repository and are part of normal version selection. The absence of checksums and use of mutable references (e.g., `latest` download URLs) are hygiene concerns but not evidence of a supply-chain attack. The script does not exfiltrate data, install backdoors, or execute untrusted code from unexpected hosts.
</details>
<summary>Standard Debian packaging script for v2rayN; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/v2rayN/package-rhel.sh...
+ Reviewed src/v2rayN/package-debian.sh. Status: SAFE -- Standard Debian packaging script for v2rayN; no malicious behavior.
LLM auditresponse for package-rhel.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `package-rhel.sh` is a build automation script for packaging v2rayN as an RPM on RHEL-based distributions. It downloads upstream binaries (Xray-core, sing-box) and geo assets from official GitHub repositories (2dust, XTLS, SagerNet, Loyalsoldier, MetaCubeX). All network requests are HTTPS and point to legitimate upstream sources or the project's own infrastructure. There is no obfuscated code, no unexpected `eval`/`base64`/`exec` usage, and no exfiltration of local data. The script writes a spec file using variable substitution (no injection risk), and the downloaded artifacts are bundled into an RPM intended for installation. The use of mutable branch references (e.g., `raw.githubusercontent.com/2dust/v2rayN-core-bin/refs/heads/master`) is a standard distribution method by the upstream project and does not constitute a supply-chain attack—it is the project's own repository and the script's fallback to separate core downloads provides an alternative. No evidence of injected malicious behavior was found.
</details>
<summary>Legitimate build script with expected upstream downloads.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/v2rayN/package-rhel.sh. Status: SAFE -- Legitimate build script with expected upstream downloads.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 76,654
  Completion Tokens: 10,624
  Total Tokens: 87,278
  Total Cost: $0.008811
  Execution Time: 90.61 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-v2rayn.txt
Final Status: SAFE


No issues found.
