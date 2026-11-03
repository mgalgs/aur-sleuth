---
package: powershell-lts
pkgver: 7.6.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 157565
completion_tokens: 23947
total_tokens: 181512
cost: 0.018696769
execution_time: 153.56
files_reviewed: 28
files_skipped: 1
maintainer_files: 29
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T16:10:43Z
file_verdicts:
  - file: .editorconfig
    status: safe
    summary: Innocent EditorConfig formatting configuration file.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config tracking official upstream PowerShell 7.6 tags.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .pre-commit-config.yaml
    status: safe
    summary: Standard pre-commit hooks, no malicious behavior.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Static metadata file; no executable or malicious content.
  - file: build-modules.ps1
    status: safe
    summary: No malicious behavior; routine module build helper.
  - file: crossgen2-pack.targets
    status: safe
    summary: Benign MSBuild targets adjusting crossgen2 RID metadata; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD for PowerShell LTS from official sources.
  - file: mmi-optional.patch
    status: safe
    summary: Legitimate build configuration patch making a proprietary dependency optional.
  - file: help-cache-reset.patch
    status: safe
    summary: Benign patch for PowerShell help cache reset.
  - file: invoke-pester.ps1
    status: safe
    summary: Safe test invocation script for PowerShell Pester.
  - file: oneget-user-temp-folder.patch
    status: safe
    summary: Benign temp-directory patch; no malicious behavior found.
  - file: powershell-deps.hook
    status: safe
    summary: Standard pacman alpm hook refreshing PowerShell deps; no malicious behavior found.
  - file: oneget-net10.patch
    status: safe
    summary: Benign patch fixing type references and build configuration.
  - file: psmodulepath-combined-paths.patch
    status: safe
    summary: Patch only adjusts PSModulePath ordering logic; no malicious behavior found.
  - file: powershell.install
    status: safe
    summary: Standard Arch install script, clean.
  - file: psresourceget-net10.patch
    status: safe
    summary: Patch updates frameworks/packages and enables HTTP publishing compatibility; no malice.
  - file: psresourceget-test.ps1
    status: safe
    summary: Safe test script for PSResourceGet module.
  - file: telemetry-optional.patch
    status: safe
    summary: Patch adds legitimate build-time telemetry opt-out; no malicious behavior found.
  - file: test-json-list-output.patch
    status: skipped
    summary: "Skipping binary file: test-json-list-output.patch"
  - file: system-drawing-windows-only.patch
    status: safe
    summary: Standard cross-platform build configuration patch, no security concerns.
  - file: update-pwsh-deps
    status: safe
    summary: Simple wrapper regenerating pwsh.deps.json via dotnet; no malicious behavior.
  - file: update-help.ps1
    status: safe
    summary: Legitimate packaging helper for help files; no issues.
  - file: update-pwsh-deps.ps1
    status: safe
    summary: Benign deps.json merge helper; no network, eval, or exfiltration.
  - file: wayland-clipboard.patch
    status: safe
    summary: Legitimate Wayland clipboard support patch; no malicious behavior found.
  - file: powershell-modules.psm1
    status: safe
    summary: Build helper with no malicious behavior.
---

Materializing powershell-lts from local mirror...
Materialized powershell-lts
Analyzing powershell-lts AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging metadata at the global/top-level scope: variable assignments (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `depends`, `source`, checksum arrays, etc.) and function definitions (`_dotnet_env`, `_nupkg_info`, `_nuget_feeds`, `prepare`, `build`, `check`, `package`). Sourcing this file for `makepkg --printsrcinfo` executes the top-level assignments but does not invoke any function bodies.

There is no top-level command substitution, network fetch, download-and-execute, obfuscation, or data exfiltration. Commands such as `dotnet --info`, `git`, `bsdtar`, `sed`, and `patch` appear only inside function bodies, which are not executed during `makepkg --printsrcinfo`. The unpinned `git+https://github.com/OneGet/NuGetProvider.git` source and `SKIP` checksum are not relevant to this narrow gate and would not make this step unsafe.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; only standard variable definitions and function declarations.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only standard variable definitions and function declarations.
Reviewing the 29 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/29] Reviewing .SRCINFO...
[0/29] Reviewing .SRCINFO, .editorconfig...
[0/29] Reviewing .SRCINFO, .editorconfig, .gitignore...
LLM auditresponse for .editorconfig:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an EditorConfig configuration file. It contains only formatting settings (indentation, line endings, charset) for various file types used in an AUR package. There is no executable code, no network operations, no file modification outside the scope of EditorConfig. It is entirely benign.
</details>
<evidence></evidence>
<summary>Innocent EditorConfig formatting configuration file.</summary>
</security_assessment>

[1/29] Reviewing .SRCINFO, .gitignore...
+ Reviewed .editorconfig. Status: SAFE -- Innocent EditorConfig formatting configuration file.
[1/29] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal `nvchecker` configuration used by the package maintainer to detect new upstream releases of the PowerShell 7.6 LTS series. It declares a single section `[powershell-lts]` with `source = "git"`, the official upstream URL `https://github.com/PowerShell/PowerShell.git`, `use_max_tag = true`, a `v` tag prefix, and an include regex restricted to `v7.6.\d+`.

There is no executable code, no shell invocation, no download-and-execute pattern, no encoding/obfuscation, and no access to local files or credentials. Pointing at the project's own GitHub repository for version discovery is expected and consistent with standard AUR maintenance practice. Nothing here deviates from ordinary packaging tooling.
</details>
<evidence>
</evidence>
<summary>Benign nvchecker config tracking official upstream PowerShell 7.6 tags.</summary>
</security_assessment>

[1/29] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, .pre-commit-config.yaml...
[2/29] Reviewing .SRCINFO, .gitignore, .pre-commit-config.yaml...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config tracking official upstream PowerShell 7.6 tags.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch Linux package. It contains no executable code, no network requests, no obfuscated content, and no indications of malicious behavior. The file simply lists file patterns and directories to be ignored by Git, such as build artifacts (`pkg/`, `src/`, `*.tar`, `*.log`), and submodule dependencies (`PowerShell/`, `PowerShell-Native/`, etc.). These are routine packaging and version control practices, not supply-chain threats.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[2/29] Reviewing .SRCINFO, .gitignore, .pre-commit-config.yaml, LICENSE...
[3/29] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>The file is a plain-text license file (similar to the MIT License) attributed to "Arch Linux Contributors". It contains no executable code, no network requests, no obfuscation, and no instructions of any kind. There is nothing in this file that deviates from standard packaging or poses any security risk.</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/29] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE, LICENSE...
[4/29] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .pre-commit-config.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.pre-commit-config.yaml` configuration for the `pre-commit` tool, used to run local linters, formatters, and integrity checks before commits. All hooks use `language: system`, meaning they execute system-installed tools (e.g., `shfmt`, `shellcheck`, `ruff`, `biome`, `makepkg`, `pwsh`) with standard flags for formatting, linting, or verifying `.SRCINFO` checksums. There are no network requests, no external downloads, no obfuscated commands, and no unexpected system modifications. The `checksums` hook reads `.SRCINFO` to validate local source files against their stored hashes, which is a normal packaging integrity step. The file does not contain any malicious or dangerous behavior—it is a typical developer workflow configuration for an AUR package repository.
</details>
<evidence></evidence>
<summary>Standard pre-commit hooks, no malicious behavior.</summary>
</security_assessment>

[4/29] Reviewing .SRCINFO, .pre-commit-config.yaml, LICENSE, PKGBUILD...
[5/29] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .pre-commit-config.yaml. Status: SAFE -- Standard pre-commit hooks, no malicious behavior.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plaintext license statement. It contains no executable code, network requests, obfuscated content, file operations, or any other signs of malicious behavior. It is a standard permissive license document with no security implications.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[5/29] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[6/29] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a metadata file compliant with the REUSE specification. It only maps file paths to their respective copyright holders and SPDX license identifiers. No executable code, network requests, obfuscation, or system modifications are present. The content is purely declarative and follows standard packaging practices for license compliance documentation.
</details>
<evidence/>

<summary>Static metadata file; no executable or malicious content.</summary>
</security_assessment>

[6/29] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, build-modules.ps1...
[7/29] Reviewing .SRCINFO, PKGBUILD, build-modules.ps1...
+ Reviewed REUSE.toml. Status: SAFE -- Static metadata file; no executable or malicious content.
LLM auditresponse for build-modules.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a routine PowerShell build helper for the powershell-lts package. It defines parameters, imports a local helper module from the source directory, calls functions to build upstream PowerShell modules from source, and invokes ReadyToRun compilation against the locally built runtime.

There are no network downloads, no obfuscated or encoded commands, no eval-like execution of remote content, no credential or data exfiltration, and no writes outside the declared source/output paths. Invoking local build helper functions and crossgen2 is consistent with ordinary packaging workflow.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; routine module build helper.
</summary>
</security_assessment>

[7/29] Reviewing .SRCINFO, PKGBUILD, build-modules.ps1, crossgen2-pack.targets...
[8/29] Reviewing .SRCINFO, PKGBUILD, crossgen2-pack.targets...
+ Reviewed build-modules.ps1. Status: SAFE -- No malicious behavior; routine module build helper.
LLM auditresponse for crossgen2-pack.targets:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small MSBuild `.targets` fragment. It contains only a single `ItemGroup` that updates the `KnownCrossgen2Pack` item's `Crossgen2RuntimeIdentifiers`/`Crossgen2PortableRuntimeIdentifiers` metadata so that the SDK uses the source-built crossgen2 for the local RID. The descriptive comment explains exactly that purpose.

There are no network requests, no shell commands, no `eval`/`base64`/decoding, no file writes outside MSBuild item metadata, and no credential or data handling. It is consistent with normal .NET source-build packaging (PowerShell is built on .NET), and nothing deviates from expected packaging behavior.
</details>
<evidence>
</evidence>
<summary>Benign MSBuild targets adjusting crossgen2 RID metadata; no malicious behavior.</summary>
</security_assessment>

[8/29] Reviewing .SRCINFO, PKGBUILD, crossgen2-pack.targets, help-cache-reset.patch...
[9/29] Reviewing .SRCINFO, PKGBUILD, help-cache-reset.patch...
+ Reviewed crossgen2-pack.targets. Status: SAFE -- Benign MSBuild targets adjusting crossgen2 RID metadata; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `powershell-lts` AUR package. It defines sources, dependencies, checksums, and packaging options. All source URLs point to official Microsoft PowerShell repositories or well-known upstream projects (Pester, OneGet, etc.) on GitHub. Patches and helper scripts are referenced as local files within the package, not fetched from external hosts. No obfuscated code, dangerous commands (eval, base64, curl|bash), or unexpected network destinations are present. Some VCS sources are unpinned (e.g., `NuGetProvider.git` without a commit/tag) and some checksums are set to `SKIP` — these are standard AUR practices and not evidence of malice. The file shows no signs of supply-chain tampering or malicious injection.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious indicators.</summary>
</security_assessment>

[10/29] Reviewing PKGBUILD, help-cache-reset.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious indicators.
[10/29] Reviewing PKGBUILD, help-cache-reset.patch, invoke-pester.ps1...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a well-structured, legitimate build script for the PowerShell LTS package. It builds PowerShell entirely from source using the official upstream repositories (GitHub.com/PowerShell/*), with pinned commits for reproducibility. The file contains no obfuscated code, no suspicious network requests, and no attempts to exfiltrate data, install backdoors, or execute attacker-controlled content.

All patches are thoroughly documented with references to upstream issues and pull requests, indicating routine distribution maintenance. The `check_prebuilt` function is actually a security-hardening feature designed to detect if prebuilt binaries leak into the package from the NuGet cache instead of being built from source. The single `SKIP` checksum corresponds to a VCS source (NuGetProvider), which is standard practice for git-cloned repositories per AUR conventions. There is no evidence of supply-chain injection, credential theft, or any behavior outside the scope of building and packaging the stated software.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD for PowerShell LTS from official sources.</summary>
</security_assessment>

[10/29] Reviewing PKGBUILD, help-cache-reset.patch, invoke-pester.ps1, mmi-optional.patch...
[11/29] Reviewing help-cache-reset.patch, invoke-pester.ps1, mmi-optional.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD for PowerShell LTS from official sources.
LLM auditresponse for mmi-optional.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch makes the proprietary `Microsoft.Management.Infrastructure` (MMI) library optional in the PowerShell build by introducing a `UseMmi` build flag and wrapping MMI-dependent code in `#if MMI` preprocessor directives. It also adds stub classes, removes MMI references from configuration files, and updates tests to skip when MMI is absent. This is a legitimate build-system modification to allow Linux/Arch builds without a closed-source component. There are no network requests, obfuscated commands, backdoors, or exfiltration attempts. The patch follows standard C# conditional compilation practices for packaging an upstream project with optional dependencies. No security concerns are present.
</details>
<evidence></evidence>
<summary>Legitimate build configuration patch making a proprietary dependency optional.</summary>
</security_assessment>

[12/29] Reviewing help-cache-reset.patch, invoke-pester.ps1...
+ Reviewed mmi-optional.patch. Status: SAFE -- Legitimate build configuration patch making a proprietary dependency optional.
[12/29] Reviewing help-cache-reset.patch, invoke-pester.ps1, oneget-net10.patch...
LLM auditresponse for help-cache-reset.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch for the PowerShell help caching system. It modifies `CommandHelpProvider.cs` to save and restore the original `HelpFile` path of commands, allowing the cache to be properly reset when the UI culture changes or `Update-Help` is run. The accompanying test verifies this behavior. There is no obfuscation, no network activity, no execution of external binaries, and no modification of system state outside of PowerShell's own internal help subsystem. This patch represents a standard upstream bugfix and poses no supply-chain security risk.
</details>
<evidence></evidence>
<summary>Benign patch for PowerShell help cache reset.</summary>
</security_assessment>

[13/29] Reviewing invoke-pester.ps1, oneget-net10.patch...
+ Reviewed help-cache-reset.patch. Status: SAFE -- Benign patch for PowerShell help cache reset.
[13/29] Reviewing invoke-pester.ps1, oneget-net10.patch, oneget-user-temp-folder.patch...
LLM auditresponse for invoke-pester.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard test invocation script (invoke-pester.ps1) for PowerShell's own Pester test framework. It is intended to be run by the PowerShell interpreter being packaged. The script reads version constraints for the Pester module from the local build.psm1 file, modifies its PSModulePath to include the repository's test tools and an external modules folder, imports Pester, and executes the test suite against the repository's test scripts.

There is no evidence of genuinely malicious behavior such as network requests to unexpected hosts, obfuscated code, data exfiltration, backdoors, or system modifications outside the scope of running the project's test suite. The script operates exclusively on local paths provided as parameters and serves the routine purpose of verifying the build, consistent with standard packaging and maintainer practices.
</details>
<evidence>
</evidence>
<summary>Safe test invocation script for PowerShell Pester.</summary>
</security_assessment>

[13/29] Reviewing invoke-pester.ps1, oneget-net10.patch, oneget-user-temp-folder.patch, powershell-deps.hook...
[14/29] Reviewing oneget-net10.patch, oneget-user-temp-folder.patch, powershell-deps.hook...
+ Reviewed invoke-pester.ps1. Status: SAFE -- Safe test invocation script for PowerShell Pester.
LLM auditresponse for oneget-user-temp-folder.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a small upstream source patch for PowerShell's PackageManagement component. It changes temp-file handling so that, on Unix, files are placed in the user's `XDG_RUNTIME_DIR` (or `XDG_CACHE_HOME`/`~/.cache` as fallback) instead of the shared `/tmp`. This addresses a real correctness/security problem (shared `/tmp` ownership collisions) and stays within the application's own temp-file scope.

No network requests, downloads, obfuscation, encoded payloads, `eval`-style execution, credential access, or modifications to unrelated system files are present. The code only reads standard XDG environment variables and constructs paths for the application's own temporary files, which is consistent with ordinary packaging/upstream behavior. One minor hygiene note: trusting `XDG_RUNTIME_DIR`/`XDG_CACHE_HOME` from the environment is normal, but callers should ensure those directories are user-owned; that is a general robustness consideration, not evidence of malice.
</details>
<evidence>
</evidence>
<summary>Benign temp-directory patch; no malicious behavior found.</summary>
</security_assessment>

[15/29] Reviewing oneget-net10.patch, powershell-deps.hook...
+ Reviewed oneget-user-temp-folder.patch. Status: SAFE -- Benign temp-directory patch; no malicious behavior found.
[15/29] Reviewing oneget-net10.patch, powershell-deps.hook, powershell-modules.psm1...
LLM auditresponse for powershell-deps.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman alpm hook. It declares path triggers on the package's own deps file (`usr/lib/powershell-7/pwsh.base.deps.json`) and on drop-in JSON fragments under `usr/share/powershell/deps.d/`, and on the post-transaction it invokes `/usr/share/libalpm/scripts/update-pwsh-deps`, with `Depends = powershell` ensuring the owning package is installed.

There is no network access, no obfuscation/encoding, no `eval`, no shell pipelines, and no writes outside the application's own dependency-cache scope. Executing a maintainer-supplied script from `/usr/share/libalpm/scripts/` on a package-triggered transaction is the normal mechanism for refreshing a generated dependency cache (analogous to `ldconfig`/`update-desktop-database` hooks). The glob path trigger is a legitimate, supported pacman feature.

The only mild consideration is that the hook runs an external helper rather than an inline command, but that helper belongs to the same package family and its invocation here is consistent with the package's stated purpose. No evidence of malicious or unexpected behavior.
</details>
<evidence>
</evidence>
<summary>
Standard pacman alpm hook refreshing PowerShell deps; no malicious behavior found.
</summary>
</security_assessment>

[15/29] Reviewing oneget-net10.patch, powershell-deps.hook, powershell-modules.psm1, powershell.install...
[16/29] Reviewing oneget-net10.patch, powershell-modules.psm1, powershell.install...
+ Reviewed powershell-deps.hook. Status: SAFE -- Standard pacman alpm hook refreshing PowerShell deps; no malicious behavior found.
LLM auditresponse for oneget-net10.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a source code patch for the PowerShell PackageManagement component. The changes are mundane: they replace abbreviated type references with fully qualified names (e.g., `IAsyncEnumerable` &rarr; `Microsoft.PackageManagement.Internal.Utility.Async.IAsyncEnumerable`) to fix compilation issues on newer .NET versions, and introduce a `$TargetFramework` parameter in `build.ps1` to allow cross-compilation. There are no suspicious network requests, encoded payloads, file exfiltration, or backdoors. The patch follows standard patching practices for fixing upstream source code compatibility.
</details>
<evidence></evidence>
<summary>Benign patch fixing type references and build configuration.</summary>
</security_assessment>

[16/29] Reviewing oneget-net10.patch, powershell-modules.psm1, powershell.install, psmodulepath-combined-paths.patch...
[17/29] Reviewing powershell-modules.psm1, powershell.install, psmodulepath-combined-paths.patch...
+ Reviewed oneget-net10.patch. Status: SAFE -- Benign patch fixing type references and build configuration.
LLM auditresponse for psmodulepath-combined-paths.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch only modifies PowerShell module path handling logic in `ModuleIntrinsics.cs`. It corrects insertion-position calculations for combined `PSModulePath` entries and adjusts index advancement so multiple subpaths retain their intended order. No network access, command execution, obfuscation, credential access, or unrelated file operations are introduced.
</details>
<evidence>
</evidence>
<summary>
Patch only adjusts PSModulePath ordering logic; no malicious behavior found.
</summary>
</security_assessment>

[17/29] Reviewing powershell-modules.psm1, powershell.install, psmodulepath-combined-paths.patch, psresourceget-net10.patch...
[18/29] Reviewing powershell-modules.psm1, powershell.install, psresourceget-net10.patch...
+ Reviewed psmodulepath-combined-paths.patch. Status: SAFE -- Patch only adjusts PSModulePath ordering logic; no malicious behavior found.
LLM auditresponse for powershell.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `powershell.install` is a standard Arch Linux Package Install Script (.install hook). Its contents are entirely consistent with ordinary packaging practices for a shell interpreter.

The `post_install` function adds the binary paths (`/bin/pwsh` and `/usr/bin/pwsh`) to the system's `/etc/shells` file. This is a standard and expected operation for any package that provides a valid login shell (analogous to how `bash`, `zsh`, and `fish` register themselves in this file). It allows `pwsh` to be set as a user's login shell.

The `pre_remove` function cleans up these entries from `/etc/shells` and removes a package-specific state file (`/var/lib/powershell/pwsh.deps.json`) that was generated by a hook dependency. This is standard cleanup behavior for package removal.

There are no network requests, no obfuscated or encoded commands, no execution of untrusted code, and no tampering with files outside the application's legitimate operational scope. The file contains no evidence of supply-chain compromise or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard Arch install script, clean.</summary>
</security_assessment>

[18/29] Reviewing powershell-modules.psm1, powershell.install, psresourceget-net10.patch, psresourceget-test.ps1...
[19/29] Reviewing powershell-modules.psm1, psresourceget-net10.patch, psresourceget-test.ps1...
+ Reviewed powershell.install. Status: SAFE -- Standard Arch install script, clean.
LLM auditresponse for psresourceget-net10.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch updates the upstream project file to target `net10.0` and moves NuGet package references from 6.9.1 to 7.0.3, which is consistent with ordinary compatibility packaging. It also adds `allowInsecureConnections: true` to the NuGet publish call in `PublishHelper.cs`, with a comment explaining NuGet 7 compatibility for HTTP publishing sources.

This setting weakens transport security for package publishing and is worth noting as a security tradeoff, but it does not exfiltrate data, download or execute external code, obfuscate commands, create a backdoor, or modify unrelated system files. The change is within the application’s own publishing functionality and not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Patch updates frameworks/packages and enables HTTP publishing compatibility; no malice.
</summary>
</security_assessment>

[19/29] Reviewing powershell-modules.psm1, psresourceget-net10.patch, psresourceget-test.ps1, system-drawing-windows-only.patch...
[20/29] Reviewing powershell-modules.psm1, psresourceget-test.ps1, system-drawing-windows-only.patch...
+ Reviewed psresourceget-net10.patch. Status: SAFE -- Patch updates frameworks/packages and enables HTTP publishing compatibility; no malice.
LLM auditresponse for psresourceget-test.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an offline smoke test for the PSResourceGet PowerShell module. It creates a local folder repository, publishes a test module, then exercises the install, find, import, save, and uninstall commands. All operations are confined to the supplied `$WorkPath` directory and the standard PowerShell module installation location for the current user (via `-Scope CurrentUser`). There are no network requests, no obfuscated or encoded payloads, and no dangerous system modifications outside the expected scope of module testing. The `-Trusted` flag on the repository is part of normal PSResourceGet usage for a local test repository and is not evidence of malice. The script is clean and performs only the actions documented in its header comment.
</details>
<evidence>
</evidence>
<summary>Safe test script for PSResourceGet module.</summary>
</security_assessment>

[20/29] Reviewing powershell-modules.psm1, psresourceget-test.ps1, system-drawing-windows-only.patch, telemetry-optional.patch...
[21/29] Reviewing powershell-modules.psm1, system-drawing-windows-only.patch, telemetry-optional.patch...
+ Reviewed psresourceget-test.ps1. Status: SAFE -- Safe test script for PSResourceGet module.
LLM auditresponse for telemetry-optional.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an ordinary source patch for PowerShell that introduces a build-time switch `UseTelemetry` (via `-p:UseTelemetry=false`) to exclude Microsoft.ApplicationInsights and compile out the telemetry code path. It edits `PowerShell.Common.props`, `System.Management.Automation.csproj`, `Telemetry.cs`, and two test files consistently: defines a `TELEMETRY` constant by default, makes the ApplicationInsights `PackageReference` conditional, wraps the real telemetry implementation in `#if TELEMETRY`, and provides no-op stub methods in the `#else` branch. The test changes simply skip telemetry assertions when the assembly reference is absent.

There is nothing malicious: no network requests/downloads, no obfuscation or encoding, no eval/base64, no unexpected file operations, no exfiltration, and no tampering with unrelated system files. The changes actually reduce network telemetry. This is a legitimate packaging/upstream-style modification.

Minor hygiene note only: the patch itself is applied from the PKGBUILD and would need to match upstream context; that is a maintainability concern, not a security threat.
</details>
<evidence>
</evidence>
<summary>Patch adds legitimate build-time telemetry opt-out; no malicious behavior found.</summary>
</security_assessment>

[21/29] Reviewing powershell-modules.psm1, system-drawing-windows-only.patch, telemetry-optional.patch, test-json-list-output.patch...
[22/29] Reviewing powershell-modules.psm1, system-drawing-windows-only.patch, test-json-list-output.patch...
+ Reviewed telemetry-optional.patch. Status: SAFE -- Patch adds legitimate build-time telemetry opt-out; no malicious behavior found.
[22/29] Reviewing powershell-modules.psm1, system-drawing-windows-only.patch, test-json-list-output.patch, update-help.ps1...
[23/29] Reviewing powershell-modules.psm1, system-drawing-windows-only.patch, update-help.ps1...
! Reviewed test-json-list-output.patch. Status: SKIPPED -- Skipping binary file: test-json-list-output.patch
LLM auditresponse for system-drawing-windows-only.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a patch that modifies several PowerShell XML configuration files to conditionally include the `System.Drawing.Common` dependency only on Windows. This is a standard cross-platform compatibility fix, ensuring that Windows-only dependencies are not pulled in on non-Windows systems (e.g., Linux). The patch contains no network requests, no execution of external code, no obfuscation, no file operations outside the build configuration, and no suspicious commands. It is a benign implementation of platform-conditional dependencies, consistent with ordinary packaging practices for software that supports multiple operating systems.
</details>
<evidence>
</evidence>
<summary>
Standard cross-platform build configuration patch, no security concerns.
</summary>
</security_assessment>

[24/29] Reviewing powershell-modules.psm1, update-help.ps1...
+ Reviewed system-drawing-windows-only.patch. Status: SAFE -- Standard cross-platform build configuration patch, no security concerns.
[24/29] Reviewing powershell-modules.psm1, update-help.ps1, update-pwsh-deps...
LLM auditresponse for update-pwsh-deps:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `update-pwsh-deps` is a small wrapper script that executes PowerShell's own runtime (`dotnet exec` on `pwsh.dll`) to regenerate `pwsh.deps.json` from the base deps file and the fragment directory. It contains no network requests, no `curl`/`wget`, no `eval`, no base64/hex-encoded blobs, and no obfuscation. Paths are `@PSHOME@` placeholders substituted at build time, and output is written only to `/var/lib/powershell/pwsh.deps.json`, which is within the package's own state directory. This is consistent with ordinary packaging for a self-contained PowerShell distribution and does not touch unrelated system files or data.

The script is fully transparent and trivially auditable. The only noteworthy point is hygiene rather than security: it relies on generated state and the PowerShell script `/usr/share/powershell/update-pwsh-deps.ps1`, but that is the package's own declared upstream functionality. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Simple wrapper regenerating pwsh.deps.json via dotnet; no malicious behavior.
</summary>
</security_assessment>

[25/29] Reviewing powershell-modules.psm1, update-help.ps1...
+ Reviewed update-pwsh-deps. Status: SAFE -- Simple wrapper regenerating pwsh.deps.json via dotnet; no malicious behavior.
[25/29] Reviewing powershell-modules.psm1, update-help.ps1, update-pwsh-deps.ps1...
LLM auditresponse for update-help.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a packaging helper that installs PowerShell help files into the target installation directory. It uses standard PowerShell commands (`Update-Help`, `Invoke-WebRequest`, `bsdtar`) for legitimate purposes. The only external download URLs point to `pshelpprod.z22.web.core.windows.net/powershellget-3.x/`, which is a Microsoft Azure CDN hosting PowerShell help content – this is the package’s own upstream source and not an unexpected or suspicious host. The code is well-commented, contains no obfuscation, encoded commands, or attempts to exfiltrate data. It operates entirely within the expected scope of preparing the PowerShell installation with pre-downloaded help pages.

While the PowerShell help container URL for PSResourceGet is a workaround for a known upstream issue (GitHub issue referenced in the comments), this is a pragmatic packaging decision, not a supply-chain concern. There is no evidence of malicious injection or behavior that deviates from standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Legitimate packaging helper for help files; no issues.</summary>
</security_assessment>

[25/29] Reviewing powershell-modules.psm1, update-help.ps1, update-pwsh-deps.ps1, wayland-clipboard.patch...
[26/29] Reviewing powershell-modules.psm1, update-pwsh-deps.ps1, wayland-clipboard.patch...
+ Reviewed update-help.ps1. Status: SAFE -- Legitimate packaging helper for help files; no issues.
LLM auditresponse for update-pwsh-deps.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a small PowerShell helper that regenerates PowerShell's `pwsh.deps.json` by merging the upstream base deps file with fragment JSON files from other packages (e.g. Microsoft.Management.Infrastructure). It takes three mandatory path parameters, reads them with `Get-Content -LiteralPath`, parses with `ConvertFrom-Json -AsHashtable`, merges library entries (base wins on conflicts), and writes the result atomically via a `.new` temporary file plus `Move-Item`.

There is no network access, no `Invoke-Expression`/`eval`, no base64 or other encoding/obfuscation, no environment-variable or credential access, and no writes outside the caller-supplied `$OutputPath`. All file paths are explicitly passed in by the invoking pacman hook, so the script handles exactly the package's own configuration data. This is consistent with normal packaging practice and shows no evidence of injected malicious behavior.

Minor, non-security notes: `-Force` on `Move-Item` overwrites the destination as intended, and the script relies on the caller to supply trustworthy paths. Neither is a threat.
</details>
<evidence>
</evidence>
<summary>Benign deps.json merge helper; no network, eval, or exfiltration.</summary>
</security_assessment>

[27/29] Reviewing powershell-modules.psm1, wayland-clipboard.patch...
+ Reviewed update-pwsh-deps.ps1. Status: SAFE -- Benign deps.json merge helper; no network, eval, or exfiltration.
LLM auditresponse for wayland-clipboard.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds Wayland clipboard support to PowerShell's Clipboard.cs by preferring `wl-copy`/`wl-paste` when `WAYLAND_DISPLAY` is set and both commands are present in `PATH`, otherwise falling back to `xclip`. It also updates the corresponding test to skip appropriately when no clipboard backend is available.

No suspicious behavior is present: there are no network requests, encoded commands, file exfiltration, privilege changes, or execution of untrusted downloaded content. The PATH lookup and bare command invocation are consistent with the application's clipboard integration and do not constitute a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Legitimate Wayland clipboard support patch; no malicious behavior found.</summary>
</security_assessment>

[28/29] Reviewing powershell-modules.psm1...
+ Reviewed wayland-clipboard.patch. Status: SAFE -- Legitimate Wayland clipboard support patch; no malicious behavior found.
LLM auditresponse for powershell-modules.psm1:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PowerShell module containing helper functions for building PowerShell modules from source, as part of the AUR package powershell-lts. It performs standard build operations: invoking `dotnet restore`/`publish`, modifying `.csproj` files to adjust build targets and references, copying artifacts, and running `crossgen2` for ReadyToRun compilation. All network requests go through `dotnet` (the standard .NET build tool) using the supplied NuGet configuration; no direct calls to `curl`, `wget`, or other download utilities exist. File manipulations are confined to build output directories and module source trees. There is no obfuscation, encoded payloads, or unexpected system modification. The use of `Get-ScriptArrayValue` to parse an upstream build script is a lightweight, AST-based extraction of array values (assembly names) and does not execute arbitrary code. The script's purpose and behavior align with normal AUR packaging practices for building software from source.
</details>
<evidence></evidence>
<summary>Build helper with no malicious behavior.</summary>
</security_assessment>

[29/29] Reviewing ...
+ Reviewed powershell-modules.psm1. Status: SAFE -- Build helper with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: test-json-list-output.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 157,565
  Completion Tokens: 23,947
  Total Tokens: 181,512
  Total Cost: $0.018697
  Execution Time: 153.56 seconds

Final Status: SAFE


No issues found.


Audit Skips:

test-json-list-output.patch: [SKIPPED] Skipping binary file: test-json-list-output.patch
