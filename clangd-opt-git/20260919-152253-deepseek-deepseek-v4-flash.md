---
package: clangd-opt-git
pkgver: 24.r9691.gc0c563526ba9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 91745
completion_tokens: 23290
total_tokens: 115035
cost: 0.00584838100
execution_time: 301.65
files_reviewed: 16
files_skipped: 0
maintainer_files: 16
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T15:22:53Z
file_verdicts:
  - file: hover-bit-fields-mask.patch
    status: safe
    summary: Standard upstream patch for clangd hover bit-field mask display.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no threats found.
  - file: hover-hex-formats.patch
    status: safe
    summary: Legitimate upstream patch for clangd hex formatting.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with optional user patches, no malicious activity.
  - file: hover-no-defs.patch
    status: safe
    summary: Legitimate patch, no malicious content.
  - file: hover-resolve-forward-params.patch
    status: safe
    summary: Legitimate LLVM clangd patch, no security issues.
  - file: implement-abstract-class.patch
    status: safe
    summary: Patch adds legitimate clangd refactoring feature; no malicious code.
  - file: hover-layout-everyhere.patch
    status: safe
    summary: Benign one-line clangd patch adjusting hover layout conditions; no malicious behavior detected.
  - file: inlay-hints-paddings.patch
    status: safe
    summary: Benign clangd patch adding field padding inlay hints; no malicious behavior.
  - file: hover-virt-offset.patch
    status: safe
    summary: Benign Clang AST patch adding virtual method offset hover info.
  - file: lsp-preprocessor-folding.patch
    status: safe
    summary: Benign clangd patch adding preprocessor folding ranges; no malicious behavior found.
  - file: lsp-remove-files-from-cdb.patch
    status: safe
    summary: "Benign feature patch: empty LSP compile command removes file from in-memory CDB."
  - file: postfix-completion-trunk.patch
    status: safe
    summary: Legitimate feature patch for clangd completion.
  - file: inlay-hints-hide-deduced-types-ignore-evident.patch
    status: safe
    summary: Patch only refines clangd inlay-hint display; no malicious or suspicious behavior found.
  - file: refactor-extract-function.patch
    status: safe
    summary: Patch adds clangd extraction tests; no malicious behavior present.
  - file: lsp-codelens.patch
    status: safe
    summary: Legitimate clangd CodeLens feature patch; no evidence of malicious behavior.
---

Materializing clangd-opt-git from local mirror...
Materialized clangd-opt-git
Analyzing clangd-opt-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No dangerous code executes at global/top-level scope when the PKGBUILD is sourced. All assignments (including environment variable defaults with `: ${...}`) and function definitions are static; there are no command substitutions or external commands run during parsing. The `pkgver()`, `prepare()`, `build()`, and `package()` bodies are not evaluated until invoked, so their content is out of scope for this `makepkg --printsrcinfo` gate.
</details>
<evidence></evidence>
<summary>No top-level code executes; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes; sourcing is safe.
Reviewing the 16 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/16] Reviewing .SRCINFO...
[0/16] Reviewing .SRCINFO, PKGBUILD...
[0/16] Reviewing .SRCINFO, PKGBUILD, hover-bit-fields-mask.patch...
LLM auditresponse for hover-bit-fields-mask.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds functionality to clangd's hover feature to display bit field masks. It computes a bit mask for a bit field and converts it to a hexadecimal string using `llvm::utohexstr`. The operations are standard C++ and LLVM functions with no network access, code execution, obfuscation, or system modification. The patch is a straightforward upstream enhancement for the clangd tool and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard upstream patch for clangd hover bit-field mask display.</summary>
</security_assessment>

[1/16] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed hover-bit-fields-mask.patch. Status: SAFE -- Standard upstream patch for clangd hover bit-field mask display.
[1/16] Reviewing .SRCINFO, PKGBUILD, hover-hex-formats.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file used by AUR helpers to build the package. It declares sources from the official LLVM GitHub repository and includes several local patch files with fixed SHA-256 checksums. The git source uses `#branch=main` and has `sha256sums = SKIP`, which is standard for VCS packages and not a security concern. No commands are executed, no network connections are initiated beyond fetching the declared upstream source, and no obfuscated or suspicious code is present. The file is a normal, benign AUR metadata file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no threats found.</summary>
</security_assessment>

[1/16] Reviewing .SRCINFO, PKGBUILD, hover-hex-formats.patch, hover-layout-everyhere.patch...
[2/16] Reviewing PKGBUILD, hover-hex-formats.patch, hover-layout-everyhere.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no threats found.
LLM auditresponse for hover-hex-formats.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a standard unified diff patch intended to modify a C++ source file in the clangd project (part of clang-tools-extra). The change adds an `if` block that conditionally formats a size value in both decimal and hexadecimal when the value is large and the original unit is bits. This is a legitimate feature enhancement for hover information, commonly seen in development tooling. There is no evidence of obfuscation, network requests, file system manipulation, or any behavior deviating from normal software development practices. The patch does not introduce any malicious code; it is purely a functional improvement to the upstream project.
</details>
<evidence>
</evidence>
<summary>
Legitimate upstream patch for clangd hex formatting.</summary>
</security_assessment>

[2/16] Reviewing PKGBUILD, hover-hex-formats.patch, hover-layout-everyhere.patch, hover-no-defs.patch...
[3/16] Reviewing PKGBUILD, hover-layout-everyhere.patch, hover-no-defs.patch...
+ Reviewed hover-hex-formats.patch. Status: SAFE -- Legitimate upstream patch for clangd hex formatting.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD builds `clangd` from the official LLVM Git repository (trunk) with bundled, checksummed patches. The source and patch files are fetched from expected locations (GitHub/LLVM and the AUR source array). No obfuscated code, suspicious network requests, data exfiltration, or execution of untrusted remote content is present. The package optionally applies user‑provided patches from `~/.config/clangd/*.patch` when `CLANGD_USER_PATCHES=y` (the default). This feature is explicitly documented and controlled by an environment variable, allowing users to supply their own patches. While applying arbitrary local patches carries inherent user‑side risk, it is a deliberate design choice of the package, not an injected attack vector. All other packaging operations (cmake, ninja, install) follow standard AUR practices.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with optional user patches, no malicious activity.</summary>
</security_assessment>

[3/16] Reviewing PKGBUILD, hover-layout-everyhere.patch, hover-no-defs.patch, hover-resolve-forward-params.patch...
[4/16] Reviewing hover-layout-everyhere.patch, hover-no-defs.patch, hover-resolve-forward-params.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with optional user patches, no malicious activity.
LLM auditresponse for hover-no-defs.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard diff/patch file modifying clangd&#x27;s Hover.cpp. It removes a single line that sets `HI.Definition = printDefinition(D, PP, TB);` from the `getHoverContents` function. There is no obfuscation, no network or file operations, no execution of arbitrary code, and no deviation from normal packaging or patch practices. The change appears to be a legitimate upstream modification (likely to suppress definition output in hover). No security issues are present.
</details>
<evidence></evidence>
<summary>Legitimate patch, no malicious content.</summary>
</security_assessment>

[5/16] Reviewing hover-layout-everyhere.patch, hover-resolve-forward-params.patch...
+ Reviewed hover-no-defs.patch. Status: SAFE -- Legitimate patch, no malicious content.
[5/16] Reviewing hover-layout-everyhere.patch, hover-resolve-forward-params.patch, hover-virt-offset.patch...
LLM auditresponse for hover-resolve-forward-params.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file for the clangd tool (part of LLVM/clang-tools-extra). The patch modifies `Hover.cpp` to use `resolveForwardingParameters(FD)` instead of `FD-&gt;parameters()`, and adds a corresponding unit test. There is no obfuscation, no network access, no execution of external code, and no file system manipulation outside normal packaging. The content is purely a source code diff for an upstream LLVM feature improvement.
</details>
<evidence>
</evidence>
<summary>
Legitimate LLVM clangd patch, no security issues.
</summary>
</security_assessment>

[5/16] Reviewing hover-layout-everyhere.patch, hover-resolve-forward-params.patch, hover-virt-offset.patch, implement-abstract-class.patch...
[6/16] Reviewing hover-layout-everyhere.patch, hover-virt-offset.patch, implement-abstract-class.patch...
+ Reviewed hover-resolve-forward-params.patch. Status: SAFE -- Legitimate LLVM clangd patch, no security issues.
LLM auditresponse for implement-abstract-class.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that adds a new clangd refactoring feature to implement pure virtual methods. It contains standard C++ code using LLVM/Clang APIs, with no obfuscation, network requests, or system modifications. The patch introduces new source files and updates CMakeLists.txt to include them, which is normal for adding functionality. There are no signs of malicious intent, supply-chain attack, or unexpected behavior. The code is entirely within the scope of the LLVM project's clangd tool.
</details>
<evidence></evidence>
<summary>Patch adds legitimate clangd refactoring feature; no malicious code.</summary>
</security_assessment>

[6/16] Reviewing hover-layout-everyhere.patch, hover-virt-offset.patch, implement-abstract-class.patch, inlay-hints-hide-deduced-types-ignore-evident.patch...
[7/16] Reviewing hover-layout-everyhere.patch, hover-virt-offset.patch, inlay-hints-hide-deduced-types-ignore-evident.patch...
+ Reviewed implement-abstract-class.patch. Status: SAFE -- Patch adds legitimate clangd refactoring feature; no malicious code.
LLM auditresponse for hover-layout-everyhere.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small source patch to LLVM/clangd's Hover.cpp. It modifies a single condition so that layout information is added to hover output not only when hovering directly on a field/class declaration, but also when the hovered declaration is not a RecordDecl. This matches the package's apparent purpose (a "hover layout everywhere" feature) and contains no network requests, obfuscated code, file operations, or execution of external content. The XML entities (&lt;, &gt;, &amp;, &quot;) are just the standard escaped representation of the C++ code and are not obfuscation.

There is no evidence of injected malicious behavior, data exfiltration, backdoors, or anything outside the scope of a normal upstream code patch. The change is purely a functional adjustment to when clangd displays type layout information in hover cards.
</details>
<evidence>
</evidence>
<summary>
Benign one-line clangd patch adjusting hover layout conditions; no malicious behavior detected.
</summary>
</security_assessment>

[7/16] Reviewing hover-layout-everyhere.patch, hover-virt-offset.patch, inlay-hints-hide-deduced-types-ignore-evident.patch, inlay-hints-paddings.patch...
[8/16] Reviewing hover-virt-offset.patch, inlay-hints-hide-deduced-types-ignore-evident.patch, inlay-hints-paddings.patch...
+ Reviewed hover-layout-everyhere.patch. Status: SAFE -- Benign one-line clangd patch adjusting hover layout conditions; no malicious behavior detected.
LLM auditresponse for inlay-hints-paddings.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a source patch for the `clangd` inlay hints feature, adding a `VisitFieldDecl` callback that computes and displays padding information for struct/class fields. The logic uses standard Clang AST APIs (`getASTRecordLayout`, `getFieldOffset`, `getTypeSizeInCharsIfKnown`) and inserts textual inlay hints into the editor via the existing `addInlayHint` mechanism. This matches the stated purpose of the package and is ordinary upstream-style development code.

No suspicious behavior was found: there are no network requests, no downloads, no encoded or obfuscated commands, no file system modifications beyond the patch target, and no execution of external code. The patch only modifies `clangd/InlayHints.cpp` and introduces compiler logic for a development tool. It is not malicious.
</details>
<evidence></evidence>
<summary>Benign clangd patch adding field padding inlay hints; no malicious behavior.</summary>
</security_assessment>

[8/16] Reviewing hover-virt-offset.patch, inlay-hints-hide-deduced-types-ignore-evident.patch, inlay-hints-paddings.patch, lsp-codelens.patch...
[9/16] Reviewing hover-virt-offset.patch, inlay-hints-hide-deduced-types-ignore-evident.patch, lsp-codelens.patch...
+ Reviewed inlay-hints-paddings.patch. Status: SAFE -- Benign clangd patch adding field padding inlay hints; no malicious behavior.
LLM auditresponse for hover-virt-offset.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies clangd's Hover.cpp to compute and display virtual method table offsets in hover information. The added code is pure in-memory analysis of the Clang AST (CXXMethodDecl, CXXRecordDecl, target ABI data) and does not perform network I/O, file writes, process execution, or any system modification. It contains no obfuscation, encoded payloads, or unexpected external interactions.

The change is consistent with the stated purpose of the clangd-opt-git package: enhancing clangd hover output. The added recursion and static lambdas add code complexity and are not upstream-reviewed, but that is a code-quality concern, not evidence of a supply-chain attack. Nothing in the patch exfiltrates data, downloads executable content, or tampers with unrelated files.
</details>
<evidence>
</evidence>
<summary>
Benign Clang AST patch adding virtual method offset hover info.</summary>
</security_assessment>

[10/16] Reviewing inlay-hints-hide-deduced-types-ignore-evident.patch, lsp-codelens.patch...
+ Reviewed hover-virt-offset.patch. Status: SAFE -- Benign Clang AST patch adding virtual method offset hover info.
[10/16] Reviewing inlay-hints-hide-deduced-types-ignore-evident.patch, lsp-codelens.patch, lsp-preprocessor-folding.patch...
LLM auditresponse for lsp-preprocessor-folding.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch to the clangd source tree that adds preprocessor-directive folding ranges. It introduces a `RangePairer` helper struct and a `pairDirectiveRanges` function, which walk a `DirectiveTree`, collect `Token::Range` values, and adjust range boundaries. The code is ordinary C++ source-manipulation logic for an IDE feature and contains no network access, subprocess execution, file modification, or encoded/obfuscated payloads.

The patch only adds declarations/definitions related to token ranges and directive trees. There is no use of `eval`, `curl`, `wget`, `base64`, environment variable theft, or any behavior outside the expected scope of an editor's semantic-selection/folding implementation. The HTML entities in the listing (`&amp;`, `&lt;`, `&gt;`) are merely escaping artifacts and do not indicate hidden code.

Overall, this is a benign upstream-style feature patch. No supply-chain indicators or malicious behavior were found.
</details>
<evidence>
</evidence>
<summary>
Benign clangd patch adding preprocessor folding ranges; no malicious behavior found.</summary>
</security_assessment>

[10/16] Reviewing inlay-hints-hide-deduced-types-ignore-evident.patch, lsp-codelens.patch, lsp-preprocessor-folding.patch, lsp-remove-files-from-cdb.patch...
[11/16] Reviewing inlay-hints-hide-deduced-types-ignore-evident.patch, lsp-codelens.patch, lsp-remove-files-from-cdb.patch...
+ Reviewed lsp-preprocessor-folding.patch. Status: SAFE -- Benign clangd patch adding preprocessor folding ranges; no malicious behavior found.
LLM auditresponse for lsp-remove-files-from-cdb.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies clangd's LSP server so that when a `didChangeConfiguration` update supplies a compile command with both an empty command line and an empty directory, the file is removed from the in-memory compilation database (via `setCompileCommand(File, std::nullopt)`). Otherwise, it falls back to the original behavior of setting the compile command normally. This is a legitimate, narrowly-scoped feature: it lets users/clients explicitly erase or exclude a file's compile command through the LSP protocol.

There is no malicious behavior here. The patch performs no network requests, no downloads, no file reads/writes outside clangd's in-memory state, no obfuscation, and no code execution. It only manipulates the in-memory compile-command override map inside the clangd process. The logic is correct and maintains the existing `ModifiedFiles` semantics. The `&quot;` and `&amp;&amp;` sequences in the presented text are HTML/XML entity serialization artifacts of the quoting characters and logical AND operator in the C++ source, not executable content.

This is ordinary upstream application functionality for an LSP server and does not indicate a supply-chain attack. There are no red flags such as exfiltration, backdoors, credential handling, or tampering with unrelated system files.
</details>
<evidence>
</evidence>
<summary>
Benign feature patch: empty LSP compile command removes file from in-memory CDB.</summary>
</security_assessment>

[12/16] Reviewing inlay-hints-hide-deduced-types-ignore-evident.patch, lsp-codelens.patch...
+ Reviewed lsp-remove-files-from-cdb.patch. Status: SAFE -- Benign feature patch: empty LSP compile command removes file from in-memory CDB.
[12/16] Reviewing inlay-hints-hide-deduced-types-ignore-evident.patch, lsp-codelens.patch, postfix-completion-trunk.patch...
LLM auditresponse for postfix-completion-trunk.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch for LLVM/Clang (clangd and clang's Sema code) that adds "pseudo member completions" — a feature that suggests code transformations (like wrapping with `std::move`, `std::forward`, casting, iterating, switch on enums, if/while with condition extraction) when typing `.` or `->` after an expression.  

The patch uses standard C++ and LLVM APIs, contains no obfuscation, no network requests, no system command execution, no file exfiltration, and no backdoors. The only slightly unusual element is a debug print (`llvm::errs() << ...`) and a dead code branch (`if (0 && ...)`), both of which are consistent with development/debugging practices and not indicative of malice.  

There is no evidence of supply-chain attack, injection, or deviation from the package's stated purpose of enhancing clangd's code completion.
</details>
<evidence></evidence>
<summary>Legitimate feature patch for clangd completion.</summary>
</security_assessment>

[12/16] Reviewing inlay-hints-hide-deduced-types-ignore-evident.patch, lsp-codelens.patch, postfix-completion-trunk.patch, refactor-extract-function.patch...
[13/16] Reviewing inlay-hints-hide-deduced-types-ignore-evident.patch, lsp-codelens.patch, refactor-extract-function.patch...
+ Reviewed postfix-completion-trunk.patch. Status: SAFE -- Legitimate feature patch for clangd completion.
LLM auditresponse for inlay-hints-hide-deduced-types-ignore-evident.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch to `clangd/InlayHints.cpp` that adds a heuristic to hide inlay type hints when the variable name already reveals the type (for example `auto i = ...` with prefixes such as `m_`, `ms_`, `_`, `m`, or names matching the lowercased type). It only reads in-memory AST information (variable names, type names, string prefixes) and decides whether to return early from the hint-producing code path.

I found no evidence of malicious behavior: there are no network requests, downloads, execution of fetched code, file or registry modifications, credential access, or obfuscated payloads. The patch does not touch any system scope outside of clangd's own hint logic. The escaped entities in the displayed text are an XML-embedding artifact and decode to normal C++ operators and string literals.

One minor code-quality issue exists: if `D-&gt;getType().getAsString()` ever returned an empty string, `VarNameNoPrefix[TypeName.length() - 1]` could index out of bounds. This is a potential bug in the heuristic, not evidence of an intentionally injected supply-chain vulnerability. It is unrelated to package installation behavior and does not match the threat patterns (exfiltration, remote code execution, backdoors) that would warrant an UNSAFE classification.

Overall, the patch is a benign feature change: it suppresses inlay hints in specific naming conventions and does not deviate from the stated purpose of the package.
</details>
<evidence></evidence>
<summary>Patch only refines clangd inlay-hint display; no malicious or suspicious behavior found.</summary>
</security_assessment>

[14/16] Reviewing lsp-codelens.patch, refactor-extract-function.patch...
+ Reviewed inlay-hints-hide-deduced-types-ignore-evident.patch. Status: SAFE -- Patch only refines clangd inlay-hint display; no malicious or suspicious behavior found.
LLM auditresponse for refactor-extract-function.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a C++ patch for the clangd &quot;extract function&quot; refactoring feature in LLVM/Clang. It adds new code paths and unit tests for extracting binary subexpressions, including expressions with large structs, operators, and reference return types. The content is source code and test data; the HTML entities (`&amp;`, `&lt;`, `&gt;`, `&quot;`) are simply the patch representation of C++/HTML-escaped characters and are not suspicious.

There is no evidence of malicious behavior: no network requests, no shell commands, no file-system manipulation outside test strings, no obfuscation, and no attempts to exfiltrate data. The diff only modifies LLVM source and tests. The `&quot;` entities and raw string literals are ordinary C++ patch content, and the `&amp;` entities appear because the test code itself uses references. This is a normal upstream code patch.
</details>
<evidence></evidence>
<summary>Patch adds clangd extraction tests; no malicious behavior present.</summary>
</security_assessment>

[15/16] Reviewing lsp-codelens.patch...
+ Reviewed refactor-extract-function.patch. Status: SAFE -- Patch adds clangd extraction tests; no malicious behavior present.
LLM auditresponse for lsp-codelens.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a C++ source patch for clangd that implements the LSP CodeLens feature. It adds CodeLens data structures (`CodeLensArgument`, `CodeLensResolveData`), JSON (de)serialization helpers, a `code-lens` hidden command-line flag, request handlers (`onCodeLens`, `onCodeLensResolve`), and updates the server headers and test expectations. All changes are ordinary compiler/LSP protocol code: they operate wholly in-memory on ASTs, symbol indices, and JSON messages—there are no network calls, no execution of external processes, no filesystem accesses outside the source tree, and no environmental mutation. The HTML entities (`&amp;`, `&lt;`, `&gt;`, `&quot;`) are just XML/RDF encoding artifacts of the patch content, not obfuscation; the decoded text is standard C++ (references, template brackets, string literals).

The patch matches the style and structure of the historical upstream clangd CodeLens branch (clangd's later integrated CodeLens implementation). The behavior added—advertising `codeLensProvider` capabilities, resolving symbol references, and labeling results as unused/referenced—is exactly the feature described in the CodeLens comment at the top of the file. No data is exfiltrated, no credentials are read, no remote host is contacted, and no code is downloaded or executed. The only hygiene note is that, as with any AUR `-git` package, the patch is applied against a moving source tree and could fail to apply or build—a reliability concern, not a security one.
</details>
<evidence></evidence>
<summary>Legitimate clangd CodeLens feature patch; no evidence of malicious behavior.</summary>
</security_assessment>

[16/16] Reviewing ...
+ Reviewed lsp-codelens.patch. Status: SAFE -- Legitimate clangd CodeLens feature patch; no evidence of malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 91,745
  Completion Tokens: 23,290
  Total Tokens: 115,035
  Total Cost: $0.005848
  Execution Time: 301.65 seconds

Final Status: SAFE


No issues found.
