---
package: noirpass
pkgver: 1.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 41000
completion_tokens: 6190
total_tokens: 47190
cost: 0.00260814680
execution_time: 64.98
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-23T18:47:49Z
file_verdicts:
  - file: noirpass-1.0.0.tar.gz
    status: skipped
    summary: "Skipping binary file: noirpass-1.0.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
  - file: src/noirpass/src/main.rs
    status: safe
    summary: Clean entry point; no malicious behavior.
  - file: src/noirpass/Cargo.toml
    status: safe
    summary: Standard Cargo.toml with no malicious content.
  - file: src/noirpass/src/lib.rs
    status: safe
    summary: Standard library module declarations, no malicious content.
  - file: src/noirpass/src/gpg/crypto.rs
    status: safe
    summary: Standard OpenPGP encryption code, no security issues.
  - file: src/noirpass/src/store/files.rs
    status: safe
    summary: No malicious behavior found; standard crash-safe file operations only.
  - file: src/noirpass/src/gpg/agent.rs
    status: safe
    summary: Standard GPG decryption module, no security issues.
  - file: src/noirpass/src/service/session.rs
    status: safe
    summary: No malicious code; standard secret service session implementation.
  - file: src/noirpass/src/service/collection.rs
    status: safe
    summary: Legitimate D-Bus interface implementation, no malicious code found.
  - file: src/noirpass/src/config/format.rs
    status: safe
    summary: Safe Rust config management code.
  - file: src/noirpass/systemd/noirpass.service
    status: safe
    summary: Standard systemd service, no malicious content.
---

Cloning https://aur.archlinux.org/noirpass.git...
Cloned noirpass
Analyzing noirpass AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments and comments. No code in the global scope or `pkgver()` performs any network requests, command execution, or data exfiltration. The source is a tarball from the project's own Codeberg repository with a provided checksum. The `prepare()`, `build()`, `check()`, and `package()` functions are not executed by the requested commands (`--nobuild --noprepare`). There is no evidence of malicious or suspicious behavior in the top-level code.
</details>
<evidence></evidence>
<summary>No malicious code executed during source fetch and build info generation.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch and build info generation.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, noirpass-1.0.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed noirpass-1.0.0.tar.gz. Status: SKIPPED -- Skipping binary file: noirpass-1.0.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging conventions for a Rust-based application. The source is pinned to a specific version tag (v1.0.0) with a checksum (b2sums) provided. The build process uses `cargo fetch --locked`, `cargo build --frozen`, and `cargo test --frozen`, which are secure and reproducible. There are no suspicious network requests, obfuscated code, or unexpected file operations. The package installs only its own binary, D-Bus service file, systemd user service, and documentation. No signs of supply-chain tampering or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
Reviewed all required files.
Deciding which files to review next...
Note: 122 files available for selection; offering the 50 highest-priority to the model. 22 lower-priority file(s) were not offered.
LLM response for file selection:
src/noirpass/Cargo.toml
src/noirpass/src/main.rs
src/noirpass/src/lib.rs
src/noirpass/src/gpg/crypto.rs
src/noirpass/src/gpg/agent.rs
src/noirpass/src/store/files.rs
src/noirpass/src/service/collection.rs
src/noirpass/src/service/session.rs
src/noirpass/src/config/format.rs
src/noirpass/systemd/noirpass.service
Decided to review 10 additional files: src/noirpass/Cargo.toml, src/noirpass/src/main.rs, src/noirpass/src/lib.rs, src/noirpass/src/gpg/crypto.rs, src/noirpass/src/gpg/agent.rs, src/noirpass/src/store/files.rs, src/noirpass/src/service/collection.rs, src/noirpass/src/service/session.rs, src/noirpass/src/config/format.rs, src/noirpass/systemd/noirpass.service
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/noirpass/Cargo.toml...
[0/10] Reviewing src/noirpass/Cargo.toml, src/noirpass/src/lib.rs...
[0/10] Reviewing src/noirpass/Cargo.toml, src/noirpass/src/lib.rs, src/noirpass/src/main.rs...
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard entry point for a Rust CLI application. It defines a `main` function that delegates to a module `cli` via an async call. There are no network requests, obfuscated code, file operations, or any commands that could indicate malicious behavior. The code is minimal and follows normal application structure.
</details>
<evidence></evidence>
<summary>Clean entry point; no malicious behavior.</summary>
</security_assessment>

[0/10] Reviewing src/noirpass/Cargo.toml, src/noirpass/src/lib.rs, src/noirpass/src/main.rs, src/noirpass/src/gpg/crypto.rs...
[1/10] Reviewing src/noirpass/Cargo.toml, src/noirpass/src/lib.rs, src/noirpass/src/gpg/crypto.rs...
+ Reviewed src/noirpass/src/main.rs. Status: SAFE -- Clean entry point; no malicious behavior.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `Cargo.toml` file for a Rust crate. It declares package metadata, dependencies, features, and build profiles. All dependencies are pinned to specific versions from trusted sources (crates.io). The feature flags and configuration options are conventional for a freedesktop Secret Service implementation (e.g., GPG support, D-Bus integration, cryptography). There are no suspicious network requests, obfuscated code, or system modifications. The file contains no executable content or commands that could introduce supply chain risks.
</details>
<evidence></evidence>
<summary>Standard Cargo.toml with no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/noirpass/src/lib.rs, src/noirpass/src/gpg/crypto.rs...
+ Reviewed src/noirpass/Cargo.toml. Status: SAFE -- Standard Cargo.toml with no malicious content.
[2/10] Reviewing src/noirpass/src/lib.rs, src/noirpass/src/gpg/crypto.rs, src/noirpass/src/gpg/agent.rs...
LLM auditresponse for lib.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust library root that declares public modules and re-exports the `Error` and `Result` types. It contains no code that performs network requests, file operations, system commands, or any other potentially dangerous behavior. The modules (`config`, `crypto`, `error`, `filesystem`, `gpg`, `service`, `store`) are typical for a GPG-backed Secret Service implementation and do not indicate any injected malicious content. There is no obfuscation, no unexpected logic, and no deviation from ordinary packaging practices.
</details>
<evidence></evidence>
<summary>Standard library module declarations, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/noirpass/src/gpg/crypto.rs, src/noirpass/src/gpg/agent.rs...
+ Reviewed src/noirpass/src/lib.rs. Status: SAFE -- Standard library module declarations, no malicious content.
[3/10] Reviewing src/noirpass/src/gpg/crypto.rs, src/noirpass/src/gpg/agent.rs, src/noirpass/src/store/files.rs...
LLM auditresponse for crypto.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements OpenPGP encryption using the `sequoia-openpgp` library. It performs standard cryptographic operations: filtering certificate keys for encryption-capable, alive, unrevoked subkeys, then encrypting the plaintext using the Sequoia streaming API. There are no network requests, obfuscated code, unexpected file operations, or system modifications. The code is straightforward and consistent with the application's stated purpose of providing password management with GPG encryption. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard OpenPGP encryption code, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/noirpass/src/gpg/crypto.rs, src/noirpass/src/gpg/agent.rs, src/noirpass/src/store/files.rs, src/noirpass/src/service/collection.rs...
[4/10] Reviewing src/noirpass/src/gpg/agent.rs, src/noirpass/src/store/files.rs, src/noirpass/src/service/collection.rs...
+ Reviewed src/noirpass/src/gpg/crypto.rs. Status: SAFE -- Standard OpenPGP encryption code, no security issues.
LLM auditresponse for files.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file implements atomic secret-file writes and reads using safe filesystem operations: staging a file, creating a hard link, and cleaning up temporary files on errors. It uses `fs::hard_link`, `fs::remove_file`, and directory sync, all consistent with crash-safe ciphertext storage. There are no network requests, no external code execution, no obfuscated commands, and no operations outside the store's own secrets directory. The `read_regular_file_nofollow` helper is appropriate for preventing symlink attacks. No evidence of malicious or injected behavior exists.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; standard crash-safe file operations only.</summary>
</security_assessment>

[4/10] Reviewing src/noirpass/src/gpg/agent.rs, src/noirpass/src/store/files.rs, src/noirpass/src/service/collection.rs, src/noirpass/src/service/session.rs...
[5/10] Reviewing src/noirpass/src/gpg/agent.rs, src/noirpass/src/service/collection.rs, src/noirpass/src/service/session.rs...
+ Reviewed src/noirpass/src/store/files.rs. Status: SAFE -- No malicious behavior found; standard crash-safe file operations only.
LLM auditresponse for agent.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate Rust module that implements GPG-agent-backed decryption using the `sequoia-gpg-agent` and `sequoia-openpgp` libraries. It performs standard cryptographic operations (PKESK decryption via the agent, building keypairs, etc.) that are expected for a password manager like noirpass. There are no network requests, obfuscated code, suspicious file operations, or attempts to exfiltrate data. The code follows normal Rust packaging practices and uses established cryptographic libraries. No evidence of a supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard GPG decryption module, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/noirpass/src/gpg/agent.rs, src/noirpass/src/service/collection.rs, src/noirpass/src/service/session.rs, src/noirpass/src/config/format.rs...
[6/10] Reviewing src/noirpass/src/service/collection.rs, src/noirpass/src/service/session.rs, src/noirpass/src/config/format.rs...
+ Reviewed src/noirpass/src/gpg/agent.rs. Status: SAFE -- Standard GPG decryption module, no security issues.
LLM auditresponse for session.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust module implementing the `org.freedesktop.Secret.Session` D-Bus interface for the noirpass secret service daemon. It defines the `Secret` wire struct and the `Session` object with `Close` method logic. The code uses only standard Rust libraries (zbus, serde, zeroize) and contains no network requests, obfuscated commands, dangerous system operations, or exfiltration of data. The `close_with_removal` method properly cleans up session state and ciphers. Test code is confined to unit tests using temp directories and local P2P D-Bus connections. There is no evidence of supply-chain injection, backdoors, or malicious behavior. The file follows standard packaging and application practices for a Secret Service implementation.
</details>
<evidence></evidence>
<summary>No malicious code; standard secret service session implementation.</summary>
</security_assessment>

[6/10] Reviewing src/noirpass/src/service/collection.rs, src/noirpass/src/service/session.rs, src/noirpass/src/config/format.rs, src/noirpass/systemd/noirpass.service...
[7/10] Reviewing src/noirpass/src/service/collection.rs, src/noirpass/src/config/format.rs, src/noirpass/systemd/noirpass.service...
+ Reviewed src/noirpass/src/service/session.rs. Status: SAFE -- No malicious code; standard secret service session implementation.
LLM auditresponse for collection.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements the `org.freedesktop.Secret.Collection` D-Bus interface for the noirpass password manager. It handles standard operations such as creating, deleting, and searching items, as well as managing collection properties (label, locked, created, modified). All secrets are encrypted with the user's OpenPGP key before being stored, and the code uses the application's own internal storage backend (`self.state.store()`). No network requests, obfuscated code, dangerous system calls, or data exfiltration are present. The file is consistent with ordinary packaging and the stated purpose of providing a Secret Service provider.
</details>
<evidence></evidence>
<summary>Legitimate D-Bus interface implementation, no malicious code found.</summary>
</security_assessment>

[8/10] Reviewing src/noirpass/src/config/format.rs, src/noirpass/systemd/noirpass.service...
+ Reviewed src/noirpass/src/service/collection.rs. Status: SAFE -- Legitimate D-Bus interface implementation, no malicious code found.
LLM auditresponse for format.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Rust source module for Noirpass configuration serialization and atomic file writes. It performs only local filesystem operations within an application‑controlled data directory (`data_dir`). All path handling includes validation against symlink components and ensures only regular files are written or read. The `atomic_write` function uses random temporary file names and renames, which is a common safe pattern. No network requests, obfuscated code, or unexpected system modifications are present. This code is consistent with the application’s stated purpose and does not exhibit any supply‑chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Safe Rust config management code.</summary>
</security_assessment>

[9/10] Reviewing src/noirpass/systemd/noirpass.service...
+ Reviewed src/noirpass/src/config/format.rs. Status: SAFE -- Safe Rust config management code.
LLM auditresponse for noirpass.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the `noirpass` package. It defines a D-Bus activated user service implementing the Secret Service API. The service includes extensive security hardening options (NoNewPrivileges, ProtectSystem, ProtectHome, PrivateTmp, MemoryDenyWriteExecute, RestrictRealtime, RestrictNamespaces, LockPersonality, ProtectKernelTunables, ProtectKernelModules, ProtectControlGroups, RestrictAddressFamilies, SystemCallFilter, CapabilityBoundingSet), which are normal and expected for a well-packaged application. The ExecStart points to the main binary `/usr/bin/noirpass` with no arguments. The ReadWritePaths setting allows writes to `%h/.local/share`, a standard location for user data. There is no obfuscation, network requests, downloads, or command execution beyond the application's own binary. No malicious or suspicious patterns found.
</details>
<evidence></evidence>
<summary>Standard systemd service, no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/noirpass/systemd/noirpass.service. Status: SAFE -- Standard systemd service, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: noirpass-1.0.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,000
  Completion Tokens: 6,190
  Total Tokens: 47,190
  Total Cost: $0.002608
  Execution Time: 64.98 seconds

Final Status: SAFE


No issues found.


Audit Skips:

noirpass-1.0.0.tar.gz: [SKIPPED] Skipping binary file: noirpass-1.0.0.tar.gz
