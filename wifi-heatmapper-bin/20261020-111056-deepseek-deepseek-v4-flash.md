---
package: wifi-heatmapper-bin
pkgver: 0.6.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8591
completion_tokens: 3066
total_tokens: 11657
cost: 0.001339793
execution_time: 73.9
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T11:10:55Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD with pinned checksum; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard upstream AppImage with pinned checksum; no malicious behavior found.
---

Materializing wifi-heatmapper-bin from local mirror...
Materialized wifi-heatmapper-bin
Analyzing wifi-heatmapper-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level of this PKGBUILD. The top-level scope contains only standard variable assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, dependencies, `source_x86_64`, `sha256sums_x86_64`, and `options`. There are no top-level command substitutions, no external downloads, no eval or encoded payloads, and no top-level file-modifying operations.

The `package()` function contains file installation and AppImage extraction logic, but it is not executed by `makepkg --printsrcinfo`; it will be reviewed separately in the full PKGBUILD audit. Within the narrow scope of this gate, sourcing the PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD has only standard variables; no code executes during printsrcinfo. SAFE.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD has only standard variables; no code executes during printsrcinfo. SAFE.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD wraps the official upstream AppImage release for wifi-heatmapper v0.6.0. The source URL points to the project's own GitHub releases page and includes a pinned SHA-256 checksum, which is good supply-chain hygiene. The package() function installs the AppImage into /opt, creates a symlink in /usr/bin, and uses `--appimage-extract` to pull the desktop file and icons from the AppImage into the package directory. These are ordinary packaging operations for a prebuilt AppImage.

There is no evidence of malicious behavior: no obfuscated code, no unexpected network requests, no download-and-execute patterns, no file operations outside $pkgdir, and no tampering with unrelated system files. The sed command only adjusts the `StartupWMClass` value in the app's own desktop file, which is a benign fix to match observed window icon behavior. The use of `--appimage-extract` is the standard way to inspect an AppImage and is not a supply-chain red flag on its own.
</details>
<evidence>
</evidence>
<summary>
Standard AppImage PKGBUILD with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD with pinned checksum; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is pure package metadata — it contains no executable code, no install scripts, and no post-install hooks. The single source is the project's own GitHub release AppImage (WiFi.Heatmapper_0.6.0_amd64.AppImage), downloaded over HTTPS from the package's declared upstream repository, and pinned with a concrete SHA-256 checksum (e43c5311baa827daa09af323bbce1f22fecbdbfa05ff39b8e3cc935c2561fbd5) so the fetched binary is verified at build time.

The dependencies are consistent with the application's stated purpose of measuring Wi-Fi signal strength and drawing heat maps: networkmanager and iw are needed to query Wi-Fi/network state, webkit2gtk-4.1 provides the GUI toolkit, and fuse2 mounts the AppImage. The optdepends on iperf3 matches the documented throughput-measurement feature. As with any prebuilt (-bin) package, the binary itself cannot be source-audited from this metadata alone, but the pinned checksum and official upstream source are standard AUR practice. Nothing here attempts to exfiltrate data, download code from unexpected hosts, or modify the system outside normal packaging.
</details>
<evidence></evidence>
<summary>
Standard upstream AppImage with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard upstream AppImage with pinned checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,591
  Completion Tokens: 3,066
  Total Tokens: 11,657
  Total Cost: $0.001340
  Execution Time: 73.90 seconds

Final Status: SAFE


No issues found.
