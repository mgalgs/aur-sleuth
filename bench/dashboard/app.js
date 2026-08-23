let DATA = null;
// Newest audit first: the page is a record of what the tool has been doing,
// and alphabetical put 1password at the top for months on end.
let currentSort = {key: 'date', asc: false};
let currentFilter = 'all';
let searchTerm = '';
const detailCache = {};

const RESULT_COLORS = {
    safe: '#22c55e',
    unsafe: '#ef4444',
    inconclusive: '#f59e0b',
    contested: '#f59e0b',
    skipped: '#6b7280',
    unknown: '#6b7280',
};

const DANGER_SCORE = {unsafe: 3, contested: 2, inconclusive: 1, unknown: 0, safe: 0};

function dangerScore(pkg) {
    const a = DANGER_SCORE[pkg.audit_majority] || 0;
    const j = pkg.judge_majority ? (DANGER_SCORE[pkg.judge_majority] || 0) : 0;
    const hasJudge = pkg.judges && pkg.judges.length > 0 ? 1 : 0;
    return a * 10 + j * 5 + hasJudge;
}

async function init() {
    try {
        const resp = await fetch('_dashboard/data.json');
        DATA = await resp.json();
    } catch (e) {
        document.getElementById('package-table').innerHTML =
            '<tr><td colspan="7" class="px-4 py-8 text-center text-slate-400">Failed to load data. Are you serving from the audit-reports branch root?</td></tr>';
        return;
    }
    renderSummary();
    renderActivity();
    renderFunding();
    renderCharts();
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

// A headline count that filters the table to exactly the packages it counts.
// The count and the filter share packageState(), so the number the reader
// clicked is the number of rows they get.
function countLink(filter, text, cls) {
    return '<button type="button" class="count-link ' + cls + '" data-filter="'
        + escapeAttr(filter) + '" title="Show these in the table below">'
        + escapeHtml(text) + '</button>';
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
    document.getElementById('package-table').closest('.bg-slate-800')
        .scrollIntoView({behavior: 'smooth', block: 'start'});
}

function joinNicely(parts) {
    if (parts.length <= 1) return parts.join('');
    if (parts.length === 2) return parts[0] + ' and ' + parts[1];
    return parts.slice(0, -1).join(', ') + ', and ' + parts[parts.length - 1];
}

function renderActivity() {
    const activity = document.getElementById('activity');
    const wk = (DATA.summary && DATA.summary.week) || null;
    const rec = (DATA.summary && DATA.summary.recent) || [];
    // Older data.json (before this field existed) has no week block.
    if (!wk) { activity.style.display = 'none'; return; }

    const p = wk.packages || {};
    const confirmed = Number(p.confirmed || 0);
    // data.json can be older than the page. Without the new keys every
    // count would render as a confident zero, which is worse than saying
    // nothing: show the totals and leave the breakdown out.
    const counted = Object.prototype.hasOwnProperty.call(p, 'confirmed');
    document.getElementById('activity-packages').innerHTML =
        '<span class="text-2xl font-bold text-white">' + Number(p.updated || 0).toLocaleString() + '</span>' +
        ' packages audited' +
        '<span class="text-slate-400 text-base"> (' + Number(p.new || 0) + ' new)</span>' +
        (!counted ? '' :
        '<br><span class="text-sm">' +
        countLink('clean', Number(p.green || 0) + ' clean', 'result-safe font-semibold') +
        '<span class="text-slate-500"> &middot; </span>' +
        countLink('unknown', Number(p.unknown || 0) + ' no verdict', 'text-slate-400') +
        '<span class="text-slate-500"> &middot; </span>' +
        countLink('look', Number(p.look || 0) + ' worth a closer look', 'text-slate-300') +
        '<span class="text-slate-500"> &middot; </span>' +
        (confirmed
            ? countLink('confirmed', confirmed + ' confirmed malicious', 'result-unsafe font-semibold')
            : '<span class="result-safe font-semibold">none confirmed malicious</span>') +
        '</span>');

    const parts = Object.entries(wk.by_model || {}).slice(0, 6)
        .map(([m, c]) => escapeHtml(shortModel(m)) + ' (' + Number(c) + ')');
    document.getElementById('activity-audits').innerHTML =
        Number(wk.audits_total || 0).toLocaleString() + ' audits' +
        (parts.length ? ' by ' + joinNicely(parts) : '');

    // Only the packages worth a reader's attention get a chip: a list of
    // every clean package this week is the table, repeated. A "look" chip
    // is drawn hollow, because a solid amber dot beside a name reads as a
    // warning about the package rather than what it is: noted, nothing
    // concluded.
    const DOT = {confirmed: 'block-unsafe', look: 'block-look'};
    const WHAT = {confirmed: 'two audits and a judge agree: unsafe',
                  look: 'flagged by a model; not confirmed'};
    const flagged = rec.filter(r => DOT[r.state]).slice(0, 24);
    const label = document.getElementById('activity-recent-label');
    label.classList.toggle('hidden', flagged.length === 0);
    label.textContent = flagged.length ? 'Flagged this week:' : '';
    document.getElementById('activity-recent').innerHTML = flagged.map(r => {
        const d = String(r.date || '').split('T')[0];
        return '<span class="chip inline-flex items-center gap-1.5 bg-slate-900 border border-slate-700 rounded px-2 py-1 text-xs" ' +
            'data-pkg="' + escapeAttr(r.package || '') + '" ' +
            'title="' + escapeAttr(WHAT[r.state] + ' • ' + (r.date || '') + ' — open this package') + '">' +
            '<span class="block ' + DOT[r.state] + '" style="margin-right:0"></span>' +
            '<span class="text-blue-300">' + escapeHtml(r.package || '') + '</span>' +
            '<span class="text-slate-500">' + escapeHtml(d) + '</span>' +
            '</span>';
    }).join('');
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
        Number(f.updates_per_day).toLocaleString() + ' packages updated in the last 24 hours, at about '
        + money(f.cost_per_package, 3) + ' per package.';

    const budget = document.getElementById('funding-budget');
    const track = document.getElementById('funding-track');
    if (f.daily_budget != null && f.covered != null) {
        const pct = Math.round(Number(f.covered) * 100);
        budget.textContent = 'The current budget is ' + money(f.daily_budget, 2) + ' a day. That covers '
            + (pct < 1 ? 'under 1%' : pct + '%') + '.';
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

function renderSummary() {
    const s = DATA.summary;
    document.getElementById('stat-packages').textContent = s.packages_audited.toLocaleString();
    document.getElementById('stat-reports').textContent = s.total_reports.toLocaleString();
    document.getElementById('stat-cost').textContent = '$' + s.total_cost.toFixed(2) + ' all time';
    document.getElementById('generated-at').textContent = 'Updated ' + String(DATA.generated_at || 'unknown').split('T')[0];

    // The same rule as the table and the chart, so the number a reader
    // taps is the number of rows they get.
    let confirmed = 0, look = 0;
    for (const pkg of Object.values(DATA.packages)) {
        const st = packageState(pkg);
        if (st === 'confirmed') confirmed++;
        if (st === 'look') look++;
    }
    const c = document.getElementById('stat-confirmed');
    c.innerHTML = countLink('confirmed', confirmed.toLocaleString(), confirmed ? 'result-unsafe' : 'result-safe');
    document.getElementById('stat-look').innerHTML = countLink('look', look.toLocaleString(), look ? 'text-yellow-500' : 'text-slate-300');
}

function renderCharts() {
    const s = DATA.summary;

    // Verdicts per package, after the judge. Charting the raw per-report results would
    // put verdicts the judge overturned into a headline figure; a package
    // the judge cleared is simply clean here, and the audit that called it
    // unsafe stays visible in its own row.
    const STATE_LABEL = {clean: 'Clean', look: 'Worth a closer look',
                         confirmed: 'Confirmed malicious', unknown: 'No verdict'};
    const STATE_COLOR = {clean: '#22c55e', look: '#f59e0b',
                         confirmed: '#ef4444', unknown: '#64748b'};
    const states = s.package_states
        || {unknown: Object.keys(DATA.packages || {}).length};
    const stateKeys = ['clean', 'unknown', 'look', 'confirmed'].filter(k => states[k]);
    const resultsCtx = document.getElementById('results-chart').getContext('2d');
    new Chart(resultsCtx, {
        type: 'doughnut',
        data: {
            labels: stateKeys.map(k => STATE_LABEL[k] || k),
            datasets: [{
                data: stateKeys.map(k => states[k]),
                backgroundColor: stateKeys.map(k => STATE_COLOR[k] || '#6b7280'),
                borderColor: '#1e293b',
                borderWidth: 2,
            }],
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    // Beside the ring where there is room; under it on a phone,
                    // where beside it the labels were cut mid-word.
                    position: window.innerWidth < 640 ? 'bottom' : 'right',
                    labels: { color: '#94a3b8', font: { family: "'Courier New', monospace", size: 11 } },
                },
            },
        },
    });

    // Model cost bar chart
    const modelCtx = document.getElementById('model-chart').getContext('2d');
    const modelEntries = Object.entries(s.by_model).filter(([, v]) => v.cost > 0);
    const modelColors = ['#3b82f6', '#8b5cf6', '#ec4899', '#f59e0b', '#22c55e', '#06b6d4'];
    new Chart(modelCtx, {
        type: 'bar',
        data: {
            labels: modelEntries.map(([m]) => m.split('/').pop()),
            datasets: [{
                label: 'Cost ($)',
                data: modelEntries.map(([, v]) => v.cost),
                backgroundColor: modelEntries.map((_, i) => modelColors[i % modelColors.length]),
                borderWidth: 0,
                borderRadius: 4,
            }],
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            indexAxis: 'y',
            plugins: {
                legend: { display: false },
                tooltip: {
                    callbacks: {
                        label: ctx => `$${ctx.raw.toFixed(4)} (${modelEntries[ctx.dataIndex][1].count} runs)`,
                    },
                },
            },
            scales: {
                x: {
                    ticks: { color: '#94a3b8', callback: v => '$' + v.toFixed(2) },
                    grid: { color: '#334155' },
                },
                y: {
                    ticks: { color: '#94a3b8', font: { family: "'Courier New', monospace", size: 10 } },
                    grid: { display: false },
                },
            },
        },
    });
}

// The same rule as package_state() in generate-dashboard.py. The headline
// counts and these filters must agree: clicking "2 confirmed" has to produce
// exactly two rows, or one of the two numbers is lying.
function packageState(pkg) {
    const audit = pkg.audit_majority;
    const judge = pkg.judge_majority;
    // Mirrors package_state() in Python: two unsafe reports or it is not confirmed.
    if (audit === 'unsafe' && judge === 'unsafe' && (pkg.unsafe_audits || 0) >= 2) return 'confirmed';
    if (judge === 'safe') return 'clean';
    if (audit === 'unsafe' || audit === 'contested' || judge === 'unsafe') return 'look';
    if (audit === 'safe') return 'clean';
    return 'unknown';
}

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
            // its own view: these are the false positives being caught.
            return pkg.judge_majority === 'safe'
                && (pkg.audits || []).some(a => a.result === 'unsafe' || a.result === 'inconclusive');
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

// judgeVerdict is the judge's majority for this package, when there is one.
// An audit the judge overturned is struck through rather than left standing:
// a red square next to a judgement that cleared the package says the package
// is dangerous, when what happened is that a model was wrong about it.
function renderBlocks(items, type, judgeVerdict) {
    if (!items || items.length === 0) {
        return '<span class="text-slate-600">—</span>';
    }
    return items.map(item => {
        const value = type === 'audit' ? item.result : item.verdict;
        const model = (item.model || 'unknown').split('/').pop();
        const reaudit = item.reaudit ? ' block-reaudit' : '';
        const label = item.reaudit ? 're-audit' : type;
        // Colour says how much weight the verdict carries, not just what it
        // said. Red is only for a finding the judge agreed with: a lone
        // model's "unsafe" is usually a false positive, and painting it the
        // same red as a confirmed one says something the evidence does not.
        let shade = value || 'unknown';
        let note = '';
        if (type === 'audit') {
            if (judgeVerdict === 'safe' && (value === 'unsafe' || value === 'inconclusive')) {
                note = ' — the judge did not agree; overridden';
            } else if (value === 'unsafe' && judgeVerdict !== 'unsafe') {
                shade = 'flagged';        // amber: nobody has confirmed it
                note = ' — flagged, not confirmed by a judge';
            }
        }
        const overridden = type === 'audit' && judgeVerdict === 'safe'
            && (value === 'unsafe' || value === 'inconclusive');
        const cls = overridden ? ' block-overridden' : '';
        return `<span class="block block-${escapeAttr(shade)}${reaudit}${cls}" title="${escapeAttr(model)}: ${escapeAttr(value || 'unknown')} (${label})${escapeAttr(note)}"></span>`;
    }).join('');
}

function renderTable() {
    const entries = getFilteredPackages();
    const tbody = document.getElementById('package-table');

    document.getElementById('result-count').textContent = `${entries.length} package${entries.length !== 1 ? 's' : ''}`;

    tbody.innerHTML = entries.map(([name, pkg]) => {
        const date = pkg.latest_date ? pkg.latest_date.split('T')[0] : '—';
        const safeId = escapeAttr(name);

        return `<tr class="border-b border-slate-700/50 hover:bg-slate-750 cursor-pointer pkg-row" data-pkg="${safeId}">
            <td class="px-3 sm:px-4 py-2.5 font-medium text-blue-400 break-words">${escapeHtml(name)}
                <div class="text-xs text-slate-500 font-normal sm:hidden">${escapeHtml(date)}</div></td>
            <td class="px-4 py-2.5 text-slate-400 hidden md:table-cell">${escapeHtml(pkg.pkgver || '—')}</td>
            <td class="px-3 sm:px-4 py-2.5"><span class="inline-flex items-center gap-0.5">${renderBlocks(pkg.audits, 'audit', pkg.judge_majority)}</span></td>
            <td class="px-4 py-2.5 hidden sm:table-cell"><span class="inline-flex items-center gap-0.5">${renderBlocks(pkg.judges, 'judge')}</span></td>
            <td class="px-4 py-2.5 text-right text-slate-400 hidden lg:table-cell">${pkg.files_reviewed === 0 && pkg.audits && pkg.audits.every(a => a.result === 'skipped' || a.result === 'inconclusive') ? '—' : escapeHtml(pkg.files_reviewed)}</td>
            <td class="px-4 py-2.5 text-right text-slate-400 hidden lg:table-cell">$${pkg.total_cost.toFixed(4)}</td>
            <td class="px-3 sm:px-4 py-2.5 text-slate-400 whitespace-nowrap">${escapeHtml(date)}</td>
        </tr>
        <tr class="detail-row" id="detail-${safeId}">
            <td colspan="7" class="p-0">
                <div class="detail-box p-6 bg-slate-850 border-t border-slate-600">
                    <div class="detail-content text-slate-400">Loading...</div>
                </div>
            </td>
        </tr>`;
    }).join('');
}

async function toggleDetail(name) {
    const row = document.getElementById('detail-' + name);
    if (!row) return;

    if (row.classList.contains('open')) {
        row.classList.remove('open');
        return;
    }

    document.querySelectorAll('.detail-row.open').forEach(r => r.classList.remove('open'));
    row.classList.add('open');

    const content = row.querySelector('.detail-content');

    if (detailCache[name]) {
        content.innerHTML = renderDetail(name, detailCache[name]);
        return;
    }

    try {
        const resp = await fetch(`_dashboard/pkg/${name}.json`);
        const data = await resp.json();
        detailCache[name] = data;
        content.innerHTML = renderDetail(name, data);
    } catch (e) {
        content.innerHTML = '<p class="text-red-400">Failed to load package details.</p>';
    }
}

function renderDetail(name, data) {
    let html = '';

    // Judge section
    if (data.judges && data.judges.length > 0) {
        html += `<h3 class="text-sm font-semibold text-slate-300 uppercase tracking-wide mb-2">Judge Verdicts (${data.judges.length})</h3>`;
        for (const j of data.judges) {
            const d = j.data;
            html += `<div class="bg-slate-800 rounded p-4 border border-slate-700 mb-3">
                <div class="flex flex-wrap gap-x-4 gap-y-1 mb-3 text-sm">
                    <span>Verdict: <span class="result-${escapeAttr(d.correct_verdict)} font-bold">${escapeHtml(d.correct_verdict)}</span></span>
                    <span>Confidence: <strong>${escapeHtml(d.confidence)}</strong></span>
                    <span>Model: <span class="text-slate-400">${escapeHtml((d._judge_usage || {}).model || '?')}</span></span>
                    ${d.re_audit_recommended ? '<span class="text-yellow-500">&#x26a0; Re-audit recommended</span>' : ''}
                </div>
                <p class="text-sm text-slate-300 whitespace-pre-wrap">${escapeHtml(d.reasoning || '')}</p>
                ${d.coverage_issues && d.coverage_issues.length ? '<div class="mt-2 text-xs text-yellow-400">Coverage issues: ' + d.coverage_issues.map(escapeHtml).join(', ') + '</div>' : ''}
                ${d.re_audit_focus && d.re_audit_focus.length ? '<div class="mt-1 text-xs text-yellow-400">Re-audit focus: ' + d.re_audit_focus.map(escapeHtml).join(', ') + '</div>' : ''}
            </div>`;
        }
    }

    // Audit reports
    if (data.audits && data.audits.length > 0) {
        html += `<h3 class="text-sm font-semibold text-slate-300 uppercase tracking-wide mb-2">Audit Reports (${data.audits.length})</h3>`;
        for (const a of data.audits) {
            const fm = a.frontmatter;
            const result = fm.result || 'unknown';
            const model = fm.model || 'unknown';
            const date = (fm.date || '').split('T')[0];
            const fv = fm.file_verdicts || [];

            html += `<div class="bg-slate-800 rounded p-4 border border-slate-700 mb-3">
                <div class="flex flex-wrap gap-4 text-sm mb-2">
                    <span class="result-${escapeAttr(result)} font-bold">${escapeHtml(result)}</span>
                    <span class="text-slate-400">${escapeHtml(model)}</span>
                    <span class="text-slate-500">${escapeHtml(date)}</span>
                    <span class="text-slate-500">${escapeHtml(fm.files_reviewed || 0)} files</span>
                    <span class="text-slate-500">$${(parseFloat(fm.cost) || 0).toFixed(4)}</span>
                    <span class="text-slate-500">${(parseFloat(fm.execution_time) || 0).toFixed(1)}s</span>
                </div>`;

            if (fv.length > 0) {
                html += `<table class="w-full text-xs mb-2 border-collapse">
                    <thead><tr class="text-slate-500">
                        <th class="text-left py-1 pr-3">File</th>
                        <th class="text-left py-1 pr-3 whitespace-nowrap">Status</th>
                        <th class="text-left py-1">Summary</th>
                    </tr></thead><tbody>`;
                for (const v of fv) {
                    html += `<tr class="border-t border-slate-700/50">
                        <td class="py-1 pr-3 text-blue-300">${escapeHtml(v.file || '')}</td>
                        <td class="py-1 pr-3 whitespace-nowrap result-${escapeAttr(v.status || 'unknown')}">${escapeHtml(v.status || '?')}</td>
                        <td class="py-1 text-slate-400">${escapeHtml(v.summary || '')}</td>
                    </tr>`;
                    if (v.evidence) {
                        html += `<tr><td colspan="3" class="pb-1">${renderEvidence(v)}</td></tr>`;
                    }
                }
                html += '</tbody></table>';
            }

            const bodyId = 'body-' + name.replace(/[^a-zA-Z0-9-]/g, '_') + '-' + a.filename.replace(/[^a-zA-Z0-9]/g, '_');
            html += `<button onclick="document.getElementById('${bodyId}').classList.toggle('open')"
                class="text-xs text-blue-400 hover:text-blue-300 mt-1">Toggle full report</button>
                <pre id="${bodyId}" class="report-body mt-2 text-xs text-slate-400 whitespace-pre-wrap bg-slate-900 rounded p-3 border border-slate-700 max-h-96 overflow-y-auto">${escapeHtml(a.body || '')}</pre>
            </div>`;
        }
    }

    return html || '<p class="text-slate-500">No details available.</p>';
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
        return cls ? `<span class="${cls}">${escapeHtml(line)}</span>` : escapeHtml(line);
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
                out += `<span class="tok-${cls}">${escapeHtml(m[0])}</span>`;
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

function renderEvidence(v) {
    const lang = langForFile(v.file);
    const lines = String(v.evidence).split('\n');
    const start = Number(v.evidence_line) || 0;
    const body = lines.map((line, n) => {
        const ln = start ? `<span class="ln">${start + n}</span>` : '<span class="ln unplaced">0</span>';
        return ln + highlightLine(line, lang);
    }).join('\n');
    const where = start ? `line ${start}` : 'quoted by the auditor; not matched to a line';
    return `<div class="evidence-wrap"><div class="text-xs text-slate-500 mt-1">Evidence &middot; ${escapeHtml(where)}</div>
        <pre class="evidence">${body}</pre></div>`;
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

    // A headline count anywhere on the page filters the table, and a
    // package chip opens that package. Delegated, because the panels are
    // re-rendered.
    document.addEventListener('click', e => {
        const link = e.target.closest('.count-link');
        if (link) { applyFilter(link.dataset.filter); return; }
        const chip = e.target.closest('.chip');
        if (chip && chip.dataset.pkg) openPackage(chip.dataset.pkg);
    });

    document.querySelectorAll('th[data-sort]').forEach(th => {
        th.addEventListener('click', () => {
            const key = th.dataset.sort;
            if (currentSort.key === key) {
                currentSort.asc = !currentSort.asc;
            } else {
                currentSort = {key, asc: true};
            }
            document.querySelectorAll('th[data-sort]').forEach(h => {
                h.textContent = h.textContent.replace(/ [▲▼]$/, '');
            });
            th.textContent += currentSort.asc ? ' ▲' : ' ▼';
            renderTable();
        });
    });

    document.getElementById('package-table').addEventListener('click', e => {
        const row = e.target.closest('.pkg-row');
        if (!row) return;
        toggleDetail(row.dataset.pkg);
    });
}

init();
