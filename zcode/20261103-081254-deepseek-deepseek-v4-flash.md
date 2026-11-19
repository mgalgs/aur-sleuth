---
package: zcode
pkgver: 3.17.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14062
completion_tokens: 4539
total_tokens: 18601
cost: 0.002105740
execution_time: 37.3
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T08:12:53Z
file_verdicts:
  - file: zcode.desktop
    status: safe
    summary: Standard desktop launcher file; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard pinned AUR metadata from official upstream source; no malicious code present.
  - file: PKGBUILD
    status: safe
    summary: Official binary repackaging with pinned checksums and standard packaging steps; no malicious behavior found.
  - file: zcode.install
    status: safe
    summary: "Post-install hook patches the package's own bundled JS for compatibility; no malicious behavior."
---

Materializing zcode from local mirror...
Materialized zcode
Analyzing zcode AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD only contains standard PKGBUILD variable definitions (pkgname, pkgver, arch, source, depends, sha256sums, etc.) and the definition of the `package()` function. There are no dangerous top-level command substitutions, backtick executions, or invocations of `curl`, `wget`, `eval`, or any other commands at the global scope. The `package()` function is not executed during `makepkg --printsrcinfo`, so its contents are out of scope for this gate and will be reviewed in the full audit. No malicious code runs when the file is sourced for metadata parsing.
</details>
<evidence></evidence>
<summary>Top-level parsing is safe; no dangerous commands execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level parsing is safe; no dangerous commands execute.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, zcode.desktop...
LLM auditresponse for zcode.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop `.desktop` launcher for the zcode application. It contains only declarative metadata: a display name, comment, an `Exec` line pointing at `/usr/bin/zcode` with the standard `%U` URL placeholder, `TryExec`, an icon name, category, an `x-scheme-handler/zcode` MimeType association, and startup-notification/WM-class hints.

There are no `Exec=` shell constructs (no `sh -c`, no pipes, no `eval`, no base64), no network access, no file operations outside normal application launch, and no obfuscation. Nothing here deviates from ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>Standard desktop launcher file; no malicious behavior found.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed zcode.desktop. Status: SAFE -- Standard desktop launcher file; no malicious behavior found.
[1/4] Reviewing .SRCINFO, PKGBUILD, zcode.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It declares the package version, dependencies, an install script, and prebuilt Debian package sources hosted under the project’s own `cdn-zcode.z.ai` domain. Both architecture-specific Debian sources have pinned SHA-256 checksums, and the local `.desktop` source also has a pinned checksum. There are no shell commands, network fetches beyond the declared upstream sources, obfuscated strings, encoded data, or system modifications. The referenced `zcode.install` script is not included in this file and cannot be assessed here, but the `.SRCINFO` itself contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard pinned AUR metadata from official upstream source; no malicious code present.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, zcode.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard pinned AUR metadata from official upstream source; no malicious code present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD repackages an official ZCode Linux .deb downloaded from the project’s own CDN (`cdn-zcode.z.ai`), with pinned SHA-256 checksums for both architectures. It uses standard Arch packaging operations: extracting the .deb with `bsdtar`, copying the application into `$pkgdir/opt`, installing the desktop file and licenses, and creating a launcher symlink. The temporary extraction directory is cleaned up with a normal `trap`.

No obfuscated code, encoded command execution, unexpected downloads, credential access, or modifications outside the package installation paths are present. The `chmod 0755` on `chrome-sandbox` does not grant setuid privileges and is less permissive than setting it setuid; this is a sandbox/configuration consideration, not malicious behavior.
</details>
<evidence>
</evidence>
<summary>Official binary repackaging with pinned checksums and standard packaging steps; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing zcode.install...
+ Reviewed PKGBUILD. Status: SAFE -- Official binary repackaging with pinned checksums and standard packaging steps; no malicious behavior found.
LLM auditresponse for zcode.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an AUR `.install` script that post-install/post-upgrade modifies a single file belonging to the package itself: `/opt/ZCode/resources/glm/zcode.cjs`. The Perl one-liner searches for a specific minified JavaScript pattern (a Responses API parser that calls `.text()` and a schema parser) and rewrites it to additionally default `part.annotations` to `[]` for `output_text` parts before re-serializing. This is a compatibility patch for the application's own bundled code, not an injection of attacker-controlled code.

There is no network access, no download, no `eval`/base64, no reading of user data, and no writes outside the package's own installed files. The regex/Perl is readable and its purpose is evidenced by the marker string and grep verification step. Patching an installed upstream bundle in a post-install hook is unconventional (hygiene/reproducibility concern, since the patch lives outside the PKGBUILD source tree and could break on upstream changes), but it is not malicious behavior: it neither exfiltrates data nor executes anything from an untrusted source. A packaging purist might prefer applying this patch in the PKGBUILD; that is a best-practice note only.

</details>
<evidence>
</evidence>
<summary>Post-install hook patches the package's own bundled JS for compatibility; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed zcode.install. Status: SAFE -- Post-install hook patches the package's own bundled JS for compatibility; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,062
  Completion Tokens: 4,539
  Total Tokens: 18,601
  Total Cost: $0.002106
  Execution Time: 37.30 seconds

Final Status: SAFE


No issues found.
