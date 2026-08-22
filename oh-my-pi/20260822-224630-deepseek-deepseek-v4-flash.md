---
package: oh-my-pi
pkgver: 18.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 85140
completion_tokens: 13328
total_tokens: 98468
cost: 0.00640143896
execution_time: 346.49
files_reviewed: 12
files_skipped: 0
files_unauditable: 24
unpinned_sources: 0
date: 2026-08-22T22:46:29Z
file_verdicts:
  - file: skip-native-embed-for-aur.patch
    status: safe
    summary: Patch adapts build for AUR packaging, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard source build with pinned upstream tag.
  - file: src/oh-my-pi/crates/pi-natives/build.rs
    status: safe
    summary: Standard build script; no malicious behavior detected.
  - file: src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch
    status: safe
    summary: Standard CMake libdir patch, no malicious content.
  - file: src/oh-my-pi/infra/bazel-remote/setup.sh
    status: safe
    summary: Legitimate Kubernetes infrastructure setup script; no malicious behavior.
  - file: src/oh-my-pi/infra/reload-runner.sh
    status: safe
    summary: Standard CI deployment script, no malicious behavior detected.
  - file: src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch
    status: safe
    summary: Legitimate patch for cache isolation; no malicious behavior.
  - file: src/oh-my-pi/infra/tune-kata-runtime.sh
    status: safe
    summary: Legitimate CI tuning script, no malicious indicators.
  - file: src/oh-my-pi/packages/agent/src/agent-loop.ts
    status: safe
    summary: Standard agent loop implementation, no malicious patterns detected.
  - file: src/oh-my-pi/packages/agent/src/compaction/openai.ts
    status: safe
    summary: Legitimate OpenAI API compaction module, no malicious code detected.
  - file: src/oh-my-pi/packages/ai/src/auth-broker/client.ts
    status: safe
    summary: Standard HTTP client library, no malicious behavior found.
  - file: src/oh-my-pi/packages/ai/src/auth-broker/server.ts
    status: safe
    summary: Legitimate auth broker server code; no supply chain attack indicators.
---

Cloning https://aur.archlinux.org/oh-my-pi.git...
Cloned oh-my-pi
Analyzing oh-my-pi AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code in this PKGBUILD only performs benign variable declarations and a conditional that appends to dependency arrays. No dangerous commands (eval, curl, wget, base64 decode, or file exfiltration) appear at top-level or in a `pkgver()` function (which is not defined). The `source` array fetches the package's own git repository from GitHub and two patch files from the AUR source — both standard for an AUR PKGBUILD. The sha256sums are `SKIP` for the VCS source (expected) and explicit for the patches. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only clone the upstream repo and download the patches; no code inside `prepare()`, `build()`, or `package()` executes during these commands. None of the top-level operations constitute a supply-chain attack.
</details>
<summary>No malicious code executed top-level or in pkgver(); source fetching is standard.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed top-level or in pkgver(); source fetching is standard.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, skip-native-embed-for-aur.patch...
LLM auditresponse for skip-native-embed-for-aur.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple patch that changes a boolean flag in an upstream TypeScript build script. The patch forces `reset` to always be `true` and adds a comment explaining that AUR ships native addons as loose `.node` files next to the compiled binary. There is no evidence of malicious behavior: no network requests, no obfuscated code, no dangerous system commands, no data exfiltration, and no backdoors. The patch is a standard packaging adaptation to skip the native embedding step because the AUR package handles native addons differently. This is a legitimate and expected modification for distribution packaging.
</details>
<summary>Patch adapts build for AUR packaging, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed skip-native-embed-for-aur.patch. Status: SAFE -- Patch adapts build for AUR packaging, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It clones the project's own upstream git repository at a pinned tag (`v18.0.0`), applies two checksummed patches, and builds using the upstream project's normal `cargo` and `bun` tooling. The `SKIP` checksum for the git source is normal for VCS-style sources and is not suspicious by itself.

The `cc-tree-sitter` wrapper script is transparent and benign: it detects the system C compiler and adds `-fno-strict-aliasing` for tree-sitter crates to work around a known aliasing bug. There is no obfuscated code, no `eval`, no `curl|bash`, no unexpected network destinations, no exfiltration of local data, and no modification of files outside the package's build and install scope. Running the built binary with isolated `HOME` and `XDG_DATA_HOME` to generate shell completions is a routine packaging step.
</details>
<summary>
No malicious behavior; standard source build with pinned upstream tag.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard source build with pinned upstream tag.
Reviewed all required files.
Deciding which files to review next...
Note: 24 compiled/archived file(s) cannot be audited as text and were not reviewed (src/oh-my-pi/crates/pi-natives/data/cl100k_base.bin.zst, src/oh-my-pi/crates/pi-natives/data/ctok_v3.bin.zst, src/oh-my-pi/crates/pi-natives/data/ctok_v4_7.bin.zst and 21 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 6515 files available for selection; offering the 50 highest-priority to the model. 5484 lower-priority file(s) were not offered.
LLM response for file selection:
src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch
src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch
src/oh-my-pi/crates/pi-natives/build.rs
src/oh-my-pi/infra/bazel-remote/setup.sh
src/oh-my-pi/infra/reload-runner.sh
src/oh-my-pi/infra/tune-kata-runtime.sh
src/oh-my-pi/packages/agent/src/agent-loop.ts
src/oh-my-pi/packages/agent/src/compaction/openai.ts
src/oh-my-pi/packages/ai/src/auth-broker/client.ts
src/oh-my-pi/packages/ai/src/auth-broker/server.ts
Decided to review 10 additional files: src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/crates/pi-natives/build.rs, src/oh-my-pi/infra/bazel-remote/setup.sh, src/oh-my-pi/infra/reload-runner.sh, src/oh-my-pi/infra/tune-kata-runtime.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/client.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch...
[0/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/crates/pi-natives/build.rs...
[0/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/crates/pi-natives/build.rs, src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch...
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This `build.rs` file is a standard Rust build script that uses `napi_build::setup()` and then concatenates `.toml` files from a local directory (`src/shell/minimizer/defs`) into a single output file (`builtin_filters.toml`) placed in the build output directory (`OUT_DIR`).  

All file operations are confined to the package's own source tree and the designated build output directory. There are no network requests, no execution of external commands, no obfuscated or encoded strings, and no attempt to access or exfiltrate sensitive data. The script is straightforward and aligns with normal build-time code generation practices.  

No evidence of malicious or dangerous behavior was found.
</details>
<summary>
Standard build script; no malicious behavior detected.</summary>
</security_assessment>

[0/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/crates/pi-natives/build.rs, src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/infra/bazel-remote/setup.sh...
[1/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/infra/bazel-remote/setup.sh...
+ Reviewed src/oh-my-pi/crates/pi-natives/build.rs. Status: SAFE -- Standard build script; no malicious behavior detected.
LLM auditresponse for audiopus-sys-libdir.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file for a Rust crate (audiopus-sys) that modifies the CMake build configuration. The only change is adding `CMAKE_INSTALL_LIBDIR` set to `"lib"` to ensure the Opus library archive is installed under a consistent `lib` prefix. This is standard cross-platform packaging practice, especially relevant for systems where CMake might default to `lib64`. There is no evidence of malicious behavior: no network requests, no obfuscated code, no dangerous command execution, no data exfiltration. The patch is benign and serves a legitimate purpose.
</details>
<summary>Standard CMake libdir patch, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/infra/bazel-remote/setup.sh, src/oh-my-pi/infra/reload-runner.sh...
[2/10] Reviewing src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/infra/bazel-remote/setup.sh, src/oh-my-pi/infra/reload-runner.sh...
+ Reviewed src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch. Status: SAFE -- Standard CMake libdir patch, no malicious content.
LLM auditresponse for setup.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a legitimate infrastructure bootstrap for a `bazel-remote` cache on a Kubernetes cluster. It generates TLS certificates, creates Kubernetes secrets, applies YAML manifests, and patches network policies. All operations are standard for Kubernetes cluster management. There are no external downloads, no obfuscated code, no exfiltration, and no unexpected system modifications beyond the stated purpose of setting up a cluster-internal cache. The script installs `htpasswd` via the system package manager if missing, which is a routine dependency installation. The script uses `kubectl`, `openssl`, `jq`, and `firewall-cmd` in expected ways. No malicious behavior is present.
</details>
<summary>Legitimate Kubernetes infrastructure setup script; no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/infra/bazel-remote/setup.sh, src/oh-my-pi/infra/reload-runner.sh, src/oh-my-pi/infra/tune-kata-runtime.sh...
[3/10] Reviewing src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/infra/reload-runner.sh, src/oh-my-pi/infra/tune-kata-runtime.sh...
+ Reviewed src/oh-my-pi/infra/bazel-remote/setup.sh. Status: SAFE -- Legitimate Kubernetes infrastructure setup script; no malicious behavior.
LLM auditresponse for reload-runner.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a deployment helper for building and rolling out a custom CI runner image onto a remote host. It is well-documented and performs standard operations: copying a Dockerfile via SCP, downloading pinned versions of `nerdctl` and `buildkit` from official GitHub releases, building the image with BuildKit or Docker, importing it into k3s containerd, and updating a Helm‑based ARC runner scale set.  

All network destinations (`github.com/containerd/nerdctl`, `github.com/moby/buildkit`, `ghcr.io/actions/actions-runner-controller-charts`) are the official upstream sources for the tools and chart used. There is no obfuscation, no encoded payloads, no unexpected data exfiltration, and no execution of attacker‑controlled code. The script does not modify files outside the scope of the CI deployment (e.g. it only touches the runner image, the ARC Helm values file, and the Kubernetes cluster).  

The only hygiene concern is the lack of checksum verification on the downloaded binaries, but this is a best‑practice issue, not malicious behavior. The file shows no evidence of a supply‑chain attack or injected malicious code.
</details>
<summary>Standard CI deployment script, no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/infra/tune-kata-runtime.sh...
+ Reviewed src/oh-my-pi/infra/reload-runner.sh. Status: SAFE -- Standard CI deployment script, no malicious behavior detected.
[4/10] Reviewing src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/infra/tune-kata-runtime.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts...
LLM auditresponse for hermetic_cc_toolchain-isolated-compile-cache.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch is a standard maintenance update for a Bazel toolchain using Zig as a C compiler. It addresses a known concurrency bug (ziglang/zig#18763) by giving each compile-only Zig process a private, throwaway cache directory under `/tmp` (or `$TMPDIR`), preventing cache corruption under parallel loads. It also enables Bazel's repository metadata caching for deterministic fetches.  

The code contains no obfuscation, no unexpected network requests (e.g., curl, wget), no exfiltration of local data, and no execution of external scripts. All operations are confined to the package's own build environment and are consistent with its stated purpose of improving reliability and reproducibility.
</details>
<summary>Legitimate patch for cache isolation; no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/infra/tune-kata-runtime.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts...
[5/10] Reviewing src/oh-my-pi/infra/tune-kata-runtime.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts...
+ Reviewed src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch. Status: SAFE -- Legitimate patch for cache isolation; no malicious behavior.
LLM auditresponse for tune-kata-runtime.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a CI helper that tunes the Kata runtime configuration on a remote host via SSH. It modifies Kata's QEMU TOML settings (default vCPUs, memory, virtiofsd parameters, kernel parameters) to adjust resource limits, then runs a smoke test by creating a Kubernetes pod and verifying file descriptor limits inside the guest and virtiofsd. All operations are transparent and consistent with the stated purpose: tuning a Kata runtime for CI runner pods. There are no obfuscated commands, unexpected network requests, data exfiltration, or backdoors. The script uses standard tools (`ssh`, `kubectl`, `python3`, `pgrep`) and writes only to the Kata configuration file after creating a backup. No malicious behavior is present.
</details>
<summary>Legitimate CI tuning script, no malicious indicators.</summary>
</security_assessment>

[5/10] Reviewing src/oh-my-pi/infra/tune-kata-runtime.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/client.ts...
[6/10] Reviewing src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/client.ts...
+ Reviewed src/oh-my-pi/infra/tune-kata-runtime.sh. Status: SAFE -- Legitimate CI tuning script, no malicious indicators.
LLM auditresponse for agent-loop.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `agent-loop.ts` is a standard TypeScript implementation of an AI agent loop. It imports from `@oh-my-pi/pi-ai`, `@oh-my-pi/pi-utils`, and `@oh-my-pi/pi-wire` — all internal package dependencies. The code handles streaming assistant responses, tool calls, telemetry, and error recovery. There are no suspicious patterns: no `curl`, `wget`, `eval`, `base64`, `exec`, or other dangerous commands. No network requests to unexpected hosts, no obfuscated code, no attempts to exfiltrate data or modify system files. The logic is consistent with its stated purpose of managing an agent conversation loop.
</details>
<summary>Standard agent loop implementation, no malicious patterns detected.</summary>
</security_assessment>

[6/10] Reviewing src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/client.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts...
[7/10] Reviewing src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/client.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts...
+ Reviewed src/oh-my-pi/packages/agent/src/agent-loop.ts. Status: SAFE -- Standard agent loop implementation, no malicious patterns detected.
LLM auditresponse for openai.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `openai.ts` is a typical module for an AI chat application that handles remote compaction of conversation history via OpenAI's API. It performs standard operations such as building request payloads, making HTTP POST requests to OpenAI or user-configured endpoints, and processing responses. The code imports from internal packages (`@oh-my-pi/pi-ai`, `@oh-my-pi/pi-catalog`, `@oh-my-pi/pi-utils`) and uses environment variables for configuration (e.g., `AZURE_OPENAI_BASE_URL`). There is no evidence of obfuscation, hidden data exfiltration, downloading and executing code from untrusted sources, or any other genuinely malicious behavior. All network requests are directed to the package's own upstream API endpoints or user-configured servers, which is expected for the application's stated purpose of conversation summarization. The file follows standard TypeScript practices and does not contain any supply-chain attack indicators.
</details>
<summary>Legitimate OpenAI API compaction module, no malicious code detected.</summary>
</security_assessment>

[8/10] Reviewing src/oh-my-pi/packages/ai/src/auth-broker/client.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts...
+ Reviewed src/oh-my-pi/packages/agent/src/compaction/openai.ts. Status: SAFE -- Legitimate OpenAI API compaction module, no malicious code detected.
LLM auditresponse for client.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `client.ts` is a standard HTTP client implementation for an auth-broker service. It uses the global `fetch` API (or a provided override), handles authentication via bearer tokens, and implements common patterns like timeouts, retries, SSE streaming, and JSON schema validation. All network destinations are controlled by the caller via the `url` option — there are no hardcoded or unexpected hosts. No obfuscation, encoded commands, system file operations, or data exfiltration is present. The code is consistent with legitimate TypeScript client libraries and does not exhibit any supply-chain attack indicators.
</details>
<summary>
Standard HTTP client library, no malicious behavior found.
</summary>
</security_assessment>

[9/10] Reviewing src/oh-my-pi/packages/ai/src/auth-broker/server.ts...
+ Reviewed src/oh-my-pi/packages/ai/src/auth-broker/client.ts. Status: SAFE -- Standard HTTP client library, no malicious behavior found.
LLM auditresponse for server.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `server.ts` implements an HTTP auth broker server for the oh-my-pi package. It exposes a REST API and SSE stream for managing credential snapshots, refreshes, blocks, and usage reporting. All network operations (fetching usage reports, refreshing credentials) are delegated to the abstract `AuthStorage` interface, which is provided by the caller and represents the application's own functionality. There is no evidence of injected malicious code: no obfuscated strings, no base64/hidden commands, no `eval`, no unexpected `curl`/`wget` calls, and no exfiltration of data to unknown hosts. The bearer token authentication, standard HTTP patterns, and use of Bun's built-in server are consistent with legitimate application design. The code is well-documented and follows typical TypeScript server practices.
</details>
<summary>
Legitimate auth broker server code; no supply chain attack indicators.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/oh-my-pi/packages/ai/src/auth-broker/server.ts. Status: SAFE -- Legitimate auth broker server code; no supply chain attack indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 85,140
  Completion Tokens: 13,328
  Total Tokens: 98,468
  Total Cost: $0.006401
  Execution Time: 346.49 seconds

Final Status: SAFE


No issues found.
