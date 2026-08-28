#!/usr/bin/env bash
# The i18n surface: language selection, translation lookup, and the
# console/report split. The split is the load-bearing invariant -- the report
# file is archived to the public branch and parsed by bench scripts, so it
# must never carry a translated string, whatever the operator's locale.
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - "$PWD/aur-sleuth" "${1:-}" <<'PY'
import importlib.machinery, importlib.util, os, sys
loader = importlib.machinery.SourceFileLoader("aur_sleuth", sys.argv[1])
spec = importlib.util.spec_from_loader(loader.name, loader)
m = importlib.util.module_from_spec(spec)
loader.exec_module(m)
quiet = len(sys.argv) > 2 and sys.argv[2] == "-q"
fails = 0
def check(name, cond, got=None):
    global fails
    if cond:
        if not quiet: print(f"  ok    {name}")
    else:
        print(f"  FAIL  {name}: {got!r}")
        fails += 1

# Language selection, in locale precedence order.
def setenv(**kw):
    for k in ("AUR_SLEUTH_LANG", "LC_ALL", "LC_MESSAGES", "LANG"):
        os.environ.pop(k, None)
    os.environ.update(kw)

saved = {k: os.environ.get(k) for k in ("AUR_SLEUTH_LANG", "LC_ALL", "LC_MESSAGES", "LANG")}
try:
    setenv(LANG="zh_CN.UTF-8")
    check("LANG zh_CN -> zh", m.current_language() == "zh", m.current_language())
    check("zh lookup keeps placeholders",
          m._("Cloning {clone_url}...") == "正在克隆 {clone_url}...",
          m._("Cloning {clone_url}..."))
    check("unknown key passes through", m._("Nothing here") == "Nothing here")

    setenv(LANG="de_DE.UTF-8")
    check("unsupported locale -> en", m.current_language() == "en", m.current_language())
    setenv(LANG="C")
    check("C locale -> en", m.current_language() == "en", m.current_language())

    setenv(AUR_SLEUTH_LANG="zh")
    check("explicit AUR_SLEUTH_LANG wins", m.current_language() == "zh", m.current_language())
    setenv(AUR_SLEUTH_LANG="bogus", LANG="zh_CN.UTF-8")
    check("bogus explicit -> en", m.current_language() == "en", m.current_language())
    setenv(LC_ALL="zh_CN.UTF-8", LANG="de_DE.UTF-8")
    check("LC_ALL beats LANG", m.current_language() == "zh", m.current_language())

    # Console display labels translate; the enum names they stand for do not.
    setenv(AUR_SLEUTH_LANG="zh")
    check("cautious name translated", m._("No issues found") == "未发现问题", m._("No issues found"))
    check("status label translated", m._("SAFE") == "安全", m._("SAFE"))
    check("action translated", m._(" -- DO NOT INSTALL!") == " —— 请勿安装！", m._(" -- DO NOT INSTALL!"))

    # The console/report split: TUIPlain writes English to the report file and
    # the translated text to the terminal, in the same call.
    import contextlib, io, tempfile
    from pathlib import Path
    buf = io.StringIO()
    with tempfile.TemporaryDirectory() as d:
        path = Path(d) / "r.txt"
        with m.Report(path) as report:
            with m.TUIPlain(report) as tui:
                with contextlib.redirect_stdout(buf):
                    tui.update_status(
                        m._("Cloning {clone_url}...").format(clone_url="https://x"),
                        report_msg="Cloning https://x...",
                    )
        written = path.read_text(encoding="utf-8")
    check("terminal is localized", "正在克隆 https://x..." in buf.getvalue(), buf.getvalue())
    check("report stays English", "Cloning https://x..." in written, written)
    check("report has no translated bytes", "正在" not in written, written)
finally:
    for k, v in saved.items():
        if v is None:
            os.environ.pop(k, None)
        else:
            os.environ[k] = v

# --- verdict prose translation (display layer) -------------------------------
saved = {k: os.environ.get(k) for k in ("AUR_SLEUTH_LANG", "AUR_SLEUTH_DRY_RUN", "AUR_SLEUTH_TRANSLATE_VERDICTS")}
def setenv2(**kw):
    for k in ("AUR_SLEUTH_LANG", "AUR_SLEUTH_DRY_RUN", "AUR_SLEUTH_TRANSLATE_VERDICTS"):
        os.environ.pop(k, None)
    os.environ.update(kw)
def restore2():
    for k, v in saved.items():
        if v is None: os.environ.pop(k, None)
        else: os.environ[k] = v
try:
    # OFF by default: the verdict translation costs a second call per flag.
    setenv2(AUR_SLEUTH_LANG="zh")
    check("translation off by default", not m.verdict_translation_enabled())
    setenv2(AUR_SLEUTH_LANG="zh", AUR_SLEUTH_TRANSLATE_VERDICTS="1")
    check("explicit on for a zh console", m.verdict_translation_enabled())
    setenv2(AUR_SLEUTH_LANG="en", AUR_SLEUTH_TRANSLATE_VERDICTS="1")
    check("never into English", not m.verdict_translation_enabled())
    setenv2(AUR_SLEUTH_LANG="zh", AUR_SLEUTH_TRANSLATE_VERDICTS="0")
    check("explicit off wins", not m.verdict_translation_enabled())
    setenv2(AUR_SLEUTH_LANG="zh", AUR_SLEUTH_TRANSLATE_VERDICTS="1", AUR_SLEUTH_DRY_RUN="1")
    check("dry-run never translates", not m.verdict_translation_enabled())

    # Language comes from the SYSTEM locale with regional priority:
    # exact (zh_CN) -> bare (zh) -> any zh_XX -> en; no AUR_SLEUTH_LANG needed.
    saved_lang = {k: os.environ.get(k) for k in ("AUR_SLEUTH_LANG", "LC_ALL", "LC_MESSAGES", "LANG")}
    saved_table = dict(m._TRANSLATIONS)
    try:
        setenv2(LANG="zh_CN.UTF-8")
        m._TRANSLATIONS["zh_CN"] = {"_probe": "exact"}
        check("exact regional entry wins", m.current_language() == "zh_CN", m.current_language())
        del m._TRANSLATIONS["zh_CN"]
        check("bare language falls back", m.current_language() == "zh", m.current_language())
        setenv2(LANG="de_DE.UTF-8")
        check("unmatched locale -> en", m.current_language() == "en", m.current_language())
    finally:
        m._TRANSLATIONS.clear()
        m._TRANSLATIONS.update(saved_table)
        for k, v in saved_lang.items():
            if v is None: os.environ.pop(k, None)
            else: os.environ[k] = v

    # Reply parsing: well-formed round-trips, malformed keeps English.
    parsed = m._parse_verdict_translations(
        '<translations><item index="0"><summary>中文</summary><details>详情</details></item>'
        '<item index="1"><summary>s2</summary></item></translations>'
    )
    check("translations parse", parsed == {0: ("中文", "详情"), 1: ("s2", "")}, parsed)
    check("garbage reply keeps English", m._parse_verdict_translations("no xml") == {})

    # The batch, end to end with a fake translator: non-SAFE verdicts get a
    # Chinese render; the report render stays English.
    class FakeLLM:
        last = None
        def __init__(self, **kwargs):
            self.kwargs = kwargs
            FakeLLM.last = self
        def chat(self, _prompt):
            return ('<translations><item index="0"><summary>不安全总结</summary>'
                    '<details>不安全详情</details></item></translations>')
    class UsageClient:
        def get_usage_summary(self):
            return {"total": {"prompt_tokens": 0, "completion_tokens": 0,
                              "total_tokens": 0, "total_cost": 0}, "by-model": {}}
    class FakeTUI:
        def __init__(self):
            self.statuses = []
        def update_status(self, text, report_msg=None):
            self.statuses.append((text, report_msg))
    import types
    old_llm, old_params = m.LLM, m.get_llm_params_from_env
    try:
        setenv2(AUR_SLEUTH_LANG="zh", AUR_SLEUTH_TRANSLATE_VERDICTS="1")
        m.LLM = FakeLLM
        m.get_llm_params_from_env = lambda: types.SimpleNamespace(model="fake-model")
        pkg = Path("/tmp/fake-pkg")
        safe = m.AuditResult(pkg / "a", pkg, m.SafeStatus.SAFE, "all fine", details="nothing here")
        bad = m.AuditResult(pkg / "b", pkg, m.SafeStatus.UNSAFE, "malicious curl", details="exfiltrates /etc/shadow")
        tui = FakeTUI()
        m.VERDICT_TRANSLATIONS.clear()
        m.translate_verdicts_batch(tui, object(), [safe, bad], "fake-pkg")
        check("unsafe verdict translated", m.VERDICT_TRANSLATIONS.get(id(bad)) == ("不安全总结", "不安全详情"),
              m.VERDICT_TRANSLATIONS)
        check("safe verdict not translated", id(safe) not in m.VERDICT_TRANSLATIONS)
        check("tui says it is translating",
              any("正在翻译审查结论" in t or "Translating verdicts for display" in r for t, r in tui.statuses),
              tui.statuses)
        # The translator instruction is per-language content: it must come from
        # the zh table, and a language without one gets no translation.
        check("translator prompt lives in the table",
              "你是翻译" in m._TRANSLATIONS["zh"].get("_verdict_translator", ""))
        check("batch uses the table's translator prompt",
              FakeLLM.last is not None and "你是翻译" in FakeLLM.last.kwargs.get("system_prompt", ""),
              FakeLLM.last.kwargs if FakeLLM.last else None)
        by_status = m.partition_results_by_status([safe, bad])
        console = m.generate_report_text(pkg, by_status, use_color=False, execution_time=1.0,
                                         llm_client=UsageClient(), translations=m.VERDICT_TRANSLATIONS)
        report = m.generate_report_text(pkg, by_status, use_color=False, execution_time=1.0,
                                        llm_client=UsageClient())
        check("console carries the translation", "不安全详情" in console and "总结：" in console, console)
        check("report stays English", "malicious curl" in report and "Summary: " in report and "不安全" not in report, report)
        # A language with display strings but no translator instruction gets no
        # translation: never prompt for the wrong target language.
        saved_table = dict(m._TRANSLATIONS)
        try:
            m._TRANSLATIONS["zz-fake"] = {"Some display": "某显示"}
            setenv2(AUR_SLEUTH_LANG="zz-fake", AUR_SLEUTH_TRANSLATE_VERDICTS="1")
            m.VERDICT_TRANSLATIONS.clear()
            tui.statuses.clear()
            m.translate_verdicts_batch(tui, object(), [bad], "fake-pkg")
            check("no translator instruction means no translation", not m.VERDICT_TRANSLATIONS, m.VERDICT_TRANSLATIONS)
            check("no translating status without a translator", not tui.statuses, tui.statuses)
        finally:
            m._TRANSLATIONS.clear()
            m._TRANSLATIONS.update(saved_table)
            setenv2(AUR_SLEUTH_LANG="zh")
    finally:
        m.LLM = old_llm
        m.get_llm_params_from_env = old_params
finally:
    restore2()

# --- static completeness ------------------------------------------------------
# A missing key silently falls back to English (that is the point of the
# fallback), so a typo in a call site or in the table would be invisible.
# Every literal `_("...")` in the source must therefore have a zh entry;
# only strings the selftest uses to probe the passthrough are exempt.
# Dynamic lookups (status names, cautious names, actions) are asserted by the
# selftest, not by this scan.
import re
src = open(sys.argv[1], encoding="utf-8").read()
allowed_missing = {
    "No such string at all",  # the selftest's passthrough probe
}
msgids = {m[1] for m in re.findall(r"_\(\s*(['\"])(.*?)\1\s*\)", src)}
missing = sorted(mid for mid in msgids if mid not in m._TRANSLATIONS["zh"] and mid not in allowed_missing)
check("every literal msgid has a zh entry", not missing, missing)
check("the table is not empty", bool(m._TRANSLATIONS["zh"]))

raise SystemExit(1 if fails else 0)
PY
