# Approved Tokens — v4 Editorial Broadsheet
# Source: .mockups/design-noc-nuke/v4.html (user pick, judge winner 36/40)

## Color Tokens

### Dark (default)
```
--bg:       #1a1208   /* page background — dark warm linen */
--surface:  #221a0a   /* raised surface */
--text:     #f5e6c8   /* body text */
--dim:      #a08060   /* muted / secondary text */
--border:   #3a2a15   /* borders, rules */
--accent:   #c8a050   /* gold ink — identity color only */
--crit:     #e53935   /* critical / down / alert */
--warn:     #f59e0b   /* warning / degraded */
--ok:       #43a047   /* healthy / online */
```

### Light
```
--bg:       #f5f0e8
--surface:  #faf7f0
--text:     #1a1208
--dim:      #6b5a3a
--border:   #d4c4a0
--accent:   #7a5c10
--crit:     #c62828
--warn:     #b45309
--ok:       #2e7d32
```

## Typography

| Role | Family | Size | Weight | Extra |
|------|--------|------|--------|-------|
| Masthead | Georgia, "Times New Roman", serif | clamp(40px,7vw,80px) | 700 | letter-spacing -0.025em |
| Section headline | Georgia, serif | clamp(22px,3vw,32px) | 700 | |
| Stat numbers | Georgia, serif | 38px | 700 | line-height 1 |
| Alert number | Georgia, serif | 72px | 700 | color: --crit |
| Table data numbers | "Courier New", monospace | 22px | 700 | |
| Labels / eyebrows | system-ui, sans-serif | 9–10px | 400 | font-variant:small-caps, letter-spacing 0.14–0.22em |
| Body / meta | system-ui, sans-serif | 11–13px | 400 | |

## Layout

- **Structure:** Two-column broadsheet (grid 1fr 1fr, gap 48px)
- **Column rule:** ::after pseudo on broadsheet container — 1px center line
- **Masthead:** Centered, Georgia serif; dateline bar with 3px double --accent bottom border
- **Stat ledger:** border-top 2px solid --text + border-left on container + border-right per cell — FT ruled ledger, NOT boxed card
- **Alert news box:** border 2px solid --crit, 72px number left, body right
- **DHCP table:** border-collapse:collapse, 1px borders, header row 2px solid --text
- **Progress bars:** height 6px, border-radius 0, fill color --crit
- **CRIT label:** italic text --crit only — no badge, no pill, no background

## Hard Rules
- border-radius: 0 everywhere
- No box-shadow
- No blue/teal/purple
- No rounded pill badges
- --accent (gold) on masthead dateline + toggle button only
- Status colors semantic only
- Theme: data-theme on html element
