# Design

Captured from the live tokens in `index.html` (single-file React dashboard, inline CSS). This is the source of truth for visual decisions; new UI must use these tokens.

## Theme

Dark, warm-neutral monochrome with an off-white accent. The palette is grayscale with a slight warm tint; saturated color is reserved exclusively for severity state (red/amber/green).

> Note: token names are legacy (`--blue-*`, `--teal*`) but the values are warm grays / off-whites. Keep using the existing names; do not introduce parallel tokens.

## Color

| Token | Value | Role |
|---|---|---|
| `--blue-dark` | `#131312` | Body background |
| `--blue-mid` | `#181716` | Sidebar, chat panel, tooltips |
| `--blue-deep` | `#252321` | Buttons (refresh, chat toggle) |
| `--surface` | `#1B1A19` | Cards, inputs |
| `--surface-2` | `#222120` | Entity cards, scrollbar track |
| `--surface-3` | `#2E2C2A` | Tracks, active mode buttons, kbd |
| `--border` | `rgba(255,255,255,0.08)` | All borders |
| `--teal` | `#D6D2CB` | Accent: active nav, card dots, primary buttons |
| `--teal-bright` | `#EBE8E2` | Accent hover |
| `--gray-100` | `#ECEAE7` | Brightest text |
| `--gray-200` | `#C5C1BB` | Default text |
| `--gray-400` | `#8E8A84` | Muted labels, card titles |
| `--gray-600` | `#5C5954` | Faint text, icons, placeholders |
| `--red` / `--amber` / `--green` | `#EF4444` / `#F59E0B` / `#10B981` | Severity state only |

Severity tints: badges and issue rows use `rgba(<severity>, .08–.15)` backgrounds with `.2–.3` borders and light text (`#FCA5A5`, `#FCD34D`, `#6EE7B7`). `--red-bg/border/text` etc. exist as HSL triads for solid severity cards.

## Typography

- Stack: `-apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif` (system sans only; monospace only inside `.kbd`).
- Fixed px scale (product register, no fluid type):
  - 30px/800 gauge values (`tabular-nums`), 20px/700 page title, 13px nav/logo, 12px body/table cells, 11px labels/card titles, 10px badges/table headers, 9px nav section headers.
- Uppercase + letter-spacing (`.05em–.15em`) marks labels (card titles, table headers, badges, nav sections); sentence case for data and body.

## Components

- **Card**: `--surface`, 1px `--border`, radius 10, padding 18, soft double shadow. Card title = 11px uppercase gray-400 with a 6px accent dot. Overview cards cap at 520px with sticky title and inner scroll.
- **Table** (`.tbl`): fixed layout, ellipsis cells with hover tooltip, sticky header inside `.scroll`, 12px cells, hover row tint `rgba(255,255,255,.04)`, sortable headers via `.sort-th`.
- **Badge**: pill, 10px/700 uppercase; severity variants `b-red/b-amber/b-green/b-teal/b-gray` (tint bg + tinted border + light text).
- **Buttons**: primary = accent bg (`--teal`) with dark text (send, lookup); secondary = dark bg with accent border/text (refresh); ghost = borderless gray (close, collapse, copy). Chips and row-limit buttons toggle with `.on` (surface-3 bg + accent text/border).
- **Status dots** (`.s-*`): green online, amber degraded, gray offline (smaller), red square error, accent pending.
- **Nav**: fixed 224px sidebar; active item = white-tint bg, accent text, 2px left rule.
- **Panels**: chat slides in from right (340px, transform .22s); drill-down panels expand inside cards (fadeIn .15s) with denser table rows; account switcher pops above the sidebar footer.

## Layout

- Fixed sidebar (224px) + fluid main (`padding 0 20px 40px`); chat open adds 340px right padding (none ≤760px).
- Grids: `.bento` `repeat(auto-fill, minmax(300px,1fr))` gap 16 with `b-wide` (span 2) and `b-full`; `.g2/.g3/.g4` auto-fill variants gap 14; spans collapse ≤900px.
- Spacing rhythm: 14/16/18/20/24 px (`.mb14/.mb20/.mb24`); table cell padding 7–8px (4px in drill-downs).
- Sticky topbar with page title + refresh/chat controls.

## Motion

- Micro-transitions .12–.15s; chat slide .22s `cubic-bezier(.4,0,.2,1)`; gauge fill .8s ease.
- Loops: `.spin` (refresh/spinner), `.pulse` 2.2s, `.t-dot` thinking bounce.
- Motion encodes state only (loading, thinking, live). No entrance choreography.
