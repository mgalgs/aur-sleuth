---
package: oh-my-pi
pkgver: 18.0.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 99141
completion_tokens: 10229
total_tokens: 109370
cost: 0.00584360714
execution_time: 358.41
files_reviewed: 12
files_skipped: 0
files_unauditable: 24
unpinned_sources: 0
date: 2026-08-23T19:15:51Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package build script, no malicious behavior found.
  - file: skip-native-embed-for-aur.patch
    status: safe
    summary: Patch is benign AUR packaging practice.
  - file: src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch
    status: safe
    summary: Innocuous CMake build patch for Opus library.
  - file: src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch
    status: safe
    summary: Patch improves cache isolation; no malicious code.
  - file: src/oh-my-pi/crates/pi-natives/build.rs
    status: safe
    summary: Standard build script, no suspicious behavior.
  - file: src/oh-my-pi/infra/bazel-remote/setup.sh
    status: safe
    summary: Standard infrastructure setup script, no malicious content.
  - file: src/oh-my-pi/packages/agent/src/proxy.ts
    status: safe
    summary: Normal proxy client code – no security issues.
  - file: src/oh-my-pi/packages/agent/src/agent-loop.ts
    status: safe
    summary: Legitimate agent loop implementation, no security issues found.
  - file: src/oh-my-pi/packages/ai/src/auth-storage.ts
    status: safe
    summary: Legitimate credential management module, no malicious code.
  - file: src/oh-my-pi/packages/ai/src/auth-broker/server.ts
    status: safe
    summary: Legitimate auth broker service code, no malicious behavior found.
  - file: src/oh-my-pi/packages/agent/src/compaction/openai.ts
    status: safe
    summary: Legitimate API client for OpenAI conversation compaction.
  - file: src/oh-my-pi/packages/ai/src/dialect/anthropic.ts
    status: safe
    summary: No malicious code; standard AI dialect implementation.
---

Cloning https://aur.archlinux.org/oh-my-pi.git...
Cloned oh-my-pi
Analyzing oh-my-pi AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable declarations, function definitions, and conditional modifications to dependency arrays in global scope. There is no `pkgver()` function. The top-level code does not execute any dangerous commands (e.g., `curl`, `wget`, `eval`, obfuscated strings). The `source` array includes a git clone from the official upstream GitHub repository and two patch files — standard packaging practice. The conditional block that adds `libpipewire` and `clang` to dependency arrays is benign. Since `--nobuild` and `--noprepare` prevent execution of `prepare()`, `build()`, and `package()`, the only actions performed are fetching the declared sources and printing `.SRCINFO`, which is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, skip-native-embed-for-aur.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust/bun application. The source is fetched from the project's own GitHub repository with a pinned tag. Patches are provided with valid checksums. The build process uses the upstream build system (`cargo`, `bun`) and installs files into `$pkgdir`. The `prepare()` function creates a wrapper script to work around a strict-aliasing issue in tree-sitter, which is a legitimate compiler workaround, not a malicious injection. Completion generation runs the built binary with controlled environment variables to avoid side effects. No network requests are made beyond the declared source, no obfuscated code, no exfiltration, and no backdoors are present. The only potential hygiene concern is the `SKIP` checksum on the git source, which is standard for VCS sources and not malicious.
</details>
<evidence></evidence>
<summary>Standard AUR package build script, no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing skip-native-embed-for-aur.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package build script, no malicious behavior found.
LLM auditresponse for skip-native-embed-for-aur.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch disables the embedding of native addons by unconditionally setting `reset = true`. This is a standard AUR packaging adjustment: the package ships native `.node` files as separate files alongside the binary rather than bundling them into a JavaScript file. There is no malicious behavior—no network requests, code execution, obfuscation, or data exfiltration. The change is minimal and purely functional.
</details>
<evidence></evidence>
<summary>Patch is benign AUR packaging practice.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed skip-native-embed-for-aur.patch. Status: SAFE -- Patch is benign AUR packaging practice.
Reviewed all required files.
Deciding which files to review next...
Note: 24 compiled/archived file(s) cannot be audited as text and were not reviewed (src/oh-my-pi/crates/pi-natives/data/cl100k_base.bin.zst, src/oh-my-pi/crates/pi-natives/data/ctok_v3.bin.zst, src/oh-my-pi/crates/pi-natives/data/ctok_v4_7.bin.zst and 21 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 6535 files available for selection; offering the 50 highest-priority to the model. 5503 lower-priority file(s) were not offered.
LLM response for file selection:
src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch
src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch
src/oh-my-pi/crates/pi-natives/build.rs
src/oh-my-pi/infra/bazel-remote/setup.sh
src/oh-my-pi/packages/agent/src/agent-loop.ts
src/oh-my-pi/packages/agent/src/compaction/openai.ts
src/oh-my-pi/packages/agent/src/proxy.ts
src/oh-my-pi/packages/ai/src/auth-broker/server.ts
src/oh-my-pi/packages/ai/src/auth-storage.ts
src/oh-my-pi/packages/ai/src/dialect/anthropic.ts
Decided to review 10 additional files: src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/crates/pi-natives/build.rs, src/oh-my-pi/infra/bazel-remote/setup.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/agent/src/proxy.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts, src/oh-my-pi/packages/ai/src/auth-storage.ts, src/oh-my-pi/packages/ai/src/dialect/anthropic.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch...
[0/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch...
[0/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/crates/pi-natives/build.rs...
LLM auditresponse for audiopus-sys-libdir.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard build patch for a Rust crate (`audiopus-sys`) that adjusts the CMake build configuration. It adds a CMake define (`CMAKE_INSTALL_LIBDIR=lib`) to ensure the Opus library is installed into the `lib` subdirectory under the CMake prefix. This is a routine packaging fix to match the expectations of the linking logic in the same `build.rs`. There are no network requests, obfuscation, dangerous commands, or any behavior that deviates from normal package building. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Innocuous CMake build patch for Opus library.</summary>
</security_assessment>

[0/10] Reviewing src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch, src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/crates/pi-natives/build.rs, src/oh-my-pi/infra/bazel-remote/setup.sh...
[1/10] Reviewing src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch, src/oh-my-pi/crates/pi-natives/build.rs, src/oh-my-pi/infra/bazel-remote/setup.sh...
+ Reviewed src/oh-my-pi/bazel/patches/audiopus-sys-libdir.patch. Status: SAFE -- Innocuous CMake build patch for Opus library.
LLM auditresponse for hermetic_cc_toolchain-isolated-compile-cache.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch addresses a known zig cache corruption issue (ziglang/zig#18763) by isolating compile-only invocations into private throwaway cache directories under the system tmp dir. It uses `std.crypto.random.bytes` for random directory names and sets only environment variables (`ZIG_LOCAL_CACHE_DIR`, `ZIG_GLOBAL_CACHE_DIR`). The second part of the patch opts the Bazel repository rule into Bazel's repo contents cache via `repository_ctx.repo_metadata(reproducible = True)`. Both modifications are routine optimization and reliability improvements—there is no evidence of malicious behavior such as data exfiltration, code execution from untrusted sources, obfuscation, or backdoors. The patch is consistent with standard packaging practices.
</details>
<evidence></evidence>
<summary>Patch improves cache isolation; no malicious code.</summary>
</security_assessment>

[2/10] Reviewing src/oh-my-pi/crates/pi-natives/build.rs, src/oh-my-pi/infra/bazel-remote/setup.sh...
+ Reviewed src/oh-my-pi/bazel/patches/hermetic_cc_toolchain-isolated-compile-cache.patch. Status: SAFE -- Patch improves cache isolation; no malicious code.
[2/10] Reviewing src/oh-my-pi/crates/pi-natives/build.rs, src/oh-my-pi/infra/bazel-remote/setup.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts...
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The build.rs is a standard Rust build script that generates a configuration file (`builtin_filters.toml`) by reading and concatenating `.toml` files from a hardcoded directory within the package's own source tree. It uses only standard Rust standard library functions (`env::var`, `fs::read_dir`, `fs::read_to_string`, `fs::write`, `writeln!`). There are no network requests, no obfuscation, no execution of external commands, no modification of files outside the build output directory (`OUT_DIR`), and no access to sensitive environment variables beyond the normal build script variables (`CARGO_MANIFEST_DIR`, `OUT_DIR`). This is a typical build-time file generation pattern for Rust projects and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard build script, no suspicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/oh-my-pi/crates/pi-natives/build.rs, src/oh-my-pi/infra/bazel-remote/setup.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts...
[3/10] Reviewing src/oh-my-pi/infra/bazel-remote/setup.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts...
+ Reviewed src/oh-my-pi/crates/pi-natives/build.rs. Status: SAFE -- Standard build script, no suspicious behavior.
LLM auditresponse for setup.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard infrastructure setup script for bootstrapping a bazel-remote cache in a Kubernetes cluster. It performs idempotent operations: generating self-signed TLS certificates, creating Kubernetes secrets, applying YAML manifests, and configuring network policies. All operations are guarded and re-runnable. The script only uses local tools (openssl, kubectl, jq, htpasswd) and applies manifests from the same directory. There is no evidence of malicious behavior: no data exfiltration, no code execution from external sources, no obfuscation, and no deviation from documented packaging practices. The script is well-commented and follows standard security practices (e.g., restricted file permissions, dry-run apply). The only package manager calls are to install htpasswd if missing, which is a standard system package and not a supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard infrastructure setup script, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/oh-my-pi/infra/bazel-remote/setup.sh, src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/agent/src/proxy.ts...
[4/10] Reviewing src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/agent/src/proxy.ts...
+ Reviewed src/oh-my-pi/infra/bazel-remote/setup.sh. Status: SAFE -- Standard infrastructure setup script, no malicious content.
LLM auditresponse for proxy.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This TypeScript file implements a client-side proxy stream for routing LLM API calls through a user-configured server. All network requests go to the configured `proxyUrl` (defaults to user-provided URL), use standard authentication via Bearer token, and process SSE events from the server. The code is well-structured, contains no obfuscation, no unexpected network destinations, no system modifications, and no execution of downloaded code. It is standard application functionality belonging to the upstream `oh-my-pi` project – there is no evidence of injected malicious behavior or supply-chain attack.
</details>
<evidence></evidence>
<summary>Normal proxy client code – no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/agent/src/proxy.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts...
[5/10] Reviewing src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts...
+ Reviewed src/oh-my-pi/packages/agent/src/proxy.ts. Status: SAFE -- Normal proxy client code – no security issues.
LLM auditresponse for agent-loop.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TypeScript implementation of an agent loop for the oh-my-pi AI assistant framework. It handles conversation management, tool call execution, streaming, error handling, and telemetry. No suspicious patterns were found: there are no network requests to unexpected hosts, no obfuscated code, no base64/curl/wget/eval usage, and no attempts to exfiltrate data or tamper with system files. The code performs standard AI agent orchestration tasks and uses only the package's own dependencies (@oh-my-pi/*). The truncated portions of the file (middle ~1435 lines of standard boilerplate) show no matches for suspicious patterns either. All operations serve the legitimate purpose of running an AI agent loop.
</details>
<evidence></evidence>
<summary>Legitimate agent loop implementation, no security issues found.</summary>
</security_assessment>

[5/10] Reviewing src/oh-my-pi/packages/agent/src/agent-loop.ts, src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts, src/oh-my-pi/packages/ai/src/auth-storage.ts...
[6/10] Reviewing src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts, src/oh-my-pi/packages/ai/src/auth-storage.ts...
+ Reviewed src/oh-my-pi/packages/agent/src/agent-loop.ts. Status: SAFE -- Legitimate agent loop implementation, no security issues found.
LLM auditresponse for auth-storage.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a credential management module for the oh-my-pi AI assistant. It handles loading, saving, refreshing, and usage tracking of API keys and OAuth tokens. The code uses standard TypeScript patterns, imports from internal modules, and includes normal cryptographic operations (SHA-256 hashing for bearer fingerprints). There are no suspicious network requests, obfuscated code, or dangerous commands (curl, wget, eval, base64, etc.) in the visible portions. The file appears to be a legitimate part of the application's authentication infrastructure.
</details>
<evidence></evidence>
<summary>Legitimate credential management module, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts, src/oh-my-pi/packages/ai/src/auth-storage.ts, src/oh-my-pi/packages/ai/src/dialect/anthropic.ts...
[7/10] Reviewing src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/auth-broker/server.ts, src/oh-my-pi/packages/ai/src/dialect/anthropic.ts...
+ Reviewed src/oh-my-pi/packages/ai/src/auth-storage.ts. Status: SAFE -- Legitimate credential management module, no malicious code.
LLM auditresponse for server.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements an HTTP server for a credential management service (auth broker) using Bun. It provides REST endpoints for managing OAuth tokens/API keys, credential blocks, usage reporting, and snapshot streaming. All operations are confined to local storage (SQLite) and in-memory data structures. No network requests to external/unexpected hosts, no code execution from fetched content, no obfuscated or encoded commands, and no system file manipulation outside the application's own storage. Authorization is done via bearer tokens against an allow-list. The code follows standard patterns for a service component and shows no signs of malicious intent or supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>Legitimate auth broker service code, no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing src/oh-my-pi/packages/agent/src/compaction/openai.ts, src/oh-my-pi/packages/ai/src/dialect/anthropic.ts...
+ Reviewed src/oh-my-pi/packages/ai/src/auth-broker/server.ts. Status: SAFE -- Legitimate auth broker service code, no malicious behavior found.
LLM auditresponse for openai.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the oh-my-pi AI agent framework and implements remote conversation compaction for OpenAI-compatible APIs. It constructs native Responses-API history from internal message types and sends it to OpenAI/Azure/Codex endpoints for summarization. All network requests target expected API endpoints derived from model configuration (OpenAI, Azure OpenAI, or Codex). The code is well-structured TypeScript with proper error handling, timeouts, and logging. There is no obfuscation, exfiltration, unexpected file operations, or execution of untrusted code. The complexity is justified by the need to handle multiple API shapes (OpenAI Responses, Azure, Codex, chat-completions) and preserve encrypted reasoning across compactions.</details>
<evidence></evidence>
<summary>Legitimate API client for OpenAI conversation compaction.</summary>
</security_assessment>

[9/10] Reviewing src/oh-my-pi/packages/ai/src/dialect/anthropic.ts...
+ Reviewed src/oh-my-pi/packages/agent/src/compaction/openai.ts. Status: SAFE -- Legitimate API client for OpenAI conversation compaction.
LLM auditresponse for anthropic.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements an inband scanner for Anthropic's XML‑like tool‑call and thinking tags (e.g., `&lt;function_calls&gt;`, `&lt;invoke&gt;`, `&lt;thinking&gt;`). It parses text streams, extracts tool invocations and thinking blocks, and emits typed events. The code is a straightforward, deterministic parser – it does not make any network requests, execute external commands, evaluate encoded strings, or modify system files. All imports are from local project modules (`@oh‑my‑pi/pi‑utils`, `../types`, `./coercion`, `./rendering`, `./types`), which is standard practice for a TypeScript package. There is no obfuscation, no use of `eval`, `curl`, `wget`, `base64`, or any other mechanism that could exfiltrate data or execute attacker‑controlled code. The file solely defines the dialect definition object (`definition`) exported as default, which is the normal pattern for this kind of AI package.
</details>
<evidence></evidence>
<summary>No malicious code; standard AI dialect implementation.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/oh-my-pi/packages/ai/src/dialect/anthropic.ts. Status: SAFE -- No malicious code; standard AI dialect implementation.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 99,141
  Completion Tokens: 10,229
  Total Tokens: 109,370
  Total Cost: $0.005844
  Execution Time: 358.41 seconds

Final Status: SAFE


No issues found.
