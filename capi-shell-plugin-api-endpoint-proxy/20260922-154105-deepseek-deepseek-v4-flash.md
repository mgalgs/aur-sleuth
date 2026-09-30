---
package: capi-shell-plugin-api-endpoint-proxy
pkgbase: capi-shell
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 47526
completion_tokens: 22594
total_tokens: 70120
cost: 0.004542986
execution_time: 434.72
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:41:05Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: capi-shell
    status: safe
    summary: Benign CAPI helper; no malicious behavior, exfiltration, or hidden code.
  - file: capi-shell-plugin-api-endpoint-proxy-provider-capo.sh
    status: safe
    summary: Standard Kubernetes helper function, no security issues.
  - file: capi-shell-plugin-api-endpoint-proxy-tool-sshuttle.sh
    status: safe
    summary: Safe script; prints a sshuttle command only.
  - file: capi-shell-plugin-api-endpoint-proxy.sh
    status: safe
    summary: "Safe plugin: sources local scripts, invokes provider/tool functions, starts proxy via systemd-run. No malicious behavior."
  - file: capi-shell-plugin-capo.sh
    status: safe
    summary: Legitimate shell plugin for Kubernetes cluster credentials.
  - file: test-capi-shell-plugin-api-endpoint-proxy.bats
    status: safe
    summary: Standard Bats test file with no malicious behavior.
  - file: test-capi-shell-plugin-capo.bats
    status: safe
    summary: Test file only; contains local stubs and assertions, no malicious behavior.
  - file: test-capi-shell.bats
    status: safe
    summary: Test file with no malicious code.
  - file: multi-capi-shell
    status: safe
    summary: Legitimate shell helper, no malicious behavior.
  - file: test-multi-capi-shell.bats
    status: safe
    summary: Legitimate BATS test file; no malicious behavior found.
  - file: test-stub-bin.bash
    status: safe
    summary: Standard Bats test-stub helper; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard packaging script; only installs local plugin files with pinned checksums."
---

capi-shell-plugin-api-endpoint-proxy is built from capi-shell
Materializing capi-shell-plugin-api-endpoint-proxy from local mirror...
Materialized capi-shell-plugin-api-endpoint-proxy
Analyzing capi-shell-plugin-api-endpoint-proxy AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. There are no command substitutions, backticks, or other executable statements that would run when the file is sourced. The `source` array references local filenames, and the checksums are provided as explicit hashes. No malicious or unexpected code is present in the global scope. Running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; only variable definitions and function stubs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; only variable definitions and function stubs.
Reviewing the 13 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/13] Reviewing .SRCINFO...
[0/13] Reviewing .SRCINFO, PKGBUILD...
[0/13] Reviewing .SRCINFO, PKGBUILD, capi-shell...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a .SRCINFO metadata file for an AUR package. It contains only package declarations, source filenames, checksums, dependencies, and descriptions. No executable code, obfuscated strings, suspicious network requests, or unexpected file operations are present. The checksums are provided (not SKIP), and all sources reference local shell scripts that appear to be part of the package's own upstream scope. There is no indication of supply-chain compromise in this metadata file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, PKGBUILD, capi-shell, capi-shell-plugin-api-endpoint-proxy-provider-capo.sh...
[1/13] Reviewing PKGBUILD, capi-shell, capi-shell-plugin-api-endpoint-proxy-provider-capo.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for capi-shell:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a Kubernetes/CAPI helper script. It reads a workload cluster kubeconfig secret from the management cluster via `kubectl`, writes it to a temporary file under `$XDG_RUNTIME_DIR`, optionally transforms it with `yq` from user configuration, and loads installed plugin hooks from `/usr/share/capi-shell/plugins/`. It then builds an environment and executes the requested shell or command.

The script performs no external network requests beyond `kubectl` calls to the user-configured management cluster, downloads no remote code, and contains no obfuscated or encoded payloads. Use of `base64 -d` is normal decoding of a Kubernetes secret. File operations are limited to its own temporary kubeconfig, the user config file, and the declared system plugin directory; the temp file is removed in the cleanup trap. Sourcing `*.sh` files from the plugin directory is the package's stated plugin mechanism, not injected malicious code. No evidence of exfiltration, backdoors, credential theft, or tampering with unrelated system files was found.
</details>
<evidence></evidence>
<summary>Benign CAPI helper; no malicious behavior, exfiltration, or hidden code.</summary>
</security_assessment>

[2/13] Reviewing PKGBUILD, capi-shell-plugin-api-endpoint-proxy-provider-capo.sh...
+ Reviewed capi-shell. Status: SAFE -- Benign CAPI helper; no malicious behavior, exfiltration, or hidden code.
[2/13] Reviewing PKGBUILD, capi-shell-plugin-api-endpoint-proxy-provider-capo.sh, capi-shell-plugin-api-endpoint-proxy-tool-sshuttle.sh...
LLM auditresponse for capi-shell-plugin-api-endpoint-proxy-provider-capo.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines a Bash function that queries a Kubernetes cluster for OpenStack-specific control plane endpoint information. It uses `kubectl` and `yq` within the function, both of which are standard tools for the stated purpose. There are no external network requests beyond what `kubectl` inherently makes to the configured Kubernetes API server (part of the expected application functionality), no obfuscated or encoded commands, no dangerous operations (eval, curl, wget), and no modifications to the system or exfiltration of data. The code is straightforward and consistent with its purpose of providing an endpoint for an API proxy in a cluster-api context.
</details>
<evidence></evidence>
<summary>Standard Kubernetes helper function, no security issues.</summary>
</security_assessment>

[2/13] Reviewing PKGBUILD, capi-shell-plugin-api-endpoint-proxy-provider-capo.sh, capi-shell-plugin-api-endpoint-proxy-tool-sshuttle.sh, capi-shell-plugin-api-endpoint-proxy.sh...
[3/13] Reviewing PKGBUILD, capi-shell-plugin-api-endpoint-proxy-tool-sshuttle.sh, capi-shell-plugin-api-endpoint-proxy.sh...
+ Reviewed capi-shell-plugin-api-endpoint-proxy-provider-capo.sh. Status: SAFE -- Standard Kubernetes helper function, no security issues.
LLM auditresponse for capi-shell-plugin-api-endpoint-proxy-tool-sshuttle.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines a simple shell function `api_endpoint_proxy_tool_sshuttle` that constructs and prints a command string using `sshuttle`. It does not execute any commands, download content, modify files, or interact with the network. The function only uses variable assignment, a conditional check with `[[ -z ... ]]`, and `printf` to output the command. There is no obfuscation, dangerous functions (like eval, base64, curl, wget), or deviation from standard helper script behavior. The script appears to be a legitimate part of the `capi-shell-plugin-api-endpoint-proxy` package, intended to assist with setting up SSH-based proxies via sshuttle.
</details>
<evidence></evidence>
<summary>Safe script; prints a sshuttle command only.</summary>
</security_assessment>

[3/13] Reviewing PKGBUILD, capi-shell-plugin-api-endpoint-proxy-tool-sshuttle.sh, capi-shell-plugin-api-endpoint-proxy.sh, capi-shell-plugin-capo.sh...
[4/13] Reviewing PKGBUILD, capi-shell-plugin-api-endpoint-proxy.sh, capi-shell-plugin-capo.sh...
+ Reviewed capi-shell-plugin-api-endpoint-proxy-tool-sshuttle.sh. Status: SAFE -- Safe script; prints a sshuttle command only.
LLM auditresponse for capi-shell-plugin-api-endpoint-proxy.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plugin pre-exec hook for the capi-shell framework. It loads provider and tool scripts from the plugin's own installation directory, calls provider functions to determine an endpoint, selects a proxy tool, and launches it via `systemd-run --user` as a transient unit. All executed code comes from the package's own scripts (sourced from `$base/providers/` and `$base/tools/`) and the configured tool name is used only as a function name, not passed to a shell for evaluation. There are no network requests, no external downloads, no obfuscated or encoded payloads, and no manipulation of files outside the plugin's scope. The use of `systemd-run` to start a user service is a normal mechanism for such a tool. No evidence of malicious or supply-chain behavior was found.
</details>
<evidence></evidence>
<summary>Safe plugin: sources local scripts, invokes provider/tool functions, starts proxy via systemd-run. No malicious behavior.</summary>
</security_assessment>

[4/13] Reviewing PKGBUILD, capi-shell-plugin-api-endpoint-proxy.sh, capi-shell-plugin-capo.sh, multi-capi-shell...
[5/13] Reviewing PKGBUILD, capi-shell-plugin-capo.sh, multi-capi-shell...
+ Reviewed capi-shell-plugin-api-endpoint-proxy.sh. Status: SAFE -- Safe plugin: sources local scripts, invokes provider/tool functions, starts proxy via systemd-run. No malicious behavior.
LLM auditresponse for capi-shell-plugin-capo.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a shell plugin that retrieves OpenStack credentials from a Kubernetes secret using `kubectl` and `yq`, then outputs them as null-separated environment variables. This is standard behavior for a Cluster API (CAPI) integration tool. There are no network requests to unexpected hosts, no obfuscated commands, no file exfiltration, and no dangerous operations like `eval` or `base64` decoding beyond what is needed for the intended functionality. All operations are consistent with the package's stated purpose.
</details>
<evidence></evidence>
<summary>Legitimate shell plugin for Kubernetes cluster credentials.</summary>
</security_assessment>

[5/13] Reviewing PKGBUILD, capi-shell-plugin-capo.sh, multi-capi-shell, test-capi-shell-plugin-api-endpoint-proxy.bats...
[6/13] Reviewing PKGBUILD, multi-capi-shell, test-capi-shell-plugin-api-endpoint-proxy.bats...
+ Reviewed capi-shell-plugin-capo.sh. Status: SAFE -- Legitimate shell plugin for Kubernetes cluster credentials.
LLM auditresponse for test-capi-shell-plugin-api-endpoint-proxy.bats:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Bats test suite for the `capi-shell-plugin-api-endpoint-proxy` package. It contains only test logic that sources the package&#x27;s own shell scripts and exercises their functions using stubbed commands (kubectl, systemd-run, systemctl). There are no network requests, no obfuscated code, no dangerous operations like `eval`, `curl`, or `wget`, and no attempts to exfiltrate data or modify system files. The stubs are inline simulations of expected command behavior; they do not perform real actions. The file adheres to standard testing practices for AUR packages and presents no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard Bats test file with no malicious behavior.</summary>
</security_assessment>

[6/13] Reviewing PKGBUILD, multi-capi-shell, test-capi-shell-plugin-api-endpoint-proxy.bats, test-capi-shell-plugin-capo.bats...
[7/13] Reviewing PKGBUILD, multi-capi-shell, test-capi-shell-plugin-capo.bats...
+ Reviewed test-capi-shell-plugin-api-endpoint-proxy.bats. Status: SAFE -- Standard Bats test file with no malicious behavior.
LLM auditresponse for test-capi-shell-plugin-capo.bats:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Bats test suite for the `capi-shell-plugin-capo.sh` plugin. It exercises the plugin by stubbing `kubectl` with local shell functions and heredocs, then verifying environment variable output and failure handling. The `base64 -w0` usage is only for generating the expected `clouds.yaml` secret payload inside a local test stub, not for decoding or executing remote content. There are no network requests, no downloads, no obfuscated commands, no file system modifications beyond temporary test output files, and no code execution from untrusted sources.
</details>
<evidence>
</evidence>
<summary>
Test file only; contains local stubs and assertions, no malicious behavior.
</summary>
</security_assessment>

[7/13] Reviewing PKGBUILD, multi-capi-shell, test-capi-shell-plugin-capo.bats, test-capi-shell.bats...
[8/13] Reviewing PKGBUILD, multi-capi-shell, test-capi-shell.bats...
+ Reviewed test-capi-shell-plugin-capo.bats. Status: SAFE -- Test file only; contains local stubs and assertions, no malicious behavior.
LLM auditresponse for test-capi-shell.bats:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a BATS test suite for the <code>capi-shell</code> script. It tests command-line usage, configuration resolution, secret fetching, plugin hooks, and cleanup behavior. All operations are confined to temporary test directories (<code>$BATS_TEST_TMPDIR</code>) and use locally stubbed versions of <code>kubectl</code>. There are no network requests to external hosts, no obfuscated code, no <code>eval</code> or <code>curl</code> calls, and no modifications to system files. The file follows standard testing practices for a Kubernetes shell wrapper and contains no indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Test file with no malicious code.</summary>
</security_assessment>

[8/13] Reviewing PKGBUILD, multi-capi-shell, test-capi-shell.bats, test-multi-capi-shell.bats...
[9/13] Reviewing PKGBUILD, multi-capi-shell, test-multi-capi-shell.bats...
+ Reviewed test-capi-shell.bats. Status: SAFE -- Test file with no malicious code.
LLM auditresponse for multi-capi-shell:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `multi-capi-shell` is a legitimate helper for the `capi-shell` tool. It reads configuration from the user's `~/.config/capi-shell/config.yaml` and environment variables, then uses `kubectl` and `yq` to list Kubernetes clusters from management clusters, and `fzf` for interactive selection. It then executes `capi-shell` with the appropriate kubeconfig and context.  
There is no evidence of malicious activity: no network requests to unexpected hosts, no code downloads, no base64/hex-encoded payloads, no `eval` of untrusted input, no file operations outside the application's scope, and no backdoors. The script uses `set -eu -o pipefail` and proper quoting for robustness. While user-supplied custom column expressions from the config are passed to `yq`, that is an intended application feature and not an injected supply-chain attack.  
All behaviour is consistent with standard packaging and the stated purpose of the application.
</details>
<evidence></evidence>
<summary>Legitimate shell helper, no malicious behavior.</summary>
</security_assessment>

[9/13] Reviewing PKGBUILD, multi-capi-shell, test-multi-capi-shell.bats, test-stub-bin.bash...
[10/13] Reviewing PKGBUILD, test-multi-capi-shell.bats, test-stub-bin.bash...
+ Reviewed multi-capi-shell. Status: SAFE -- Legitimate shell helper, no malicious behavior.
LLM auditresponse for test-multi-capi-shell.bats:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a BATS (Bash Automated Testing System) test file for the `multi-capi-shell` helper script that wraps `capi-shell` for multi-cluster management. The file contains only test logic: a `setup()`/`teardown()` pair, a feature test for the `--help` flag, and two tests for the `--direct` behavior.

The stub for `capi-shell` is a test double that only echoes its arguments and the `KUBECONFIG`/`KUBECONFIG_CONTEXT` environment variables. The `/tmp/prod-kubeconfig.yaml` and `prod-ctx` values are test fixtures intended to verify the script passes through the correct values, not an attempt to read or exfiltrate real credentials. The HTML entities (`&quot;`, `&apos;`, `&gt;`, `&lt;`) are just transport/rendering encodings of ordinary quotes and shell redirection/heredoc syntax.

No network requests, code downloads, obfuscated content, or execution of untrusted code appear anywhere in the file. It is consistent with standard, legitimate test authorship.
</details>
<evidence>
</evidence>
<summary>
Legitimate BATS test file; no malicious behavior found.</summary>
</security_assessment>

[11/13] Reviewing PKGBUILD, test-stub-bin.bash...
+ Reviewed test-multi-capi-shell.bats. Status: SAFE -- Legitimate BATS test file; no malicious behavior found.
LLM auditresponse for test-stub-bin.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Bats (Bash Automated Testing System) helper that creates a temporary directory, prepends it to PATH, and lets tests install stub executables. The `stub()` function reads a heredoc from stdin, writes it to the temp dir as a named executable, and chmods it. This is the canonical pattern used by many test suites to fake external commands like `kubectl` or `sshuttle`.

No malicious behavior is present: no network requests, no exfiltration, no obfuscated or encoded commands, no eval, and no writes outside the `mktemp -d` directory in normal use. The `rm -rf` in teardown only removes the freshly created temp directory, which is safe. The `&quot;` and `&gt;` sequences in the provided content are HTML-entity rendering artifacts from the prompt; in the actual file these would be plain quotes and `&gt;`/`<` characters, and they represent ordinary shell syntax. This is benign test infrastructure, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard Bats test-stub helper; no malicious or suspicious behavior found.</summary>
</security_assessment>

[12/13] Reviewing PKGBUILD...
+ Reviewed test-stub-bin.bash. Status: SAFE -- Standard Bats test-stub helper; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
 <security_assessment>
  <decision>SAFE</decision>
  <details>
    This PKGBUILD is a standard split-package definition. The package functions only use `install -D -m` commands to copy the package-local shell plugins and helper scripts into `/usr/bin` and `/usr/share/capi-shell/...`. There are no network requests, no downloads or execution of remote content, no use of `eval`, base64, encoded commands, or other obfuscation, and no file operations outside `$pkgdir`.

    The `source` array uses local filenames with pinned sha512 checksums, and the actual referenced script contents are not shown in this file. Those scripts should be reviewed separately if a deeper supply-chain audit is needed. However, nothing in this PKGBUILD indicates malicious behavior; it is consistent with ordinary Arch packaging practice for script-only split packages.
  </details>
  <evidence></evidence>
  <summary>Safe: standard packaging script; only installs local plugin files with pinned checksums.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard packaging script; only installs local plugin files with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,526
  Completion Tokens: 22,594
  Total Tokens: 70,120
  Total Cost: $0.004543
  Execution Time: 434.72 seconds

Final Status: SAFE


No issues found.
