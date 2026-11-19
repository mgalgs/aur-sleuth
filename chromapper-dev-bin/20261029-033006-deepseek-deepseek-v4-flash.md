---
package: chromapper-dev-bin
pkgver: 0.14.996
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16514
completion_tokens: 20697
total_tokens: 37211
cost: 0.005269628
execution_time: 348.89
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T03:30:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable code; unusual source domain noted.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious or obfuscated behavior found.
  - file: apply-patch.py
    status: safe
    summary: No injected malice; vulnerable tar extraction noted but not supply-chain attack.
---

Materializing chromapper-dev-bin from local mirror...
Materialized chromapper-dev-bin
Analyzing chromapper-dev-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. In this PKGBUILD, the top-level scope consists solely of variable assignments (`_stable`, `_build`, `pkgname`, `pkgver`, etc.) and function definitions (`build()`, `package()`). There is no top-level command substitution, no invocation of `curl`, `wget`, `eval`, `base64`, or similar, and no code that would download, execute, or exfiltrate data during sourcing.

The `source` array contains URLs and a `SKIP` checksum, but `makepkg --printsrcinfo` does not download or verify sources, so those are outside the scope of this gate. The `build()` and `package()` functions are not executed during `--printsrcinfo`; any concerns there belong to the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is safe; no code executes during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; no code executes during --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, apply-patch.py...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata only and does not execute any commands. All source URLs point to a third-party domain (cm.topc.at) rather than the official GitHub repository, which is a trust concern but not inherently malicious. The `apply-patch.py` source has a `SKIP` checksum, meaning its integrity is not verified at build time — this is a packaging hygiene issue, not evidence of a supply-chain attack. No obfuscated code, network exfiltration, or backdoor logic is present in this file.
</details>
<evidence></evidence>
<summary>Metadata file, no executable code; unusual source domain noted.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, apply-patch.py...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable code; unusual source domain noted.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary repackaging of ChroMapper from the project's download infrastructure. The remote tarball, patch, and icon have pinned sha256 checksums and are fetched over HTTPS. The build step creates a `.desktop` file and runs `python3 apply-patch.py`, which is consistent with the declared `python3` and `xdelta3` dependencies and the `noextract`ed patch file. The package step copies the bundled application into `/opt` and installs desktop, icon, and launcher files.

The only notable point is that `apply-patch.py` has a `SKIP` checksum and is executed during the build. However, this is a local AUR-repo helper script used for the package's own patching workflow; a `SKIP` checksum alone is a trust/hygiene issue, not evidence of malice. There are no suspicious network calls, obfuscated commands, credential access, unexpected file operations, or system modifications outside normal packaging behavior.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD; no malicious or obfuscated behavior found.</summary>
</security_assessment>

[2/3] Reviewing apply-patch.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious or obfuscated behavior found.
LLM auditresponse for apply-patch.py:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The script applies local `.patch` tar archives by building destination paths directly from archive member names (`target = os.path.join(dest, name)`) and then using `tar.extract(info, ...)` without any path sanitization or safe extraction filter. This is a zip-slip style vulnerability: a malicious or tampered patch archive could contain entries such as `../../.bashrc` or an absolute path, causing the script to overwrite files outside the intended working directory. Since this script is run during packaging/patching, that could allow tampering with unrelated user or system files at build/install time.

There is no obfuscation, network exfiltration, or hidden download/execute behavior. The unsafe tar extraction is the genuine dangerous behavior that justifies marking the file UNSAFE.
</details>
<evidence>
            with tempfile.TemporaryDirectory() as patch_dir:
                patch_file = os.path.join(patch_dir, info.name)
                tar.extract(info, patch_dir)
                apply_xdelta3(target, patch_file)
        else:
            old_name = target + ".bak"
            using_old = os.path.exists(target)
            if using_old:
                os.rename(target, old_name)
            tar.extract(info, target_dir)
            if not os.path.exists(target):
                if using_old:
</evidence>
<summary>
Unsafe tar extraction permits path traversal arbitrary file writes during patching.
</summary>
</security_assessment>

Second look for apply-patch.py (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The previous UNSAFE verdict does not survive the supplied calibration rules. `apply-patch.py` is a patch-application helper: it reads a `.patch` tar archive and extracts or xdelta-applies entries into the current working directory. There is no network exfiltration, no hidden download-and-execute, no obfuscation, and no hardcoded path traversal — only a genuine but input-dependent tar-extraction hygiene issue. A maliciously crafted patch archive could exploit unvalidated member names to write outside the destination, but that is a vulnerability in a utility, not evidence of malicious code injected by the AUR maintainer or upstream. Under the rule that hygiene/imperfect code should remain SAFE unless genuinely malicious behavior is shown, this file should be marked SAFE.

The path traversal risk is worth noting in a code review, but it does not meet the threshold for an UNSAFE supply-chain finding.
</details>
<evidence></evidence>
<summary>No injected malice; vulnerable tar extraction noted but not supply-chain attack.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed apply-patch.py. Status: SAFE -- No injected malice; vulnerable tar extraction noted but not supply-chain attack.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,514
  Completion Tokens: 20,697
  Total Tokens: 37,211
  Total Cost: $0.005270
  Execution Time: 348.89 seconds

Final Status: SAFE


No issues found.
