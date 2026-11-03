---
package: ttf-akt-hinted
pkgver: 1.100
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 55299
completion_tokens: 6101
total_tokens: 61400
cost: 0.006142591
execution_time: 25.41
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T00:01:54Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore whitelisting packaging files; no executable or suspicious content.
  - file: FEATURES.md
    status: safe
    summary: Documentation-only font feature description; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only SRCINFO with pinned HTTPS sources and checksums; no malicious behavior found.
  - file: README.md
    status: safe
    summary: Documentation-only README; no malicious or suspicious commands found.
  - file: make_features.py
    status: safe
    summary: Font GSUB utility; no network, eval, obfuscation, or exfiltration — SAFE.
  - file: make_statics.py
    status: safe
    summary: No malicious behavior; standard fontTools static instance generator.
  - file: measure.py
    status: safe
    summary: Font measurement utility only; no network, writes, or obfuscation.
  - file: PKGBUILD
    status: safe
    summary: Legitimate font PKGBUILD; expected upstreams, checksummed sources, no malicious behavior.
  - file: set_gasp.py
    status: safe
    summary: Benign font gasp-table rewriting; no malicious indicators.
---

Materializing ttf-akt-hinted from local mirror...
Materialized ttf-akt-hinted
Analyzing ttf-akt-hinted AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only defines variables, arrays, and functions at the global scope. There are no top-level command substitutions, network calls, downloads, or assignments that execute commands while the file is sourced. The `source` array references the package's own upstream artifacts (google/fonts and nerd-fonts releases), which is normal packaging practice and is not fetched during this step.

The interactive prompting, option validation, font patching, hinting, and installation logic all live inside `prepare()`, `build()`, `package()`, and helper functions, none of which are executed by `makepkg --printsrcinfo`. No obfuscated code, encoded payloads, or suspicious global operations are present in the sourced top-level scope. Checksums are not relevant to this narrow gate because no sources are downloaded or verified during this command.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD only defines variables and functions; no top-level malicious commands execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD only defines variables and functions; no top-level malicious commands execute.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, FEATURES.md...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Git ignore configuration for the AUR packaging repository. It ignores everything by default (`*`) and then whitelists the packaging-relevant files: `PKGBUILD`, `README.md`, `FEATURES.md`, `.SRCINFO`, and a handful of Python helper scripts (`make_statics.py`, `set_gasp.py`, `measure.py`, `make_features.py`).

There are no commands, no network access, no file operations beyond Git's own ignore semantics, and no obfuscation. This is a common and benign pattern used in AUR repos to keep build artifacts and unrelated local files out of the Git history. Nothing here deviates from standard packaging practice or indicates injected malicious content.
</details>
<evidence>
</evidence>
<summary>Benign .gitignore whitelisting packaging files; no executable or suspicious content.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, FEATURES.md, PKGBUILD...
[1/9] Reviewing .SRCINFO, FEATURES.md, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore whitelisting packaging files; no executable or suspicious content.
LLM auditresponse for FEATURES.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is Markdown documentation for a font package. It describes OpenType tables, glyph coverage, font features, and usage examples. There is no executable code, no network access, no downloads, no encoded or obfuscated content, and no file or system modification logic.

References such as `FEATURE_DEFAULTS` and `make_features.py` describe upstream font tooling and configuration, not commands executed by this packaging file. Nothing here deviates from ordinary AUR documentation.
</details>
<evidence>
</evidence>
<summary>
Documentation-only font feature description; no malicious behavior found.
</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, FEATURES.md, PKGBUILD, README.md...
[2/9] Reviewing .SRCINFO, PKGBUILD, README.md...
+ Reviewed FEATURES.md. Status: SAFE -- Documentation-only font feature description; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided `.SRCINFO` is package metadata only and contains no executable code. All declared sources are fetched over HTTPS from expected upstream locations: Google Fonts at a pinned commit for `Akt[wght].ttf` and `OFL.txt`, and the Nerd Fonts `FontPatcher.zip` release asset. The local build helper scripts are listed by filename and have corresponding SHA-256 checksums, as do the remote assets.

No suspicious network destinations, obfuscated content, encoded commands, credential access, or system-modifying behavior is present in this file. The use of `noextract` for `font-patcher-3.5.1.zip` is a normal packaging choice for a build-time asset. Nothing here deviates from ordinary AUR metadata practices.
</details>
<evidence>
</evidence>
<summary>Metadata-only SRCINFO with pinned HTTPS sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, README.md...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only SRCINFO with pinned HTTPS sources and checksums; no malicious behavior found.
[3/9] Reviewing PKGBUILD, README.md, make_features.py...
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a documentation-only README (in Greek) for a font packaging project. It describes build variants, hinting options, measured rendering results, and general install/verification instructions.

The commands it mentions are ordinary packaging/user workflow: `makepkg -si`, a `sudo ln -s` of the package's own fontconfig file into `/etc/fonts/conf.d/`, `fc-cache -f`, and a local `python measure.py` measurement helper. There is no networking, no encoded/obfuscated payload, no `eval`, and no download-and-execute behavior. Nothing deviates from standard AUR packaging documentation, and no malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Documentation-only README; no malicious or suspicious commands found.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, make_features.py...
+ Reviewed README.md. Status: SAFE -- Documentation-only README; no malicious or suspicious commands found.
[4/9] Reviewing PKGBUILD, make_features.py, make_statics.py...
LLM auditresponse for make_features.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a self-contained font-processing utility that uses `fontTools` to copy GSUB feature lookups (e.g. `cv11`, `cv05`) into a carrier feature (`calt`) and optionally rename family records. Its imports are limited to `argparse`, `os`, `re`, `sys`, and `fontTools.ttLib`; there are no network calls (`curl`/`wget`/sockets), no `subprocess`, no `eval`/`exec`, no base64/hex decoding, and no obfuscation.

File operations are confined to reading the input fonts given on the command line and writing the modified (or copied) font into `--outdir` or back to the same path — exactly what a font-editing tool is expected to do. There is no access to unrelated system paths, credentials, SSH/GPG material, environment variables, or home-directory data, and nothing is transmitted off-host. Error handling and argument parsing are ordinary CLI practice; the `--skip`/`--allow-risky` logic only gates which OpenType features get baked in.

No evidence of injected malicious code, data exfiltration, backdoors, or downloading/executing untrusted content. The script is consistent with its stated packaging purpose and is judged SAFE.
</details>
<evidence>
</evidence>
<summary>Font GSUB utility; no network, eval, obfuscation, or exfiltration — SAFE.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, make_statics.py...
+ Reviewed make_features.py. Status: SAFE -- Font GSUB utility; no network, eval, obfuscation, or exfiltration — SAFE.
[5/9] Reviewing PKGBUILD, make_statics.py, measure.py...
LLM auditresponse for make_statics.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard font-processing helper. It uses `argparse` to read a weight and output directory, loads the supplied variable font with `fontTools.ttLib.TTFont`, instantiates a static font at the requested weight, rewrites font naming/metadata fields, and saves the result under the requested output directory.

There are no network requests, downloads, obfuscated/encoded payloads, `eval`-style execution, privilege escalation, or modifications outside the generated font file. The only file writes are the expected `.ttf` output via `font.save(out)`, which is consistent with the package's stated purpose of generating static font instances for Nerd Fonts patching and hinting.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; standard fontTools static instance generator.
</summary>
</security_assessment>

[6/9] Reviewing PKGBUILD, measure.py...
+ Reviewed make_statics.py. Status: SAFE -- No malicious behavior; standard fontTools static instance generator.
[6/9] Reviewing PKGBUILD, measure.py, set_gasp.py...
LLM auditresponse for measure.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Python measurement utility for FreeType font rendering. It reads command-line arguments and the optional `MEASURE_TEXT` environment variable, loads a font through `freetype`, computes rendering metrics with `numpy`, and prints results. This is consistent with the package's stated purpose of comparing hinted font rendering.

There is no network access, no download or execution of external code, no obfuscation, no use of `eval`/`base64`/`curl`/`wget`, and no writes to system files. The only environment read is `MEASURE_TEXT`, used solely as sample text for measurements. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Font measurement utility only; no network, writes, or obfuscation.
</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, set_gasp.py...
+ Reviewed measure.py. Status: SAFE -- Font measurement utility only; no network, writes, or obfuscation.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a substantial but ordinary font-packaging PKGBUILD. It downloads only from the package's own expected upstreams: the Akt variable font and its license from `raw.githubusercontent.com/google/fonts` pinned to a specific commit (`_gfcommit`), and the Nerd Fonts `FontPatcher.zip` from the official `ryanoasis/nerd-fonts` release for `_nfver=3.5.1`. All nine `source` entries — including the four helper scripts shipped in the AUR repo itself (`make_statics.py`, `make_features.py`, `set_gasp.py`, `measure.py`) and the docs — carry concrete `sha256sums` (no SKIP). Build steps run standard tooling (`ttfautohint`, `fontTools`, `fontforge`, `parallel`, `bsdtar`, `install`) and write only into `$srcdir`/`$pkgdir`, which is normal.

The interactive option handling, `.build_opts` round-trip, and fontconfig generation do not rise to malicious behavior. `_resolve_options` only assigns variables whose names appear in the fixed `_opt_keys` list (`printf -v "$_k" ...`), so a crafted `_k` cannot set arbitrary variables; validation regexes cover all toggles/tags/weights. The user `fonts.conf` parser only reads tags and writes nothing outside `$srcdir`. `package()` generates a `conf.avail` fontconfig snippet that is deliberately *not* enabled and only sets `hinting`/`autohint`/`hintstyle` for the families the package itself installed (XML-escaping the family name), which is within scope. Minor observations that are not threats: the `parallel` invocation passes a literal `'>/dev/null'` redirection as its last argument (benign shell redirect for quiet output), ttfautohint uses `--ignore-restrictions`, and the package supports many build-time knobs — none of these fetch or execute anything from an unexpected source.

No exfiltration, no curl|bash, no base64/eval obfuscation, no writes to unrelated system files, and no untrusted downloads beyond the declared, checksummed sources.
</details>
<evidence>
</evidence>
<summary>Legitimate font PKGBUILD; expected upstreams, checksummed sources, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing set_gasp.py...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font PKGBUILD; expected upstreams, checksummed sources, no malicious behavior.
LLM auditresponse for set_gasp.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a small font-processing utility that uses fontTools to rewrite or create the OpenType `gasp` table of TrueType fonts. Its operations are limited to the font paths passed on the command line, and the in-place modification of those font files is consistent with the stated purpose.

There are no network requests, downloads, encoded or obfuscated commands, eval/exec usage, credential access, filesystem traversal, or modifications outside the supplied font files. No malicious or supply-chain-related behavior is present.
</details>
<evidence>
</evidence>
<summary>
Benign font gasp-table rewriting; no malicious indicators.
</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed set_gasp.py. Status: SAFE -- Benign font gasp-table rewriting; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,299
  Completion Tokens: 6,101
  Total Tokens: 61,400
  Total Cost: $0.006143
  Execution Time: 25.41 seconds

Final Status: SAFE


No issues found.
