let DATA = null;
// Newest audit first: the page is a record of what the tool has been doing,
// and alphabetical put 1password at the top for months on end.
let currentSort = {key: 'date', asc: false};
let currentFilter = 'all';
let searchTerm = '';
const detailCache = {};

// Everything on the page is model output over attacker-controlled input.
// Every string goes through escapeHtml() or escapeAttr() before it becomes
// markup; the renderers below only decide which class wraps it.

const DANGER_SCORE = {unsafe: 3, contested: 2, inconclusive: 1, unknown: 0, safe: 0};

function dangerScore(pkg) {
    const a = DANGER_SCORE[pkg.audit_majority] || 0;
    const j = pkg.judge_majority ? (DANGER_SCORE[pkg.judge_majority] || 0) : 0;
    const hasJudge = pkg.judges && pkg.judges.length > 0 ? 1 : 0;
    return a * 10 + j * 5 + hasJudge;
}

// The four package states, their labels, and the one place their names and
// colours are paired. Defined once at the bottom of the page; used everywhere.
const STATES = ['clean', 'unknown', 'look', 'confirmed'];
const STATE_LABEL = {clean: 'clean', unknown: 'no verdict',
                     look: 'worth a closer look', confirmed: 'confirmed malicious'};
const STATE_TITLE = {clean: 'Clean', unknown: 'No verdict',
                     look: 'Worth a closer look', confirmed: 'Confirmed malicious'};

// A package's state is decided once, in package_state() in
// generate-dashboard.py, and written into data.json. The page only reads
// it: the headline, the bar, the filters and the rows all use this one
// field, so they cannot disagree with each other or with the generator.
function packageState(pkg) {
    return STATES.includes(pkg.state) ? pkg.state : 'unknown';
}

async function init() {
    try {
        const resp = await fetch('_dashboard/data.json');
        DATA = await resp.json();
    } catch (e) {
        document.getElementById('package-table').innerHTML =
            '<tr><td colspan="7" class="empty">Failed to load data. Are you serving from the audit-reports branch root?</td></tr>';
        return;
    }
    renderHeadline();
    renderActivity();
    renderFunding();
    renderModelCosts();
    renderTable();
    setupEventListeners();
    // A shareable link to one package: #pkg=<name>.
    const m = /^#pkg=(.+)$/.exec(location.hash);
    if (m) {
        try { openPackage(decodeURIComponent(m[1])); } catch (e) { /* bad hash: ignore */ }
    }
}

function shortModel(m) {
    return String(m).split('/').pop();
}

function fmtNum(n) {
    return Number(n || 0).toLocaleString();
}

// A headline count that filters the table to exactly the packages it counts.
// The count and the filter share packageState(), so the number the reader
// clicked is the number of rows they get. `text` is already markup.
function countLink(filter, text, cls) {
    return '<button type="button" class="count-link ' + escapeAttr(cls || '') + '" data-filter="'
        + escapeAttr(filter) + '" title="Show these in the table below">'
        + text + '</button>';
}

// Open one package's detail from anywhere on the page. The current filter or
// search may be hiding its row, so both are cleared first -- clicking a
// package and landing on nothing would be worse than losing the filter.
function openPackage(name) {
    if (!DATA.packages || !DATA.packages[name]) return;
    currentFilter = 'all';
    searchTerm = '';
    const box = document.getElementById('search');
    if (box) box.value = '';
    document.querySelectorAll('.filter-btn').forEach(b =>
        b.classList.toggle('active', b.dataset.filter === 'all'));
    renderTable();

    const row = document.querySelector('.pkg-row[data-pkg="' + cssEscape(name) + '"]');
    if (!row) return;
    row.scrollIntoView({behavior: 'smooth', block: 'center'});
    const detail = document.getElementById('detail-' + name);
    if (detail && !detail.classList.contains('open')) toggleDetail(name);
    history.replaceState(null, '', '#pkg=' + encodeURIComponent(name));
}

// Package names are restricted by the AUR, but this goes into a selector, so
// it is escaped rather than trusted.
function cssEscape(s) {
    return window.CSS && CSS.escape ? CSS.escape(s) : String(s).replace(/["\\]/g, '\\$&');
}

// Apply a filter from anywhere on the page, and take the reader to it.
function applyFilter(name) {
    currentFilter = name;
    document.querySelectorAll('.filter-btn').forEach(b =>
        b.classList.toggle('active', b.dataset.filter === name));
    renderTable();
    document.querySelector('.toolbar').scrollIntoView({behavior: 'smooth', block: 'start'});
}

function joinNicely(parts) {
    if (parts.length <= 1) return parts.join('');
    if (parts.length === 2) return parts[0] + ' and ' + parts[1];
    return parts.slice(0, -1).join(', ') + ', and ' + parts[parts.length - 1];
}

// --- The answer ---------------------------------------------------------

// Counted from the rows, not read from summary.package_states, so the
// number a reader taps is the number of rows they get.
function countStates() {
    const counts = {clean: 0, unknown: 0, look: 0, confirmed: 0};
    for (const pkg of Object.values(DATA.packages || {})) counts[packageState(pkg)]++;
    return counts;
}

function renderHeadline() {
    const s = DATA.summary || {};
    const counts = countStates();
    const total = Object.keys(DATA.packages || {}).length;

    document.getElementById('generated-at').textContent =
        'Updated ' + String(DATA.generated_at || 'unknown').split('T')[0];
    document.getElementById('stat-cost').textContent =
        '$' + Number(s.total_cost || 0).toFixed(2) + ' all time · '
        + fmtNum(s.total_reports) + ' reports · ' + fmtNum(s.total_judges) + ' judgements';

    const stat = (filter, n, label, cls) =>
        '<button type="button" class="stat ' + escapeAttr(cls) + '" data-filter="' + escapeAttr(filter) + '" title="Show these in the table below">'
        + '<span class="n">' + fmtNum(n) + '</span><span class="stat-label">' + escapeHtml(label) + '</span></button>';
    document.getElementById('headline').innerHTML =
        stat('all', total, 'packages audited', 'total')
        + stat('confirmed', counts.confirmed, STATE_LABEL.confirmed, counts.confirmed ? 'st-confirmed' : '')
        + stat('look', counts.look, STATE_LABEL.look, counts.look ? 'st-look' : '')
        + stat('clean', counts.clean, STATE_LABEL.clean, 'st-clean')
        + stat('unknown', counts.unknown, STATE_LABEL.unknown, 'st-unknown');

    // The bar: the same four counts as shares of one line, in the order the
    // filters list them. A state with nothing in it gets no segment.
    const bar = document.getElementById('state-bar');
    const words = STATES.map(k => fmtNum(counts[k]) + ' ' + STATE_LABEL[k]);
    bar.setAttribute('aria-label', words.join(', '));
    bar.title = words.join(' · ');
    bar.innerHTML = STATES.filter(k => counts[k] > 0).map(k =>
        '<span class="seg-' + k + '" style="flex-grow:' + Number(counts[k]) + '"></span>').join('');
}

function renderActivity() {
    const activity = document.getElementById('activity');
    const wk = (DATA.summary && DATA.summary.week) || null;
    const rec = (DATA.summary && DATA.summary.recent) || [];
    // Older data.json (before this field existed) has no week block.
    if (!wk) { activity.classList.add('hidden'); return; }

    const p = wk.packages || {};
    // data.json can be older than the page. Without the new keys every
    // count would render as a confident zero, which is worse than saying
    // nothing: show the totals and leave the breakdown out.
    const counted = Object.prototype.hasOwnProperty.call(p, 'confirmed');
    const confirmed = Number(p.confirmed || 0);
    const dot = '<span class="sep"> · </span>';
    const n = v => '<span class="n tab">' + fmtNum(v) + '</span>';
    let html = '<span class="lead">This week</span> '
        + '<span>' + n(p.updated) + ' packages audited, ' + fmtNum(p.new) + ' new</span>';
    if (counted) {
        html += dot + countLink('clean', n(p.green) + ' clean')
            + dot + countLink('unknown', n(p.unknown) + ' no verdict')
            + dot + countLink('look', n(p.look) + ' worth a closer look', 'st-look')
            + dot + (confirmed
                ? countLink('confirmed', n(confirmed) + ' confirmed malicious', 'st-confirmed')
                : '<span>none confirmed</span>');
    }
    if (wk.audits_total) {
        const by = Object.entries(wk.by_model || {}).slice(0, 6)
            .map(([m, c]) => shortModel(m) + ' (' + fmtNum(c) + ')');
        html += dot + '<span class="muted" title="' + escapeAttr(by.length ? 'by ' + joinNicely(by) : '') + '">'
            + n(wk.audits_total) + ' audits</span>';
    }

    // Only the packages worth a reader's attention get a chip: a list of
    // every clean package this week is the table, repeated.
    const WHAT = {confirmed: 'two audits and a judge agree: unsafe',
                  look: 'flagged by a model; not confirmed'};
    const flagged = rec.filter(r => WHAT[r.state]).slice(0, 24);
    if (flagged.length) {
        html += '<span class="chips"><span class="lead">Flagged:</span>' + flagged.map(r => {
            const d = String(r.date || '').split('T')[0].slice(5);
            return '<button type="button" class="chip" data-pkg="' + escapeAttr(r.package || '') + '" '
                + 'title="' + escapeAttr(WHAT[r.state] + ' · ' + (r.date || '') + ' · open this package') + '">'
                + '<span class="sq ' + (r.state === 'confirmed' ? 'sq-unsafe' : 'sq-flagged') + '" style="width:9px;height:9px"></span>'
                + escapeHtml(r.package || '') + '<span class="chip-date">' + escapeHtml(d) + '</span></button>';
        }).join('') + '</span>';
    }
    activity.innerHTML = html;
}

// Every number here is computed in code at publish time (see
// build_funding); nothing a model wrote reaches this card. The link is
// set as a property, never markup, and only when it is an https URL.
function renderFunding() {
    const f = (DATA.summary && DATA.summary.funding) || null;
    const card = document.getElementById('funding');
    if (!f || !(Number(f.needed_per_day) > 0)) { card.classList.add('hidden'); return; }
    card.classList.remove('hidden');
    const money = (v, digits) => '$' + Number(v).toFixed(digits);

    document.getElementById('funding-needed').textContent = money(f.needed_per_day, 2);
    document.getElementById('funding-inputs').textContent =
        fmtNum(f.updates_per_day) + ' packages updated in the last 24 hours, at about '
        + money(f.cost_per_package, 3) + ' each.';

    const budget = document.getElementById('funding-budget');
    const track = document.getElementById('funding-track');
    if (f.daily_budget != null && f.covered != null) {
        const pct = Math.round(Number(f.covered) * 100);
        budget.innerHTML = 'The current budget is <span class="n">' + escapeHtml(money(f.daily_budget, 2))
            + '</span> a day and covers <span class="n">' + escapeHtml(pct < 1 ? 'under 1%' : pct + '%') + '</span>.';
        document.getElementById('funding-bar').style.width = Math.max(1, Math.min(100, pct)) + '%';
        track.classList.remove('hidden');
    } else {
        budget.textContent = '';
        track.classList.add('hidden');
    }

    const link = document.getElementById('funding-link');
    if (typeof f.url === 'string' && /^https:\/\/[^\s"'<>]+$/.test(f.url)) {
        link.href = f.url;
        link.classList.remove('hidden');
    } else {
        link.classList.add('hidden');
    }
}

// What each model has cost, all time. Bars scale to the most expensive one;
// the label names the model, so the bars need no colour of their own.
function renderModelCosts() {
    const s = DATA.summary || {};
    const entries = Object.entries(s.by_model || {}).filter(([, v]) => Number(v.cost) > 0);
    const box = document.getElementById('model-chart');
    if (!entries.length) { box.innerHTML = '<div class="empty">No cost recorded.</div>'; return; }
    const max = Math.max(...entries.map(([, v]) => Number(v.cost)));
    box.innerHTML = entries.map(([m, v]) => {
        const cost = Number(v.cost);
        const pct = Math.max(1, 100 * cost / max);
        return '<span class="label" title="' + escapeAttr(m + ': ' + fmtNum(v.count) + ' runs') + '">' + escapeHtml(shortModel(m)) + '</span>'
            + '<span class="track"><span class="fill" style="width:' + pct.toFixed(1) + '%"></span></span>'
            + '<span class="value">$' + cost.toFixed(2) + '</span>';
    }).join('');
}

// --- The table ----------------------------------------------------------

function matchesPreset(pkg, preset) {
    switch (preset) {
        case 'all': return true;
        case 'confirmed':
        case 'look':
        case 'clean':
        case 'unknown':
            return packageState(pkg) === preset;
        case 'overridden':
            // The judge disagreed with an audit that called it unsafe. Worth
            // its own view: these are the false positives being caught. An
            // advisory report is not a vote, so it cannot be overridden.
            return pkg.judge_majority === 'safe'
                && (pkg.audits || []).some(a => !a.advisory && (a.result === 'unsafe' || a.result === 'inconclusive'));
        case 'unjudged':
            return !pkg.judges || pkg.judges.length === 0;
        default: return true;
    }
}

function getFilteredPackages() {
    let entries = Object.entries(DATA.packages);

    if (currentFilter !== 'all') {
        entries = entries.filter(([, p]) => matchesPreset(p, currentFilter));
    }
    if (searchTerm) {
        const term = searchTerm.toLowerCase();
        entries = entries.filter(([name]) => name.toLowerCase().includes(term));
    }

    const key = currentSort.key;
    entries.sort((a, b) => {
        let va, vb;
        switch (key) {
            case 'name': va = a[0]; vb = b[0]; break;
            case 'version': va = a[1].pkgver; vb = b[1].pkgver; break;
            case 'audits': va = dangerScore(a[1]); vb = dangerScore(b[1]); break;
            case 'judges': va = (a[1].judges || []).length; vb = (b[1].judges || []).length; break;
            case 'files': va = a[1].files_reviewed; vb = b[1].files_reviewed; break;
            case 'cost': va = a[1].total_cost; vb = b[1].total_cost; break;
            case 'date': va = a[1].latest_date; vb = b[1].latest_date; break;
            default: va = a[0]; vb = b[0];
        }
        if (typeof va === 'string') {
            const cmp = va.localeCompare(vb);
            return currentSort.asc ? cmp : -cmp;
        }
        return currentSort.asc ? va - vb : vb - va;
    });

    return entries;
}

// One square per report. Colour says how much weight the verdict carries,
// not just what it said: red is only for a finding the judge agreed with
// on a confirmed package; a lone model's "unsafe" is amber, because it is
// usually a false positive and painting it red would say something the
// evidence does not. An audit the judge overturned is struck through.
function squareClass(value, type, pkg) {
    const judge = pkg.judge_majority;
    if (type === 'audit' && judge === 'safe' && (value === 'unsafe' || value === 'inconclusive')) {
        return 'sq-flagged sq-overridden';
    }
    if (value === 'unsafe') return packageState(pkg) === 'confirmed' ? 'sq-unsafe' : 'sq-flagged';
    if (value === 'safe') return 'sq-safe';
    return 'sq-none';
}

function squareNote(value, type, pkg) {
    const judge = pkg.judge_majority;
    if (type === 'audit' && judge === 'safe' && (value === 'unsafe' || value === 'inconclusive')) {
        return ' — the judge did not agree; overridden';
    }
    if (type === 'audit' && value === 'unsafe' && packageState(pkg) !== 'confirmed') {
        return ' — flagged, not confirmed';
    }
    return '';
}

function renderSquares(items, type, pkg) {
    if (!items || items.length === 0) return '<span class="dim">—</span>';
    return '<span class="sqs">' + items.map(item => {
        const value = (type === 'audit' ? item.result : item.verdict) || 'unknown';
        const model = shortModel(item.model || 'unknown');
        // An advisory report is information, not a vote: one muted style
        // whatever it said, so a free model's "unsafe" never reads as a flag.
        if (item.advisory) {
            return '<span class="sq sq-advisory" title="' + escapeAttr(model + ': ' + value + ' (advisory — informational only, not a vote)') + '"></span>';
        }
        const label = item.reaudit ? 'second audit' : type;
        const cls = squareClass(value, type, pkg) + (item.reaudit ? ' sq-reaudit' : '');
        return '<span class="sq ' + cls + '" title="' + escapeAttr(model + ': ' + value + ' (' + label + ')' + squareNote(value, type, pkg)) + '"></span>';
    }).join('') + '</span>';
}

function renderTable() {
    const entries = getFilteredPackages();
    const tbody = document.getElementById('package-table');

    document.getElementById('result-count').textContent = fmtNum(entries.length) + ' package' + (entries.length !== 1 ? 's' : '');

    if (!entries.length) {
        tbody.innerHTML = '<tr><td colspan="7" class="empty">No packages match.</td></tr>';
        return;
    }
    tbody.innerHTML = entries.map(([name, pkg]) => {
        const date = pkg.latest_date ? pkg.latest_date.split('T')[0] : '—';
        const safeId = escapeAttr(name);
        const realAudits = (pkg.audits || []).filter(a => !a.advisory);
        const skippedAll = pkg.files_reviewed === 0 && realAudits.length > 0
            && realAudits.every(a => a.result === 'skipped' || a.result === 'inconclusive');
        const sub = [pkg.pkgver, date.slice(5)].filter(Boolean).join(' · ');
        return '<tr class="pkg-row" data-pkg="' + safeId + '">'
            + '<td><span class="pkg-name">' + escapeHtml(name) + '</span><div class="pkg-sub">' + escapeHtml(sub) + '</div></td>'
            + '<td class="col-version pkg-version">' + escapeHtml(pkg.pkgver || '—') + '</td>'
            + '<td>' + renderSquares(pkg.audits, 'audit', pkg) + '</td>'
            + '<td>' + renderSquares(pkg.judges, 'judge', pkg) + '</td>'
            + '<td class="col-files num pkg-num">' + (skippedAll ? '—' : escapeHtml(pkg.files_reviewed)) + '</td>'
            + '<td class="col-cost num pkg-num">$' + Number(pkg.total_cost || 0).toFixed(4) + '</td>'
            + '<td class="col-date num pkg-date">' + escapeHtml(date) + '</td>'
            + '</tr>'
            + '<tr class="detail-row" id="detail-' + safeId + '"><td colspan="7"><div class="detail-content detail muted">Loading…</div></td></tr>';
    }).join('');
}

async function toggleDetail(name) {
    const row = document.getElementById('detail-' + name);
    if (!row) return;
    const pkgRow = row.previousElementSibling;

    if (row.classList.contains('open')) {
        row.classList.remove('open');
        if (pkgRow) pkgRow.classList.remove('open');
        return;
    }

    document.querySelectorAll('.detail-row.open').forEach(r => r.classList.remove('open'));
    document.querySelectorAll('.pkg-row.open').forEach(r => r.classList.remove('open'));
    row.classList.add('open');
    if (pkgRow) pkgRow.classList.add('open');

    const content = row.querySelector('.detail-content');

    if (detailCache[name]) {
        content.innerHTML = renderDetail(name, detailCache[name]);
        return;
    }

    try {
        const resp = await fetch('_dashboard/pkg/' + encodeURIComponent(name) + '.json');
        const data = await resp.json();
        detailCache[name] = data;
        content.innerHTML = renderDetail(name, data);
    } catch (e) {
        content.innerHTML = '<p class="detail-error">Failed to load package details.</p>';
    }
}

// --- The open package ---------------------------------------------------

// One plain sentence on why the package is in the state it is in, built
// from the counts the state rule used. Nothing a model wrote goes in here.
function explainState(pkg) {
    const state = packageState(pkg);
    if (pkg.human) {
        return (pkg.human.by || 'A reviewer') + ' reviewed the evidence'
            + (pkg.human.since ? ' on ' + pkg.human.since : '')
            + (pkg.human.verdict === 'safe' ? ' and cleared it.' : ' and confirmed it.');
    }
    // Advisory reports are information, not votes: the explanation counts
    // only the audits the state rule counted.
    const audits = (pkg.audits || []).filter(a => !a.advisory);
    const judges = pkg.judges || [];
    const unsafe = audits.filter(a => a.result === 'unsafe').length;
    const word = n => ['No', 'One', 'Two', 'Three', 'Four', 'Five'][n] || String(n);
    const said = unsafe === 1 ? 'One audit said unsafe'
        : word(unsafe) + ' of ' + audits.length + ' audits said unsafe';
    if (state === 'confirmed') {
        return said + ' and the judge agreed.';
    }
    if (state === 'look') {
        let judge;
        if (!judges.length) judge = 'no judge has read the reports yet';
        else if (pkg.judge_majority === 'unsafe') judge = 'the judge agreed';
        else if (pkg.judge_majority === 'contested') judge = 'the judges split';
        else judge = 'the judge did not settle it';
        const second = unsafe < 2 && pkg.judge_majority === 'unsafe' ? ' No second audit has looked yet.' : '';
        return said + ' and ' + judge + '.' + second;
    }
    if (state === 'clean') {
        if (judges.length && audits.some(a => a.result === 'unsafe' || a.result === 'inconclusive')) {
            return 'An audit flagged it. The judge read the reports and cleared it.';
        }
        return 'Nothing found.';
    }
    return 'No model reached a verdict: the files were skipped, or the audits were inconclusive.';
}

function renderDetail(name, data) {
    const pkg = (DATA.packages || {})[name] || {};
    const state = packageState(pkg);
    const audits = (data.audits || []).slice().sort((a, b) =>
        String((b.frontmatter || {}).date || '').localeCompare(String((a.frontmatter || {}).date || '')));
    const judges = data.judges || [];
    const judgeSafe = pkg.judge_majority === 'safe';
    const humanSafe = !!(pkg.human && pkg.human.verdict === 'safe');
    const confirmedCls = state === 'confirmed' ? ' confirmed' : '';

    let html = '<div class="detail-state">'
        + '<span class="state st-' + state + '">' + escapeHtml(STATE_TITLE[state]) + '</span>'
        + '<span class="why">' + escapeHtml(explainState(pkg)) + '</span>'
        + '<a class="detail-link" href="#pkg=' + escapeAttr(encodeURIComponent(name)) + '">#pkg=' + escapeHtml(name) + '</a>'
        + '</div>';

    // A settled verdict, and why. This outranks everything below it.
    if (pkg.human && pkg.human.note) {
        html += '<div class="detail-section"><div class="finding"><div class="head">'
            + '<span class="file">Reviewed by ' + escapeHtml(pkg.human.by || 'a reviewer') + '</span>'
            + (pkg.human.since ? '<span class="where">' + escapeHtml(pkg.human.since) + '</span>' : '')
            + '<span class="summary">' + escapeHtml(pkg.human.note) + '</span>'
            + '</div></div></div>';
    }

    // What was flagged, first. Every file a report called unsafe, with the
    // lines the auditor quoted when it quoted any. Newest report first. Two
    // reports that quote the same lines of the same file share one block,
    // with each report's summary under it.
    const findings = new Map();
    for (const a of audits) {
        const fm = a.frontmatter || {};
        // Advisory reports never put a file in the flagged list: "flagged
        // by" is a claim about votes, and an advisory report has none. Its
        // full text still folds out under Reports below.
        if (fm.advisory === 'true') continue;
        const model = shortModel(fm.model || 'unknown');
        for (const v of fm.file_verdicts || []) {
            if (v.status !== 'unsafe') continue;
            const key = (v.file || '') + '\n' + (v.evidence || '');
            let f = findings.get(key);
            if (!f) { f = {v, models: [], summaries: []}; findings.set(key, f); }
            if (!f.models.includes(model)) f.models.push(model);
            if (v.summary && !f.summaries.includes(v.summary)) f.summaries.push(v.summary);
        }
    }
    if (findings.size) {
        html += '<div class="detail-section">' + Array.from(findings.values()).map(f => {
            const v = f.v;
            const start = Number(v.evidence_line) || 0;
            return '<div class="finding"><div class="head">'
                + '<span class="file">' + escapeHtml(v.file || '') + '</span>'
                + (start ? '<span class="where">line ' + start + '</span>' : '')
                + '<span class="tag">flagged by ' + escapeHtml(joinNicely(f.models)) + (humanSafe ? ', overturned on review' : judgeSafe ? ', overturned by the judge' : '') + '</span>'
                + f.summaries.map(s => '<span class="summary">' + escapeHtml(s) + '</span>').join('')
                + '</div>'
                + (v.evidence ? renderEvidence(v, state) : '')
                + '</div>';
        }).join('') + '</div>';
    }

    // The judge: the stronger model's reading of the reports.
    for (const j of judges) {
        const d = j.data || {};
        const verdict = String(d.correct_verdict || '?');
        html += '<div class="detail-section">'
            + '<div class="head"><span class="title">Judge</span>'
            + '<span class="meta">' + escapeHtml(shortModel((d._judge_usage || {}).model || '?')) + ' · '
            + '<span class="result-' + escapeAttr(verdict) + confirmedCls + '">' + escapeHtml(verdict) + '</span>'
            + (d.confidence ? ' · ' + escapeHtml(d.confidence) + ' confidence' : '')
            + (d.re_audit_recommended ? ' · asked for a second audit' : '') + '</span></div>'
            + '<div class="prose">' + escapeHtml(d.reasoning || '') + '</div>'
            + (d.coverage_issues && d.coverage_issues.length ? '<div class="note">Coverage: ' + d.coverage_issues.map(escapeHtml).join('; ') + '</div>' : '')
            + (d.re_audit_focus && d.re_audit_focus.length ? '<div class="note">Second audit should look at: ' + d.re_audit_focus.map(escapeHtml).join('; ') + '</div>' : '')
            + '</div>';
    }

    // Every report, one line each; the per-file table and the full text
    // fold out under the line.
    if (audits.length) {
        html += '<div class="detail-section"><div class="head"><span class="title">Reports</span></div>'
            + audits.map((a, i) => {
                const fm = a.frontmatter || {};
                const result = String(fm.result || 'unknown');
                const fv = fm.file_verdicts || [];
                // data.json knows which reports were second audits even when
                // the report itself does not say (older reports are tagged by
                // cross-referencing the judge). Its list is newest first,
                // like this one; it is used when the two line up.
                const summary = (pkg.audits || []).length === audits.length ? pkg.audits[i] : null;
                const reaudit = summary ? !!summary.reaudit : !!fm.triggered_by;
                const advisory = fm.advisory === 'true' || !!(summary && summary.advisory);
                const cls = advisory ? 'sq-advisory'
                    : squareClass(result, 'audit', pkg) + (reaudit ? ' sq-reaudit' : '');
                const bodyId = 'report-' + name.replace(/[^a-zA-Z0-9-]/g, '_') + '-' + i;
                const meta = [shortModel(fm.model || 'unknown'), String(fm.date || '').split('T')[0],
                    fmtNum(fm.files_reviewed || 0) + ' files', '$' + (parseFloat(fm.cost) || 0).toFixed(4),
                    (parseFloat(fm.execution_time) || 0).toFixed(0) + 's'].join(' · ');
                let full = '';
                if (fv.length) {
                    full += '<table class="verdicts"><thead><tr><th>File</th><th>Status</th><th>Summary</th></tr></thead><tbody>'
                        + fv.map(v => '<tr><td class="file">' + escapeHtml(v.file || '') + '</td>'
                            + '<td class="nowrap result-' + escapeAttr(v.status || 'unknown') + '">' + escapeHtml(v.status || '?') + '</td>'
                            + '<td class="summary">' + escapeHtml(v.summary || '') + '</td></tr>').join('')
                        + '</tbody></table>';
                }
                full += '<pre class="report-body">' + escapeHtml(a.body || '') + '</pre>';
                return '<div class="report"><div class="line">'
                    + '<span class="sq ' + cls + '"></span>'
                    + (advisory
                        ? '<span class="verdict dim">' + escapeHtml(result) + '</span><span class="meta">advisory — informational only, not a vote</span>'
                        : '<span class="verdict result-' + escapeAttr(result) + confirmedCls + '">' + escapeHtml(result) + '</span>')
                    + (reaudit ? '<span class="meta">second audit</span>' : '')
                    + '<span class="meta">' + escapeHtml(meta) + '</span>'
                    + '<button type="button" class="link-btn" data-toggle="' + escapeAttr(bodyId) + '">Full report</button>'
                    + '</div><div id="' + escapeAttr(bodyId) + '" class="report-full">' + full + '</div></div>';
            }).join('') + '</div>';
    }

    return html || '<p class="muted">No details available.</p>';
}

function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
}

// --- Evidence snippets ---------------------------------------------------
// The quote is model output over attacker-controlled input. Every token
// passes through escapeHtml; the highlighter only decides which class wraps
// it. No external library: the page must stay self-contained.

function langForFile(name) {
    const base = (name || '').split('/').pop();
    const ext = base.includes('.') ? base.split('.').pop().toLowerCase() : '';
    if (base === 'PKGBUILD' || base === 'Makefile' || base === 'configure') return 'bash';
    if (['sh', 'bash', 'zsh', 'install', 'bashrc', 'profile'].includes(ext)) return 'bash';
    if (ext === 'py') return 'python';
    if (['patch', 'diff'].includes(ext)) return 'diff';
    if (['js', 'mjs', 'cjs', 'ts'].includes(ext)) return 'js';
    if (ext === '') return 'bash';   // rel, bump, update: maintainer scripts
    return 'plain';
}

// Rules are tried in order at each position; the sticky flag anchors them.
const LANG_RULES = {
    bash: [
        ['c', /#[^\n]*/y],
        ['s', /"(?:\\.|[^"\\])*"|'[^']*'/y],
        ['v', /\$\{[^}\n]*\}|\$\(|\$[A-Za-z_@#?*0-9][A-Za-z0-9_]*/y],
        ['d', /\b(?:curl|wget|eval|base64|xxd|openssl|nc|ncat|socat|chmod|chown|sudo|dd|nohup|exec|python[0-9.]*|perl|bash|sh|setsid|crontab|systemctl)\b/y],
        ['k', /\b(?:if|then|else|elif|fi|for|while|until|do|done|case|esac|in|function|return|exit|local|export|declare|readonly|set|unset|source|cd|mkdir|install|cp|mv|rm|ln|echo|printf|cat|sed|awk|grep|tar|git|make|cmake|meson|ninja|cargo|npm|pip|true|false)\b/y],
    ],
    python: [
        ['c', /#[^\n]*/y],
        ['s', /"{3}[\s\S]*?"{3}|'{3}[\s\S]*?'{3}|"(?:\\.|[^"\\\n])*"|'(?:\\.|[^'\\\n])*'/y],
        ['d', /\b(?:eval|exec|compile|__import__|subprocess|os\.system|os\.popen|urllib|requests|socket|base64|marshal|pickle|ctypes|zlib)\b/y],
        ['k', /\b(?:import|from|def|class|return|if|elif|else|for|while|try|except|finally|with|as|lambda|yield|pass|raise|in|not|and|or|is|None|True|False|open|print)\b/y],
    ],
    js: [
        ['c', /\/\/[^\n]*|\/\*[\s\S]*?\*\//y],
        ['s', /`(?:\\.|[^`\\])*`|"(?:\\.|[^"\\\n])*"|'(?:\\.|[^'\\\n])*'/y],
        ['d', /\b(?:eval|Function|child_process|exec|execSync|spawn|fetch|require|atob|Buffer|XMLHttpRequest|WebSocket)\b/y],
        ['k', /\b(?:const|let|var|function|return|if|else|for|while|do|switch|case|break|continue|new|class|import|export|from|async|await|try|catch|finally|throw|typeof|instanceof|this|null|undefined|true|false)\b/y],
    ],
};

function highlightLine(line, lang) {
    if (lang === 'diff') {
        const cls = /^(\+\+\+|---|@@)/.test(line) ? 'tok-hunk'
            : line.startsWith('+') ? 'tok-add'
            : line.startsWith('-') ? 'tok-del' : '';
        return cls ? '<span class="' + cls + '">' + escapeHtml(line) + '</span>' : escapeHtml(line);
    }
    const rules = LANG_RULES[lang];
    if (!rules) return escapeHtml(line);
    const word = /[A-Za-z0-9_]+|[\s\S]/y;
    let out = '', i = 0;
    while (i < line.length) {
        let matched = false;
        for (const [cls, re] of rules) {
            re.lastIndex = i;
            const m = re.exec(line);
            if (m && m[0].length) {
                out += '<span class="tok-' + cls + '">' + escapeHtml(m[0]) + '</span>';
                i += m[0].length;
                matched = true;
                break;
            }
        }
        if (!matched) {
            word.lastIndex = i;
            const m = word.exec(line);
            out += escapeHtml(m[0]);
            i += m[0].length;
        }
    }
    return out;
}

function renderEvidence(v, state) {
    const lang = langForFile(v.file);
    const lines = String(v.evidence).split('\n');
    const start = Number(v.evidence_line) || 0;
    const body = lines.map((line, n) => {
        const ln = start ? '<span class="ln">' + (start + n) + '</span>' : '<span class="ln unplaced">0</span>';
        return '<div class="line">' + ln + highlightLine(line, lang) + '</div>';
    }).join('');
    const cls = (state === 'confirmed' ? ' confirmed' : '') + (start ? '' : ' unplaced');
    const title = start ? '' : ' title="Quoted by the auditor; not matched to a line in the file"';
    return '<pre class="evidence' + cls + '"' + title + '>' + body + '</pre>';
}

function escapeAttr(text) {
    return String(text).replace(/&/g,'&amp;').replace(/"/g,'&quot;').replace(/'/g,'&#39;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
}

function setupEventListeners() {
    document.getElementById('search').addEventListener('input', e => {
        searchTerm = e.target.value;
        renderTable();
    });

    document.getElementById('filter-buttons').addEventListener('click', e => {
        const btn = e.target.closest('.filter-btn');
        if (!btn) return;
        document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        currentFilter = btn.dataset.filter;
        renderTable();
    });

    // A headline count anywhere on the page filters the table, a package
    // chip opens that package, and a "Full report" unfolds one. Delegated,
    // because every panel is re-rendered.
    document.addEventListener('click', e => {
        const link = e.target.closest('.count-link, .stat');
        if (link && link.dataset.filter) { applyFilter(link.dataset.filter); return; }
        const chip = e.target.closest('.chip');
        if (chip && chip.dataset.pkg) { openPackage(chip.dataset.pkg); return; }
        const toggle = e.target.closest('[data-toggle]');
        if (toggle) {
            const box = document.getElementById(toggle.dataset.toggle);
            if (box) box.classList.toggle('open');
        }
    });

    const heads = document.querySelectorAll('th[data-sort]');
    const markSort = () => heads.forEach(h => {
        h.classList.toggle('sort-asc', h.dataset.sort === currentSort.key && currentSort.asc);
        h.classList.toggle('sort-desc', h.dataset.sort === currentSort.key && !currentSort.asc);
    });
    markSort();
    heads.forEach(th => {
        th.addEventListener('click', () => {
            const key = th.dataset.sort;
            if (currentSort.key === key) {
                currentSort.asc = !currentSort.asc;
            } else {
                currentSort = {key, asc: key === 'name' || key === 'version'};
            }
            markSort();
            renderTable();
        });
    });

    // A click on a package row opens it; a click inside the open detail
    // (a "Full report" button, selecting text) must not close it again.
    document.getElementById('package-table').addEventListener('click', e => {
        if (e.target.closest('.detail-row')) return;
        const row = e.target.closest('.pkg-row');
        if (!row) return;
        toggleDetail(row.dataset.pkg);
    });
}

init();
