---
package: late-sh-cli
pkgver: 0.33.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 42362
completion_tokens: 9384
total_tokens: 51746
cost: 0.00550170
execution_time: 181.78
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T06:34:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD; no malicious content found.
  - file: src/late-sh/late-core/src/lib.rs
    status: safe
    summary: Benign Rust library file with no security concerns.
  - file: src/late-sh/infra/liquidsoap/fetch_mp3s.py
    status: safe
    summary: Safe script to fetch MP3 links from archive.org.
  - file: src/late-sh/.mise.toml
    status: safe
    summary: Declarative tool config, no security risk.
  - file: src/late-sh/.cargo/config.toml
    status: safe
    summary: Standard Rust linker configuration, no security issues.
  - file: src/late-sh/Cargo.toml
    status: safe
    summary: Standard Rust workspace manifest; no malicious content found.
  - file: src/late-sh/late-core/build.rs
    status: safe
    summary: Standard build script for embedding SQL migrations.
  - file: src/late-sh/infra/setup_app.sh
    status: safe
    summary: Safely configures GitHub secrets/variables for deployment.
  - file: src/late-sh/infra/setup_rke2.sh
    status: safe
    summary: Legitimate RKE2 cluster setup script, no malicious behavior.
  - file: src/late-sh/late-cli/src/main.rs
    status: safe
    summary: Legitimate Rust CLI tool; no malicious code detected.
  - file: src/late-sh/Makefile
    status: safe
    summary: Standard development Makefile; no malicious content.
---

Cloning https://aur.archlinux.org/late-sh-cli.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tob429r_...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tob429r_
Analyzing late-sh-cli AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tob429r_) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard git source from the project's own GitHub repository with a tag. No commands are executed in the top-level scope or in `pkgver()` (which is not defined). The `source` array uses `git+https` which is fetched by `makepkg` as a normal git clone. There are no obfuscated commands, no network requests to unexpected hosts, no data exfiltration, and no dangerous operations in the global scope. The `sha256sums` entry is present (though for VCS sources it is ignored, this is not a security issue). The `prepare()`, `build()`, `check()`, and `package()` functions are not executed by the two commands we are running, so they are out of scope for this gate. This PKGBUILD is consistent with standard AUR packaging practices.
</details>
<summary>Standard PKGBUILD with git source; no code executed in fetch/parse scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with git source; no code executed in fetch/parse scope.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Rust application. It clones the upstream source from the official GitHub repository at a pinned tag (`v0.33.6`), uses `cargo fetch --locked` and `cargo build --frozen` (which enforces reproducible builds from the lockfile), runs tests, and installs the binary and documentation. There is no evidence of obfuscated code, unexpected network requests, or dangerous commands. The checksum is provided and matches the source. No suspicious behavior beyond the expected packaging workflow is present.
</details>
<summary>Standard Rust PKGBUILD; no malicious content found.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD; no malicious content found.
Reviewed all required files.
Deciding which files to review next...
Note: 945 files available for selection; offering the 50 highest-priority to the model. 501 lower-priority file(s) were not offered.
LLM response for file selection:
src/late-sh/late-core/build.rs
src/late-sh/Cargo.toml
src/late-sh/Makefile
src/late-sh/infra/liquidsoap/fetch_mp3s.py
src/late-sh/infra/setup_app.sh
src/late-sh/infra/setup_rke2.sh
src/late-sh/.cargo/config.toml
src/late-sh/.mise.toml
src/late-sh/late-cli/src/main.rs
src/late-sh/late-core/src/lib.rs
Decided to review 10 additional files: src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/liquidsoap/fetch_mp3s.py, src/late-sh/infra/setup_app.sh, src/late-sh/infra/setup_rke2.sh, src/late-sh/.cargo/config.toml, src/late-sh/.mise.toml, src/late-sh/late-cli/src/main.rs, src/late-sh/late-core/src/lib.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/late-sh/late-core/build.rs...
[0/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml...
[0/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile...
[0/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/liquidsoap/fetch_mp3s.py...
[0/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/liquidsoap/fetch_mp3s.py, src/late-sh/infra/setup_rke2.sh...
[0/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/liquidsoap/fetch_mp3s.py, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh...
[0/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/liquidsoap/fetch_mp3s.py, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs...
[0/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/liquidsoap/fetch_mp3s.py, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs, src/late-sh/.cargo/config.toml...
[0/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/liquidsoap/fetch_mp3s.py, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs, src/late-sh/.cargo/config.toml, src/late-sh/.mise.toml...
[0/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/liquidsoap/fetch_mp3s.py, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs, src/late-sh/.cargo/config.toml, src/late-sh/.mise.toml, src/late-sh/late-core/src/lib.rs...
LLM auditresponse for lib.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`lib.rs`) is a standard Rust library source file. It declares public modules (`api_types`, `ascii`, `audio`, etc.) and defines a safe extension trait `MutexRecover` that gracefully recovers from a poisoned mutex instead of panicking. No network requests, obfuscated code, file system modifications, or any other suspicious activities are present. The code is entirely consistent with legitimate packaging and application logic.
</details>
<summary>
Benign Rust library file with no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/liquidsoap/fetch_mp3s.py, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs, src/late-sh/.cargo/config.toml, src/late-sh/.mise.toml...
+ Reviewed src/late-sh/late-core/src/lib.rs. Status: SAFE -- Benign Rust library file with no security concerns.
LLM auditresponse for fetch_mp3s.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script fetches metadata from archive.org (a legitimate public digital library) to locate MP3 files matching a query, then prints them. It performs only HTTP GET requests to `archive.org` APIs, constructs download URLs from the returned metadata, and outputs the results. No code execution, obfuscation, system modification, or data exfiltration occurs. The script is a simple utility to search for audio files and does not deviate from its stated purpose. There are no signs of malicious or dangerous behavior.
</details>
<summary>
Safe script to fetch MP3 links from archive.org.</summary>
</security_assessment>

[2/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs, src/late-sh/.cargo/config.toml, src/late-sh/.mise.toml...
+ Reviewed src/late-sh/infra/liquidsoap/fetch_mp3s.py. Status: SAFE -- Safe script to fetch MP3 links from archive.org.
LLM auditresponse for .mise.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.mise.toml` is a configuration file for the `mise` version manager (similar to `asdf` or `rtx`). It simply declares tools and their versions: `rust`, `mold`, and `cargo:cargo-nextest`, all set to `"latest"`. There is no executable code, no network requests, no obfuscation, and no system modifications. The content is purely declarative and typical for a developer tool configuration. No security concerns are present.
</details>
<summary>Declarative tool config, no security risk.</summary>
</security_assessment>

[3/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs, src/late-sh/.cargo/config.toml...
+ Reviewed src/late-sh/.mise.toml. Status: SAFE -- Declarative tool config, no security risk.
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.toml` is a Rust cargo configuration that sets compiler flags for the `x86_64-unknown-linux-gnu` target to use the mold linker (`-fuse-ld=mold`). This is a common optimization to speed up Rust compilation and does not perform any network requests, system modifications, or execute any code. It is a benign build configuration file with no security implications.
</details>
<summary>Standard Rust linker configuration, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Cargo.toml, src/late-sh/Makefile, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs...
+ Reviewed src/late-sh/.cargo/config.toml. Status: SAFE -- Standard Rust linker configuration, no security issues.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Cargo workspace manifest (Cargo.toml) for a Rust project. It declares workspace members and dependencies, all from reputable sources (crates.io or a local vendored path). There are no encoded commands, network requests, obfuscation, or system modifications. The only notable item is a patched dependency (`asterion-core = { path = &quot;vendor/asterion-core&quot; }`), which points to a local vendor directory. This is a normal practice for Rust projects that need to override a published crate with a local copy, and does not itself introduce malicious behavior. The file contains no executable code and does not perform any actions at audit time. It is purely declarative and follows standard packaging practices.
</details>
<summary>
Standard Rust workspace manifest; no malicious content found.</summary>
</security_assessment>

[5/10] Reviewing src/late-sh/late-core/build.rs, src/late-sh/Makefile, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs...
+ Reviewed src/late-sh/Cargo.toml. Status: SAFE -- Standard Rust workspace manifest; no malicious content found.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust build script (`build.rs`) that generates a Rust source file embedding SQL migration files from a local `migrations/` directory. It uses `include_str!` to embed file contents at compile time, a normal practice for bundling resources. There are no network requests, no execution of external commands, no obfuscation, and no system modifications outside the build output directory (`OUT_DIR`). The script only reads `.sql` files from the project’s own source tree and writes an auto-generated Rust module. No suspicious or malicious behavior is present.
</details>
<summary>Standard build script for embedding SQL migrations.</summary>
</security_assessment>

[6/10] Reviewing src/late-sh/Makefile, src/late-sh/infra/setup_rke2.sh, src/late-sh/infra/setup_app.sh, src/late-sh/late-cli/src/main.rs...
+ Reviewed src/late-sh/late-core/build.rs. Status: SAFE -- Standard build script for embedding SQL migrations.
LLM auditresponse for setup_app.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is an interactive deployment setup tool that uses the official GitHub CLI (`gh`) to set repository secrets and variables. All operations are transparent and serve the stated purpose: configuring Docker registry credentials (with standard base64 encoding), collecting user input (domain, log level, S3 credentials, AI API key), and writing them to GitHub. There are no unexpected network requests, no code obfuscation, no backdoors, and no data exfiltration. Temporary SSH key files are cleaned up. This conforms to normal packaging and deployment automation.
</details>
<summary>Safely configures GitHub secrets/variables for deployment.</summary>
</security_assessment>

[7/10] Reviewing src/late-sh/Makefile, src/late-sh/infra/setup_rke2.sh, src/late-sh/late-cli/src/main.rs...
+ Reviewed src/late-sh/infra/setup_app.sh. Status: SAFE -- Safely configures GitHub secrets/variables for deployment.
LLM auditresponse for setup_rke2.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate automation tool for deploying an RKE2 Kubernetes cluster. It performs standard operations: installing RKE2 from the official Rancher installer (`get.rke2.io`), configuring server/agent nodes via SSH, setting up a local kubeconfig, and storing cluster credentials as GitHub secrets using the `gh` CLI. All network destinations (Rancher's installer URL, GitHub API) are expected for the stated purpose. There is no obfuscated code, no base64/encoded payloads, no unexpected file operations, and no exfiltration of sensitive data. The SSH port change to 22222 is a routine system configuration adjustment. The script does not contain any supply-chain attack indicators.
</details>
<summary>Legitimate RKE2 cluster setup script, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/late-sh/Makefile, src/late-sh/late-cli/src/main.rs...
+ Reviewed src/late-sh/infra/setup_rke2.sh. Status: SAFE -- Legitimate RKE2 cluster setup script, no malicious behavior.
LLM auditresponse for main.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.rs` is part of the `late-sh-cli` package, a CLI tool for `late.sh` that provides SSH-based remote access with audio and web pairing. The code is well-structured, uses standard Rust libraries and patterns (tokio async, tracing, anyhow), and shows no signs of malicious behavior. Key observations:

- All network connections (API base URL, WebSocket, audio streams) target `config::DEFAULT_API_BASE_URL` or `LATE_API_BASE_URL` environment variable – these are expected for the application's stated function (pairing/visualizer).
- No obfuscated code, encoded strings, eval, or unusual system commands. The only command spawning is SSH (`spawn_ssh`, `session.spawn_shell`) which is the core functionality of the tool.
- The `read_webview_pair_token_from_stdin` function reads a token from stdin and validates it; this is normal for a pairing workflow.
- There are no file operations outside the package's intended scope (no exfiltration, no modification of unrelated system files).
- The use of `rustls::crypto::ring::default_provider()` is standard for TLS in Rust.
- All modules (`audio`, `ssh`, `webview`, `voice`, etc.) appear to implement legitimate application features. No supply-chain attack indicators were found.

The code is consistent with ordinary AUR packaging and the application's stated purpose.
</details>
<summary>Legitimate Rust CLI tool; no malicious code detected.</summary>
</security_assessment>

[9/10] Reviewing src/late-sh/Makefile...
+ Reviewed src/late-sh/late-cli/src/main.rs. Status: SAFE -- Legitimate Rust CLI tool; no malicious code detected.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard development configuration file for the **late** project (a BBS/SSH terminal application). It defines environment variables and targets for building, testing, and running the application inside Docker containers. All commands are conventional for a Rust/Docker project: `cargo` builds, `docker compose` orchestration, `ssh-keygen`, and shell scripting for generating a `.env` file. The random secret generation (`openssl rand` or `/dev/urandom`) is legitimate and not obfuscated. There are no external network requests injecting code, no base64/encoded payloads, and no unexpected system modifications. The hardcoded remote endpoints (S3/R2, Icecast, LiveKit, Rebels SSH) are the application's own upstream dependencies—not evidence of a supply-chain attack. The file is part of the upstream source and behaves exactly as expected for a project of this nature.
</details>
<summary>Standard development Makefile; no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/late-sh/Makefile. Status: SAFE -- Standard development Makefile; no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,362
  Completion Tokens: 9,384
  Total Tokens: 51,746
  Total Cost: $0.005502
  Execution Time: 181.78 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-late-sh-cli.txt
Final Status: SAFE


No issues found.
