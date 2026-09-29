---
package: bioma-shell
pkgver: 1.0.0beta7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12613
completion_tokens: 8816
total_tokens: 21429
cost: 0.00423430
execution_time: 182.82
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T11:20:49Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: bioma-shell.install
    status: safe
    summary: Standard install scriptlet; loads uinput module and prints messages only.
  - file: PKGBUILD
    status: safe
    summary: Clean, standard Rust PKGBUILD with pinned checksum; no malicious behavior found.
---

Materializing bioma-shell from local mirror...
Materialized bioma-shell
Analyzing bioma-shell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD, so only the top-level scope executes. That scope contains only variable/array assignments (`pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.), the standard `install=bioma-shell.install` variable, and function definitions (`_srcdir`, `prepare`, `build`, `package`). The functions are merely defined, not invoked, so their contents (cargo fetch/build, file installation) cannot run during this step.

No command substitutions, backticks, `eval`, network access, or file mutations occur at parse time. The source URL points to the package&apos;s own upstream GitHub repository, and the checksum is pinned rather than SKIPped, though that is irrelevant for this gate since no sources are downloaded. The `install=bioma-shell.install` line is a plain variable assignment, not an invocation of the `install` command. No malicious top-level code is present.
</details>
<evidence></evidence>
<summary>Only variables and function definitions; nothing malicious executes when sourced.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only variables and function definitions; nothing malicious executes when sourced.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, bioma-shell.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It contains no executable code, no network requests, no obfuscation, and no dangerous operations. It lists the package name, version, dependencies, and a source tarball from the official GitHub repository with a valid SHA256 checksum. All content is standard for an AUR package and does not exhibit any signs of malicious intent.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, bioma-shell.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for bioma-shell.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install scriptlet (`bioma-shell.install`) with `post_install` and `post_upgrade` hooks. The only actions taken are loading the `uinput` kernel module (`modprobe uinput`) and triggering udev to set up the `/dev/uinput` device node, which directly supports the application's stated dictation/paste functionality. Both commands are idempotent, non-destructive, and confined to enabling a standard kernel feature for the package's own use.

The `cat &lt;&lt;'MSG'` heredocs use a quoted delimiter, so no variable expansion or command substitution occurs — the backtick-quoted `niri validate` and all other text are printed literally as an informational message only. No network requests, downloads, encoded or obfuscated commands, file exfiltration, or modifications outside the application's scope are present. The script fetches and executes nothing; it only enables a kernel device and prints setup/restart instructions to the user.
</details>
<evidence>
</evidence>
<summary>Standard install scriptlet; loads uinput module and prints messages only.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed bioma-shell.install. Status: SAFE -- Standard install scriptlet; loads uinput module and prints messages only.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Rust/AUR packaging practice. The source tarball is fetched from the project&apos;s own GitHub repository at a pinned tag (`v1.0.0-beta.7`) with a real, non-SKIP sha256 checksum, so the downloaded content is verified at build time.

The prepare/build steps only run `cargo fetch --locked --target ...` and `cargo build --frozen --release` inside the package&apos;s own `tools/sinestesia-bands` directory. This is the normal Cargo workflow, and the dependency fetch goes to the standard crates.io registry. There is no `eval`, `base64`, `curl|bash`, `git pull`/`git fetch` + `reset --hard`, obfuscated command, or any network endpoint other than the declared upstream and the Cargo registry.

The package() function installs the shell&apos;s own assets, documentation, and two symlinks into `/usr/bin`, plus a udev rule and a modules-load.d drop-in. These last two are explicitly tied to the application&apos;s stated dictation feature (access to `/dev/uinput`) and match common packaging patterns for input-device permissions; they do not touch unrelated system files and nothing is exfiltrated. The only minor notes are that the tag is a mutable ref name rather than a commit pin and that `cargo fetch` pulls from the network at build time, but both are ordinary AUR/Rust practice and do not indicate malice.
</details>
<evidence>
</evidence>
<summary>Clean, standard Rust PKGBUILD with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard Rust PKGBUILD with pinned checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,613
  Completion Tokens: 8,816
  Total Tokens: 21,429
  Total Cost: $0.004234
  Execution Time: 182.82 seconds

Final Status: SAFE


No issues found.
