---
package: acestream-engine
pkgver: 3.2.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 63955
completion_tokens: 8514
total_tokens: 72469
cost: 0.00728847
execution_time: 73.89
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T11:27:01Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license text; no executable or malicious content.
  - file: acestream-engine.install
    status: safe
    summary: Simple post-removal message, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with verified sources and safe packaging steps.
  - file: acestream-engine.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/Crypto/Cipher/__init__.py
    status: safe
    summary: Standard Python crypto library module; no suspicious behavior found.
  - file: src/Crypto/Cipher/_mode_cbc.py
    status: safe
    summary: Standard PyCryptodome CBC mode implementation, no security concerns.
  - file: src/Crypto/Hash/SHA256.py
    status: safe
    summary: Legitimate PyCryptodome SHA-256 module, no malicious code.
  - file: src/Crypto/Hash/HMAC.py
    status: safe
    summary: Standard cryptographic library file, no malicious code detected.
  - file: src/Crypto/Cipher/_mode_gcm.py
    status: safe
    summary: Standard PyCryptodome GCM implementation, no security issues.
  - file: acestream-engine.service
    status: safe
    summary: Standard systemd service file, no malicious code detected.
  - file: src/Crypto/Cipher/ChaCha20_Poly1305.py
    status: safe
    summary: Standard cryptographic library code, no malicious content.
  - file: src/Crypto/Cipher/_mode_ccm.py
    status: safe
    summary: Standard CCM encryption module, no malicious behavior.
  - file: src/Crypto/Cipher/PKCS1_v1_5.py
    status: safe
    summary: "Standard PyCryptodome PKCS#1 v1.5 cipher; no security concerns."
---

Cloning https://aur.archlinux.org/acestream-engine.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-0npv3r7d...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-0npv3r7d
Analyzing acestream-engine AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-0npv3r7d) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines variables, arrays, and functions in global scope but does not execute any code beyond that. There is no `pkgver()` function, no top-level command substitutions, no `eval`, no `curl|bash`, or any other dynamic execution that would run during sourcing. The `source` array contains only HTTPS URLs to the official Ace Stream download server and Python wheels from `files.pythonhosted.org` (the official PyPI CDN). All remote sources have valid SHA-256 checksums provided, so integrity is verified upon download. No suspicious or obfuscated content is present. The `makepkg` commands requested (`--nobuild --nodeps --noprepare`) will only fetch and verify these sources, which is a standard and safe operation.
</details>
<summary>No executable code in global scope; sources are legitimate and checksummed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No executable code in global scope; sources are legitimate and checksummed.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, LICENSE...
[0/3] Reviewing PKGBUILD, LICENSE, acestream-engine.install...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license agreement (EULA) for ACE Stream software. It contains only legal terms, definitions, and usage conditions. No executable code, scripts, network requests, obfuscation, or system commands are present. It is a standard license file distributed with the package and poses no security risk.
</details>
<summary>Plain license text; no executable or malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, acestream-engine.install...
+ Reviewed LICENSE. Status: SAFE -- Plain license text; no executable or malicious content.
LLM auditresponse for acestream-engine.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `acestream-engine.install` contains only a single `post_remove()` function that prints a message advising users to manually remove leftover files after uninstallation. There are no commands that execute code, make network requests, modify system files, or perform any operation beyond echoing text. This is a standard post-removal notification and does not pose any security risk.
</details>
<summary>Simple post-removal message, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed acestream-engine.install. Status: SAFE -- Simple post-removal message, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. All sources are fetched over HTTPS from the upstream project's official download site (`download.acestream.media`) and from the official Python Package Index mirror (`files.pythonhosted.org`). SHA256 checksums are provided for every source, ensuring integrity. The `package()` function performs only routine installation tasks: placing binaries, configuring paths, creating symlinks, installing systemd service and tmpfiles configuration, and installing Python wheels via the `installer` tool. There is no obfuscated code, no unexpected network requests, no execution of downloaded scripts, and no manipulation of files outside the package's own scope. The creation of a dedicated system user and service directory is normal practice for daemon packages. No supply-chain attack indicators are present.
</details>
<summary>Standard AUR PKGBUILD with verified sources and safe packaging steps.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with verified sources and safe packaging steps.
Reviewed all required files.
Deciding which files to review next...
Note: 1028 files available for selection; offering the 50 highest-priority to the model. 797 lower-priority file(s) were not offered.
LLM response for file selection:
acestream-engine.desktop
acestream-engine.service
src/Crypto/Cipher/__init__.py
src/Crypto/Cipher/PKCS1_v1_5.py
src/Crypto/Cipher/_mode_cbc.py
src/Crypto/Cipher/_mode_gcm.py
src/Crypto/Cipher/_mode_ccm.py
src/Crypto/Cipher/ChaCha20_Poly1305.py
src/Crypto/Hash/HMAC.py
src/Crypto/Hash/SHA256.py
Decided to review 10 additional files: acestream-engine.desktop, acestream-engine.service, src/Crypto/Cipher/__init__.py, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/_mode_cbc.py, src/Crypto/Cipher/_mode_gcm.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py, src/Crypto/Hash/HMAC.py, src/Crypto/Hash/SHA256.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing acestream-engine.desktop...
[0/10] Reviewing acestream-engine.desktop, acestream-engine.service...
[0/10] Reviewing acestream-engine.desktop, acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py...
[0/10] Reviewing acestream-engine.desktop, acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/__init__.py...
[0/10] Reviewing acestream-engine.desktop, acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/__init__.py, src/Crypto/Cipher/_mode_cbc.py...
[0/10] Reviewing acestream-engine.desktop, acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/__init__.py, src/Crypto/Cipher/_mode_cbc.py, src/Crypto/Cipher/_mode_ccm.py...
[0/10] Reviewing acestream-engine.desktop, acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/__init__.py, src/Crypto/Cipher/_mode_cbc.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/_mode_gcm.py...
[0/10] Reviewing acestream-engine.desktop, acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/__init__.py, src/Crypto/Cipher/_mode_cbc.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/_mode_gcm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py...
[0/10] Reviewing acestream-engine.desktop, acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/__init__.py, src/Crypto/Cipher/_mode_cbc.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/_mode_gcm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py, src/Crypto/Hash/HMAC.py...
[0/10] Reviewing acestream-engine.desktop, acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/__init__.py, src/Crypto/Cipher/_mode_cbc.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/_mode_gcm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py, src/Crypto/Hash/HMAC.py, src/Crypto/Hash/SHA256.py...
LLM auditresponse for acestream-engine.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Ace Stream Engine. It defines an application launcher with the `Exec` line pointing to the `acestream-engine` binary and standard configuration paths under `$HOME/.config/ACEStream`. There are no suspicious commands, network requests, obfuscated code, or attempts to modify system files. The file follows the freedesktop.org Desktop Entry Specification and contains only expected packaging content.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/__init__.py, src/Crypto/Cipher/_mode_cbc.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/_mode_gcm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py, src/Crypto/Hash/HMAC.py, src/Crypto/Hash/SHA256.py...
+ Reviewed acestream-engine.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Python module for the PyCryptodome library, defining cipher mode factory functions. It imports legitimate modules (`Crypto.Cipher.*`) and implements a `_create_cipher` function that dispatches to mode-specific constructors. There are no network requests, encoded or obfuscated commands, dangerous system calls, or any code that deviates from normal packaging or cryptographic library behavior. All operations are confined to standard Python crypto library patterns. No evidence of supply-chain attack or malicious intent.
</details>
<summary>Standard Python crypto library module; no suspicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/_mode_cbc.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/_mode_gcm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py, src/Crypto/Hash/HMAC.py, src/Crypto/Hash/SHA256.py...
+ Reviewed src/Crypto/Cipher/__init__.py. Status: SAFE -- Standard Python crypto library module; no suspicious behavior found.
LLM auditresponse for _mode_cbc.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the PyCryptodome library, a well-known and widely used cryptographic library for Python. It implements the CBC (Cipher Block Chaining) mode of operation for symmetric ciphers. The code follows standard cryptographic practices: it imports from the library's own internal modules (`Crypto.Util.py3compat`, `Crypto.Util._raw_api`, `Crypto.Random`), and wraps a C implementation via a raw API call (`load_pycryptodome_raw_lib`). There are no suspicious network requests, obfuscated code, unexpected file operations, or any deviation from the expected behavior of a mode implementation. The file is exactly what it appears to be—a normal, benign component of a legitimate cryptographic library.
</details>
<summary>
Standard PyCryptodome CBC mode implementation, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/_mode_gcm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py, src/Crypto/Hash/HMAC.py, src/Crypto/Hash/SHA256.py...
+ Reviewed src/Crypto/Cipher/_mode_cbc.py. Status: SAFE -- Standard PyCryptodome CBC mode implementation, no security concerns.
LLM auditresponse for SHA256.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard SHA-256 hash module from the PyCryptodome library. It contains no suspicious network requests, obfuscated code, file operations, or system modifications. All imports and function calls are consistent with the legitimate PyCryptodome package. There is no evidence of injected malicious code or supply chain attack indicators. The code performs only standard cryptographic hashing operations.
</details>
<summary>Legitimate PyCryptodome SHA-256 module, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/_mode_gcm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py, src/Crypto/Hash/HMAC.py...
+ Reviewed src/Crypto/Hash/SHA256.py. Status: SAFE -- Legitimate PyCryptodome SHA-256 module, no malicious code.
LLM auditresponse for HMAC.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard implementation of the HMAC algorithm (RFC 2104) from the PyCryptodome library. It imports from `Crypto` modules and performs cryptographic operations such as key padding, inner/outer hashing, and constant-time verification via BLAKE2s. There is no obfuscated code, no network requests, no data exfiltration, no execution of downloaded content, and no backdoors. The `copy` method uses a dummy key and then overwrites the internal state, which is a legitimate pattern for cloning hash objects. The file is consistent with its purpose as a cryptographic primitive and contains no evidence of supply-chain attack or malicious intent.
</details>
<summary>
Standard cryptographic library file, no malicious code detected.</summary>
</security_assessment>

[5/10] Reviewing acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/_mode_gcm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py...
+ Reviewed src/Crypto/Hash/HMAC.py. Status: SAFE -- Standard cryptographic library file, no malicious code detected.
LLM auditresponse for _mode_gcm.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard component of the PyCryptodome cryptographic library (`Crypto.Cipher._mode_gcm`). It implements the Galois/Counter Mode (GCM) for authenticated encryption, a well-established cryptographic algorithm (NIST SP 800-38D). The code contains no network requests, no obfuscated strings, no encoded payloads, no system command execution, and no file operations outside the normal scope of a Python cryptographic module. All imports are from the PyCryptodome package itself, and the dynamic loading of native libraries (`load_pycryptodome_raw_lib`) is the expected mechanism for accelerating GHASH computations. There is no evidence of injected malicious behavior; the file faithfully implements the GCM specification.
</details>
<summary>Standard PyCryptodome GCM implementation, no security issues.</summary>
</security_assessment>

[6/10] Reviewing acestream-engine.service, src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py...
+ Reviewed src/Crypto/Cipher/_mode_gcm.py. Status: SAFE -- Standard PyCryptodome GCM implementation, no security issues.
LLM auditresponse for acestream-engine.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the AceStream Engine. It defines a unit that starts after the network is available, runs the `acestream-engine` binary as the dedicated `acestream` user, and sets necessary environment variables and paths. There are no suspicious commands (e.g., `curl`, `wget`, `eval`, base64), no obfuscation, and no network exfiltration or unexpected file operations. The file strictly follows normal packaging practices for a system service.
</details>
<summary>Standard systemd service file, no malicious code detected.</summary>
</security_assessment>

[7/10] Reviewing src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/_mode_ccm.py, src/Crypto/Cipher/ChaCha20_Poly1305.py...
+ Reviewed acestream-engine.service. Status: SAFE -- Standard systemd service file, no malicious code detected.
LLM auditresponse for ChaCha20_Poly1305.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard implementation of the ChaCha20-Poly1305 AEAD cipher, sourced from PyCryptodome (Crypto.Cipher.ChaCha20, Crypto.Hash.Poly1305, etc.). It provides encryption, decryption, authentication, and key/nonce management. No network requests, no obfuscation, no system modifications, and no dangerous commands are present. The code follows standard cryptographic practices (e.g., constant-time MAC verification using BLAKE2s) and contains no evidence of malicious behavior. It is an expected component for a media streaming package that may require authenticated encryption.
</details>
<summary>Standard cryptographic library code, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/Crypto/Cipher/PKCS1_v1_5.py, src/Crypto/Cipher/_mode_ccm.py...
+ Reviewed src/Crypto/Cipher/ChaCha20_Poly1305.py. Status: SAFE -- Standard cryptographic library code, no malicious content.
LLM auditresponse for _mode_ccm.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard PyCryptodome module implementing the CCM authenticated encryption mode. It contains only cryptographic logic (block cipher operations, MAC computation, nonce handling) and imports expected dependencies (`Crypto.Util`, `Crypto.Hash`, `Crypto.Random`). There are no network requests, no code execution from external sources, no obfuscated payloads, and no unexpected file or system modifications. The `verify` method uses a constant-time comparison via BLAKE2s with a random key—a legitimate side-channel defense, not malicious. The file conforms to normal packaging practices for a cryptographic library.
</details>
<summary>Standard CCM encryption module, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/Crypto/Cipher/PKCS1_v1_5.py...
+ Reviewed src/Crypto/Cipher/_mode_ccm.py. Status: SAFE -- Standard CCM encryption module, no malicious behavior.
LLM auditresponse for PKCS1_v1_5.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard implementation of the PKCS#1 v1.5 cipher from the PyCryptodome library. It contains cryptographic operations (encrypt/decrypt) using RSA, with proper error handling and documentation. There is no evidence of malicious behavior: no network requests, no obfuscated code, no execution of external commands, and no unexpected file operations. The imports (Crypto.Random, Crypto.Util.number, etc.) are expected for this library. The code follows standard packaging practices for a cryptographic module.
</details>
<summary>Standard PyCryptodome PKCS#1 v1.5 cipher; no security concerns.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Crypto/Cipher/PKCS1_v1_5.py. Status: SAFE -- Standard PyCryptodome PKCS#1 v1.5 cipher; no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 63,955
  Completion Tokens: 8,514
  Total Tokens: 72,469
  Total Cost: $0.007288
  Execution Time: 73.89 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-acestream-engine.txt
Final Status: SAFE


No issues found.
