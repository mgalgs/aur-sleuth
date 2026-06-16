---
package: zapzap
result: safe
model: qwen/qwen3-235b-a22b-2507
provider: openrouter
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: c7c8eb800c8bb0a56d24e4f4f0a52b19e8748db5
tokens: 35,909
cost: $0.003270
date: 2026-06-16T01:14:37Z
---

Cloning https://aur.archlinux.org/zapzap.git to /tmp/aur-sleuth/aur-sleuth-jkbapy0w...
Cloned repository to /tmp/aur-sleuth/aur-sleuth-jkbapy0w
Analyzing zapzap AUR package (working in /tmp/aur-sleuth/aur-sleuth-jkbapy0w) with qwen/qwen3-235b-a22b-2507 from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD does not contain any code that would be executed during `makepkg --nobuild` or `makepkg --printsrcinfo`. These commands only process the metadata and source array without invoking the `build()` or `package()` functions. The `source` array contains a Git URL with a tag reference and a local desktop file, both of which are static and verifiable. There is no use of `eval`, `exec`, command substitution, or other code injection mechanisms in the variable definitions. The b2sums are provided and fixed, and the URL points to a legitimate upstream repository. No network requests or file operations with dynamic content occur during the requested commands. While `rm -rf dist/` exists in `build()`, that function is not executed under `--nobuild`. The code is clean and follows standard PKGBUILD practices.
</details>
<summary>
No harmful code executed during --nobuild or --printsrcinfo
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No harmful code executed during --nobuild or --printsrcinfo[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing com.rtosta.zapzap.nogpu.desktop...
[0/2] Reviewing com.rtosta.zapzap.nogpu.desktop, PKGBUILD...
LLM auditresponse for com.rtosta.zapzap.nogpu.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a `.desktop` file, which is a desktop entry specification used by desktop environments (like GNOME, KDE) to integrate applications into the system menu and launch them. It does not contain executable code or scripts that run during package build or installation. The `Exec` line defines how the application is launched: it unsets certain environment variables and sets specific QtWebEngine flags to disable GPU acceleration and proxy usage when starting the `zapzap` binary.

There are no network operations, file manipulations, or shell commands that could lead to code execution, data exfiltration, or backdoor installation. The use of environment variable unsetting (`-u`) and flag setting is aimed at sandboxing and disabling potentially problematic graphics features, which is a common and safe practice for QtWebEngine-based applications. The desktop file itself is static metadata for the desktop environment and poses no security risk during `makepkg` or runtime beyond the normal behavior of launching the `zapzap` application with restricted GPU features.
</details>
<summary>
Benign desktop entry; no executable or harmful content.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed com.rtosta.zapzap.nogpu.desktop. Status: SAFE -- Benign desktop entry; no executable or harmful content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file defines a standard build and packaging process for the zapzap AUR package. It clones the source from a public GitHub repository using a git source entry with a tagged release, builds a Python wheel using `python -m build`, and installs it via `python -m installer`. All operations are transparent and use well-known, legitimate Python packaging tools.

The file includes proper checksums (b2sums) for all sources, including the git repository and a local desktop file, which helps ensure integrity. The only additional file, `com.rtosta.zapzap.nogpu.desktop`, is installed alongside the main desktop file and likely provides a GPU-disabled launch option—a common and safe practice. There are no network requests during build or package functions, no use of `eval`, `base64`, or obfuscated code, and no evidence of data exfiltration or backdoor installation.

All dependencies are standard and relevant to the application's stated purpose: a PyQt6-based desktop client for WhatsApp. The build commands are straightforward and do not modify system configuration or access sensitive paths. The package installs only public app metadata (icons, desktop files, appdata.xml) to appropriate system directories, consistent with FreeDesktop standards.
</details>
<summary>
Standard, transparent Python package build; no malicious code</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard, transparent Python package build; no malicious code
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/zapzap/run.py
src/zapzap/pyproject.toml
src/zapzap/com.rtosta.zapzap.yaml
src/zapzap/com.rtosta.zapzap.spec
src/zapzap/zapzap/__main__.py
src/zapzap/zapzap/webengine/WebView.py
src/zapzap/zapzap/webengine/PageController.py
src/zapzap/zapzap/views/ui_shortcuts_dialog.py
src/zapzap/zapzap/views/ui_settings.py
src/zapzap/zapzap/views/ui_page_network.py
Decided to review 10 additional files: src/zapzap/run.py, src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/webengine/PageController.py, src/zapzap/zapzap/views/ui_shortcuts_dialog.py, src/zapzap/zapzap/views/ui_settings.py, src/zapzap/zapzap/views/ui_page_network.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/zapzap/pyproject.toml...
[0/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml...
[0/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml, src/zapzap/run.py...
[0/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec...
[0/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py...
[0/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py...
[0/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/views/ui_shortcuts_dialog.py...
[0/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/views/ui_shortcuts_dialog.py, src/zapzap/zapzap/webengine/PageController.py...
[0/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/views/ui_shortcuts_dialog.py, src/zapzap/zapzap/webengine/PageController.py, src/zapzap/zapzap/views/ui_settings.py...
[0/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/com.rtosta.zapzap.yaml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/views/ui_shortcuts_dialog.py, src/zapzap/zapzap/webengine/PageController.py, src/zapzap/zapzap/views/ui_settings.py, src/zapzap/zapzap/views/ui_page_network.py...
LLM auditresponse for com.rtosta.zapzap.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a Flatpak manifest (com.rtosta.zapzap.yaml) used to build the zapzap application in a Flatpak environment. It specifies standard build and runtime configurations, including dependencies, file installations, and sandbox permissions. The build process uses `pip3` to install Python build tools and the application wheel, which is constructed locally from source via `python3 -m build`. The source is taken from the local directory (`type: dir, path: .`), indicating no remote code download at build time.

A notable line is the heredoc that writes `BuildInfo.py` with a hardcoded path `/home/tosta/Documentos/GitHub/zapzap`. While this exposes the upstream maintainer's local path, it is a non-hermeticity issue rather than a security threat. The path is static, does not involve command execution, environment leakage from the builder, or data exfiltration. It does not affect runtime behavior or compromise the installing user. All other operations are standard for Flatpak packaging: installing assets, setting environment variables, and cleaning up development files.

No network-based payloads, obfuscated code, runtime exfiltration mechanisms, or dangerous dynamic execution (e.g., eval, base64 decoding, curl | sh) are present. The `cleanup-commands` run a script from the app itself, but this occurs during the build inside the sandbox and does not introduce external risks. Overall, the manifest follows typical Flatpak practices and poses no concrete threat to users.
</details>
<summary>
No harmful code; only non-hermetic build metadata
</summary>
</security_assessment>

[1/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/views/ui_shortcuts_dialog.py, src/zapzap/zapzap/webengine/PageController.py, src/zapzap/zapzap/views/ui_settings.py, src/zapzap/zapzap/views/ui_page_network.py...
+ Reviewed src/zapzap/com.rtosta.zapzap.yaml. Status: SAFE -- No harmful code; only non-hermetic build metadata
LLM auditresponse for ui_page_network.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file `ui_page_network.py` is a UI layout definition written using PyQt6 for a network settings page. It defines graphical elements such as checkboxes, input fields, and labels related to proxy configuration and WebRTC IP leak prevention. The code contains no executable logic beyond standard Qt UI initialization and translation setup.

There are no system calls, network operations, file operations, or execution of external commands. The file does not download or execute remote content, exfiltrate data, or introduce any runtime side effects. The `if __name__ == "__main__":` block is limited to rendering the UI for standalone testing and cannot be triggered when imported as a module. All strings are static or gettext-based translations.

Cosmetically, the file uses HTML entity encoding (`&quot;` instead of `"`), which is valid in Python source and likely due to an export toolchain. This does not impact security. No obfuscation, dangerous patterns, or supply chain attack vectors are present.
</details>
<summary>
Benign UI code, no harmful logic
</summary>
</security_assessment>

[2/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/views/ui_shortcuts_dialog.py, src/zapzap/zapzap/webengine/PageController.py, src/zapzap/zapzap/views/ui_settings.py...
+ Reviewed src/zapzap/zapzap/views/ui_page_network.py. Status: SAFE -- Benign UI code, no harmful logic
LLM auditresponse for ui_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided Python file `ui_settings.py` is a standard PyQt6 UI definition file generated by Qt Designer and later adapted for use in a Python application. It defines a class `Ui_Settings` that sets up the visual elements of a settings window, including buttons, labels, layout containers, and scroll areas. The code exclusively deals with UI construction and translation of static text labels using `gettext`, with no execution of external commands, network operations, file system modifications, or dynamic code evaluation.

There are no security-sensitive operations present. All string content is literal or marked for translation; no obfuscated code, hidden payloads, or remote execution mechanisms are included. The `if __name__ == "__main__":` block is a common pattern for testing UI files in isolation and does not perform any harmful actions. It simply renders the UI for development preview. This file does not interact with system resources beyond what is necessary for UI rendering.

No exploitable vulnerabilities or malicious patterns were found. The code is safe to use within the context of a trusted PyQt6 application.
</details>
<summary>
Benign UI definition file with no security risks</summary>
</security_assessment>

[3/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/run.py, src/zapzap/com.rtosta.zapzap.spec, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/views/ui_shortcuts_dialog.py, src/zapzap/zapzap/webengine/PageController.py...
+ Reviewed src/zapzap/zapzap/views/ui_settings.py. Status: SAFE -- Benign UI definition file with no security risks
LLM auditresponse for com.rtosta.zapzap.spec:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a Fedora `.spec` file for packaging the ZapZap application, which is unrelated to Arch Linux's `PKGBUILD` system and will not be executed during an AUR package build using `makepkg`. As such, it poses no direct threat to users installing the package via AUR. The content of the spec file follows standard Fedora packaging practices: it defines metadata, dependencies, and installation procedures for building an RPM package from the upstream source.

There are no suspicious commands, obfuscated code, network operations, or execution of remote content within the file. All operations are confined to standard build and install routines (`%pyproject_wheel`, `%pyproject_install`, `install`), and the source is fetched from a legitimate, version-controlled GitHub release. The conditional dependency on PyQt6 packages for Fedora systems is normal and expected. Since this file is not processed by `makepkg` or any Arch Linux tooling, it cannot affect the build, install, or runtime behavior of the AUR package.

Thus, while the file exists as part of the AUR package metadata, it is inert in the Arch Linux build context and presents no concrete attack vector to the installing user.
</details>
<summary>
Harmless Fedora spec file, not executed on Arch
</summary>
</security_assessment>

[4/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/run.py, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/views/ui_shortcuts_dialog.py, src/zapzap/zapzap/webengine/PageController.py...
+ Reviewed src/zapzap/com.rtosta.zapzap.spec. Status: SAFE -- Harmless Fedora spec file, not executed on Arch
LLM auditresponse for ui_shortcuts_dialog.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file `ui_shortcuts_dialog.py` is a UI definition file written using PyQt6, typical of auto-generated code from Qt Designer or similar tools. It defines a dialog interface with two group boxes for displaying keyboard shortcuts, one for "WhatsApp Web" and another for "ZapZap", using `QTableWidget`. The code contains no malicious elements such as network requests, file system manipulations, execution of external commands, or data exfiltration mechanisms.

All methods are confined to setting up and translating static UI elements. The `if __name__ == "__main__":` block is standard boilerplate for testing the UI in isolation and does not perform any harmful operations. It simply creates a QApplication and displays the dialog. There is no use of `eval`, `exec`, `os.system`, `subprocess`, or any other dangerous function. The file does not read, write, or transmit sensitive data.

No obfuscation, suspicious strings, or encoded payloads are present. The use of `gettext` for translation and hard-coded UI labels is normal. The code's behavior is fully transparent and limited to rendering a non-interactive shortcuts dialog. Therefore, there is no concrete threat to the user during build, install, or runtime.
</details>
<summary>
Benign UI code, no harmful behavior
</summary>
</security_assessment>

[5/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/run.py, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py, src/zapzap/zapzap/webengine/PageController.py...
+ Reviewed src/zapzap/zapzap/views/ui_shortcuts_dialog.py. Status: SAFE -- Benign UI code, no harmful behavior
LLM auditresponse for PageController.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided Python file `PageController.py` is part of the ZapZap desktop application and implements a custom `QWebEnginePage` to manage web content behavior for WhatsApp Web. It includes functionality for handling link navigation, theme application, customization injection (CSS/JS), and user interactions like opening chats or new windows.

The code enforces security by restricting navigation to approved hosts via `__allowed_hosts__` in `acceptNavigationRequest`, preventing navigation to untrusted domains. It normalizes URLs and opens external links in the default browser rather than allowing in-app navigation. The file injects only predefined JavaScript for UI automation (e.g., keyboard events, theme control, toast messages) and customization (via `CustomizationsManager`, which loads user-defined scripts), but there is no evidence of unauthorized remote code execution, data exfiltration, or network calls to external servers. All injected scripts are either hardcoded or derived from local, trusted sources.

No obfuscated code, dangerous external downloads, or suspicious system interactions are present. Functions like `open_in_browser` and `xdg_open_chat` use standard Qt mechanisms to open URLs safely. The use of `runJavaScript` is limited to benign UI automation and theming. The file does not perform any file operations, network requests outside the main web view, or data collection.

Cosmetic issues such as hardcoded strings or internal error logging do not constitute security risks. The presence of feature permission auto-granting (e.g., for notifications) is typical in desktop wrappers of web apps and does not compromise user safety in this context.

Thus, the file poses no concrete threat to the user who installs the package.
</details>
<summary>
No malicious code; standard web wrapper behavior.
</summary>
</security_assessment>

[6/10] Reviewing src/zapzap/pyproject.toml, src/zapzap/run.py, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py...
+ Reviewed src/zapzap/zapzap/webengine/PageController.py. Status: SAFE -- No malicious code; standard web wrapper behavior.
LLM auditresponse for pyproject.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The `pyproject.toml` file contains standard metadata and build configuration for the Python package "zapzap". It specifies dependencies on `PyQt6` and `PyQt6-WebEngine`, which are legitimate libraries for creating Qt-based GUI applications with web browsing capabilities. The configuration includes optional dependencies like `dbus-python` for Linux platforms, which is reasonable for desktop integrations such as system notifications. There are no scripts, hooks, or commands that execute arbitrary code during installation. The version is dynamically pulled from `zapzap.__version__`, a common and safe pattern in Python packaging. No network operations, file modifications outside the package, or suspicious behaviors are defined in this file.

All listed package data (like JavaScript files and translation files) are static assets typical of a web-based desktop application. The file makes no attempt to download, execute, or exfiltrate data. The use of standard setuptools integration and declarative configuration aligns with best practices and poses no direct security threat to users during `makepkg` or installation. There is no evidence of obfuscated code, unauthorized network access, or backdoor mechanisms.

This configuration only defines how the package should be built and what it depends on — it does not introduce any runtime or build-time security risks. The package metadata, authors, and URLs appear consistent with a legitimate open-source project. No red flags were found.
</details>
<summary>
No malicious code; standard Python packaging config.
</summary>
</security_assessment>

[7/10] Reviewing src/zapzap/run.py, src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py...
+ Reviewed src/zapzap/pyproject.toml. Status: SAFE -- No malicious code; standard Python packaging config.
LLM auditresponse for run.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided `run.py` script is a Python program that acts as a launcher for either a Flatpak or local execution of an application, selecting between `FlatpakRunner` and `LocalRunner` based on the presence of the `--local` argument. The code does not perform any network operations, file system modifications beyond normal program execution, or shell command invocations. It only imports modules and dispatches to runner classes based on command-line arguments.

There is no evidence of obfuscated code, suspicious downloads (e.g., use of `curl`, `wget`, `requests`, or `subprocess` with remote sources), data exfiltration, or execution of remotely fetched payloads. The use of `sys.argv` and simple argument parsing is standard for entry-point scripts. The instantiation and calling of runner objects is done in a transparent and static manner.

The script does not write files, modify system state, or include dynamic code evaluation (`eval`, `exec`, `base64` decoding, etc.). Heredocs, shell injection vectors, or install-time side effects are absent. Thus, there is no concrete mechanism by which this file could harm the user during build or runtime within the context of a package installation.
</details>
<summary>
No harmful code; standard launcher script.
</summary>
</security_assessment>

[8/10] Reviewing src/zapzap/zapzap/__main__.py, src/zapzap/zapzap/webengine/WebView.py...
+ Reviewed src/zapzap/run.py. Status: SAFE -- No harmful code; standard launcher script.
LLM auditresponse for __main__.py:
&lt;security_assessment&gt;
&lt;decision&gt;SAFE&lt;/decision&gt;
&lt;details&gt;
The provided Python code is the main entry point for the `zapzap` application, a PyQt6-based desktop frontend for WhatsApp. It initializes application settings, manages themes, handles window creation, and processes command-line arguments. The code does not contain any suspicious or malicious behavior.

Analysis shows no evidence of network exfiltration, remote code execution, or unauthorized file system access. Command-line arguments are used only to set internal application settings or force Wayland usage, both benign operations. The use of `QDesktopServices.openUrl` to open the project website on first run is standard practice and controlled by a persistent setting that disables it after first use. No code is downloaded or executed from remote sources. The crash handler is for debugging and does not provide a backdoor.

There are no obfuscated payloads, `eval` calls, or suspicious use of `base64`, `curl`, or `wget`. File operations and system modifications are limited to application-internal state management via `SettingsManager`. The code adheres to standard desktop application patterns and poses no concrete threat to users who install the package.
&lt;/details&gt;
&lt;summary&gt;
No malicious code or security issues found&lt;/summary&gt;
&lt;/security_assessment&gt;

[9/10] Reviewing src/zapzap/zapzap/webengine/WebView.py...
+ Reviewed src/zapzap/zapzap/__main__.py. Status: SAFE -- No malicious code or security issues found
LLM auditresponse for WebView.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided `WebView.py` file is part of the ZapZap desktop application and is responsible for managing a Qt WebEngine view for WhatsApp Web. It includes standard operations such as profile configuration, signal handling, theme injection, spellcheck setup, and context menu customization.

The code reads and injects local JavaScript files (`webrtc_shield.js` and `theme_controller.js`) from the application's own directory using `os.path.dirname(__file__)`, which is safe and does not involve remote code execution or unsanctioned network access. The injection of scripts is done locally and explicitly for privacy (WebRTC leak prevention) and theming, both legitimate behaviors.

There are no network requests, obfuscated payloads, or shell commands. No credentials are sent out, no reverse shells are established, and all file operations are limited to local cache and storage directories under user control. The use of `exec`, `eval`, `subprocess`, or similar dangerous constructs is absent.

All behaviors align with expected functionality for a desktop WhatsApp client: managing web settings, UI customization, notifications, and privacy protection. No supply chain attack vectors or malicious mechanisms are present.

Thus, despite the complexity, the file is SAFE.
</details>
<summary>Benign code; no remote execution or data exfiltration</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/zapzap/zapzap/webengine/WebView.py. Status: SAFE -- Benign code; no remote execution or data exfiltration
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: qwen/qwen3-235b-a22b-2507
  Prompt Tokens: 32,095
  Completion Tokens: 3,814
  Total Tokens: 35,909
  Total Cost: $0.003270
  Execution Time: 59.92 seconds
Full audit report can be found in /tmp/aur-sleuth/aur-sleuth-report-zapzap.txt
Final Status: SAFE


No issues found.
