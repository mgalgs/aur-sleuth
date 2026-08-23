---
package: python-rapidocr
pkgver: 3.8.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 8d8d0257d643d9d16420224a81111c5f95181cb7
prompt_tokens: 64607
completion_tokens: 6836
total_tokens: 71443
cost: 0.00704511
execution_time: 52.58
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T06:46:16Z
file_verdicts:
  - file: pyproject.toml.patch
    status: safe
    summary: Patch is a benign metadata change, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/RapidOCR-3.8.4/python/rapidocr/__init__.py
    status: safe
    summary: Standard package init with no malicious code.
  - file: src/RapidOCR-3.8.4/python/rapidocr/config.yaml
    status: safe
    summary: Static configuration file with no executable or malicious content.
  - file: src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py
    status: safe
    summary: Standard model downloader for RapidOCR; no malicious content found.
  - file: src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py
    status: safe
    summary: Conventional download helper, no security concerns.
  - file: src/RapidOCR-3.8.4/Makefile
    status: safe
    summary: Standard Docker dev Makefile, no security issues.
  - file: src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py
    status: safe
    summary: Standard TensorRT engine builder, no security concerns.
  - file: src/RapidOCR-3.8.4/python/rapidocr/cli.py
    status: safe
    summary: Legitimate diagnostic check; no malicious behavior detected.
  - file: src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py
    status: safe
    summary: Standard configuration handler with no malicious behavior.
  - file: src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml
    status: safe
    summary: Configuration file with model URLs and checksums, no malicious code.
  - file: src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py
    status: safe
    summary: No malicious behavior; standard ML provider configuration module.
---

Cloning https://aur.archlinux.org/python-rapidocr.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-lupcyz9t...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-lupcyz9t
Analyzing python-rapidocr AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-lupcyz9t) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources files from the official GitHub repository and Modelscope (a legitimate model hosting platform) with pinned checksums (b2sums provided for all five entries). No `pkgver()` function exists; only a static variable assignment. The top-level scope contains only variable and array definitions, with no command substitutions or code execution. The `prepare()`, `build()`, and `package()` functions are present but will not execute under `makepkg --nobuild --nodeps --noprepare`. No dangerous network requests, obfuscated code, or unexpected operations occur during the source fetch or parsing steps. This is standard packaging practice and poses no immediate threat.
</details>
<summary>Safe: sources from expected hosts, no top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: sources from expected hosts, no top-level code execution.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pyproject.toml.patch...
LLM auditresponse for pyproject.toml.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the build metadata of pyproject.toml: it removes the `setuptools-scm` build dependency and hardcodes the version string instead of using a dynamic version. This is a routine packaging decision, not a security concern. No obfuscated code, network requests, or dangerous operations are introduced. The future timestamp (2026) is unusual but not evidence of malice.
</details>
<summary>Patch is a benign metadata change, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed pyproject.toml.patch. Status: SAFE -- Patch is a benign metadata change, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Python library. Sources are fetched from the project's official GitHub repository and from modelscope.cn, a legitimate model hosting platform used by the upstream project. All source files have valid checksums (b2sums). The build process uses standard Python tooling (`python -m build`, `python -m installer`) and includes typical steps like patching `pyproject.toml` for version numbering and copying model files. There is no obfuscated code, no unexpected network requests, no execution of untrusted remote code, and no exfiltration of system data. The `check()` function runs the application's built-in verify command, which is normal upstream functionality. No malicious behavior is present.
</details>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 125 files available for selection; offering the 50 highest-priority to the model. 31 lower-priority file(s) were not offered.
LLM response for file selection:
src/RapidOCR-3.8.4/Makefile
src/RapidOCR-3.8.4/python/rapidocr/__init__.py
src/RapidOCR-3.8.4/python/rapidocr/cli.py
src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py
src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py
src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py
src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py
src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py
src/RapidOCR-3.8.4/python/rapidocr/config.yaml
src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml
Decided to review 10 additional files: src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py, src/RapidOCR-3.8.4/python/rapidocr/config.yaml, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/Makefile...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/config.yaml...
[0/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/__init__.py, src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/config.yaml, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml...
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Python package `__init__.py` that imports modules and functions from the same package. There is no obfuscated code, network requests, file operations, or any suspicious activity. All imports reference internal modules (`main`, `utils.*`), which is normal packaging practice. No security concerns.</details>
<summary>Standard package init with no malicious code.</summary>
</security_assessment>

[1/10] Reviewing src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/config.yaml, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml...
+ Reviewed src/RapidOCR-3.8.4/python/rapidocr/__init__.py. Status: SAFE -- Standard package init with no malicious code.
LLM auditresponse for config.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard YAML configuration for the RapidOCR application. It contains only declarative settings such as engine options, model paths, threshold values, and shape parameters. There are no executable instructions, no network requests, no file operations that modify system files, and no obfuscated or encoded content. All paths reference local resources or are set to null. The content is consistent with normal packaging practices and does not exhibit any supply-chain attack indicators.
</details>
<summary>Static configuration file with no executable or malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml...
+ Reviewed src/RapidOCR-3.8.4/python/rapidocr/config.yaml. Status: SAFE -- Static configuration file with no executable or malicious content.
LLM auditresponse for download_models.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a model downloader for the RapidOCR package. It reads configuration from a YAML file, determines which OCR models (detection, classification, recognition) are needed, and downloads them from URLs provided by the application's own inference engine. The download process uses a helper class (`DownloadFile`) and optionally verifies SHA256 checksums. There is no evidence of malicious behavior:
- All network requests are to URLs obtained from the application's own configuration or model registry.
- No obfuscated code, encoded strings, or dangerous functions like `eval`, `curl`, or `wget` are used.
- File operations are limited to writing downloaded models to a user-specified or default cache directory.
- The script does not exfiltrate data, modify system files, or execute arbitrary commands.
</details>
<summary>Standard model downloader for RapidOCR; no malicious content found.</summary>
</security_assessment>

[3/10] Reviewing src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml...
+ Reviewed src/RapidOCR-3.8.4/python/rapidocr/utils/download_models.py. Status: SAFE -- Standard model downloader for RapidOCR; no malicious content found.
LLM auditresponse for download_file.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward download utility used to fetch files (likely model weights or other assets) for the `python-rapidocr` library. It performs standard HTTP downloads with progress bars and optional SHA256 verification. The code is clean, uses only well-known libraries (`requests`, `tqdm`), and contains no obfuscation, dangerous system calls, or network requests to unexpected hosts. There is no evidence of malicious or supply‑chain attack behavior. The download target URL is provided as input, which is expected for a utility that fetches application dependencies.  
</details>
<summary>Conventional download helper, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/RapidOCR-3.8.4/Makefile, src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml...
+ Reviewed src/RapidOCR-3.8.4/python/rapidocr/utils/download_file.py. Status: SAFE -- Conventional download helper, no security concerns.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Makefile for managing Docker dev environments. It defines targets to build, test, and shell into containers for various RapidOCR inference engines. All commands use `docker compose` with a specified compose file, which is typical development workflow. There is no obfuscated code, no unexpected network requests, no file operations outside the container management, and no execution of untrusted content. The HTML entity escaping (`&quot;`) is likely a formatting artifact from the user's input and does not introduce any security issue. The file behaves exactly as expected for a developer convenience script with no signs of malicious behavior.
</details>
<summary>
Standard Docker dev Makefile, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml...
+ Reviewed src/RapidOCR-3.8.4/Makefile. Status: SAFE -- Standard Docker dev Makefile, no security issues.
LLM auditresponse for engine_builder.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `engine_builder.py` is a standard TensorRT engine builder that reads an ONNX model from a local path, configures the builder with user-provided settings, and writes the resulting engine to a cache file. It uses only standard library modules (`pathlib`, `typing`) and the `tensorrt` package, which is the legitimate TensorRT Python binding. There are no network requests, no obfuscated code, no use of dangerous functions like `eval`, `base64`, `curl`, or `wget`, and no file operations outside the expected input/output paths. The code performs exactly the task described in its class docstring and contains no injected or suspicious behavior.
</details>
<summary>Standard TensorRT engine builder, no security concerns.</summary>
</security_assessment>

[6/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/cli.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml...
+ Reviewed src/RapidOCR-3.8.4/python/rapidocr/inference_engine/tensorrt/engine_builder.py. Status: SAFE -- Standard TensorRT engine builder, no security concerns.
LLM auditresponse for cli.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cli.py` is a utility module for the RapidOCR package. It contains helper functions: `generate_cfg` (copies a config file), `check_required_files` (verifies package file presence), and `check_install` (runs an OCR test using a known image from the official upstream at `modelscope.cn`).  

The network request in `check_install` fetches a test image from the project's own upstream repository (`RapidAI/RapidOCR`), which is a normal and expected operation for verifying installation correctness. There is no obfuscated code, no system modification commands, no exfiltration of sensitive data, and no backdoor. All operations are consistent with standard packaging and application functionality.
</details>
<summary>
Legitimate diagnostic check; no malicious behavior detected.
</summary>
</security_assessment>

[7/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml...
+ Reviewed src/RapidOCR-3.8.4/python/rapidocr/cli.py. Status: SAFE -- Legitimate diagnostic check; no malicious behavior detected.
LLM auditresponse for device_config.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `device_config.py` provides a configuration handler for OpenVINO CPU execution. It reads parameters from a configuration object and builds a dictionary for OpenVINO runtime settings. The code performs only safe operations: dictionary construction, string conversion, and logging. There are no network requests, no command execution, no file writes or reads of sensitive data, no obfuscation, and no deviation from normal application functionality. The use of `os.cpu_count()` is a standard Python API call. This file presents no security concerns.
</details>
<summary>Standard configuration handler with no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py, src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml...
+ Reviewed src/RapidOCR-3.8.4/python/rapidocr/inference_engine/openvino/device_config.py. Status: SAFE -- Standard configuration handler with no malicious behavior.
LLM auditresponse for default_models.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
This YAML configuration file is a manifest of OCR model files (detection, recognition, classification) and fonts for the RapidOCR project. It contains only declarative mappings: each entry specifies a `model_dir` (or `path`) URL pointing to the project's own upstream on modelscope.cn and a SHA256 checksum for integrity verification. Some entries also include `dict_url` references for recognition dictionaries from the same upstream. There are no executable scripts, obfuscated data, or commands of any kind. The file simply defines resources that the application will download and use at runtime to perform its stated OCR functionality. All network destinations are within the RapidAI/RapidOCR namespace on modelscope.cn, which is the expected upstream for this package. The presence of SHA256 hashes is a good hygiene practice for verifying downloaded model files. No evidence of malicious or supply-chain attack behavior was found.
</details>
<summary>Configuration file with model URLs and checksums, no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py...
+ Reviewed src/RapidOCR-3.8.4/python/rapidocr/default_models.yaml. Status: SAFE -- Configuration file with model URLs and checksums, no malicious code.
LLM auditresponse for provider_config.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration module for ONNX Runtime execution providers within the RapidOCR library. It uses only standard Python libraries (`platform`, `enum`, `typing`) and the `onnxruntime` package. The code checks for available hardware providers (CPU, CUDA, DirectML, CANN, CoreML) based on the system and user configuration, and logs warnings/instructions if a requested provider is not available. There are no network requests, no code execution from external sources, no obfuscation, no base64/curl/wget usage, and no file system modifications. All URLs included are printed as static strings for user guidance, not fetched at runtime. The behavior is entirely consistent with the expected functionality of an inference configuration module.
</details>
<summary>
No malicious behavior; standard ML provider configuration module.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/RapidOCR-3.8.4/python/rapidocr/inference_engine/onnxruntime/provider_config.py. Status: SAFE -- No malicious behavior; standard ML provider configuration module.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 64,607
  Completion Tokens: 6,836
  Total Tokens: 71,443
  Total Cost: $0.007045
  Execution Time: 52.58 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-python-rapidocr.txt
Final Status: SAFE


No issues found.
