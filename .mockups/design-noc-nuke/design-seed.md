# Design Seed — Infoblox NOC Nuke

## Source
DESIGN.md north star + CSS token ban list extraction. BOLD MODE.

## North Star (from DESIGN.md)
"Bloomberg terminal density, Grafana reliability, zero consumer softness."
Precise · Operational · Trustworthy. Primary mode: dark. Light is a supported override.

## BAN LIST (current implementation tokens — never reuse)
- Background: #0d1117, #1c2128, #2d333b (GitHub/Apple dark clone)
- Accent: #2997ff, #0071e3 (Apple blue)
- Radius: >8px everywhere (currently 12px on all cards)
- Pattern: sidebar nav + icon rows (current primary chrome)
- Pattern: badge/pill stat rows as primary data viz
- Pattern: card grid with drop shadows as default layout
- Pattern: Tailwind/shadcn/MUI starter DNA
- Pattern: left-edge accent stripe on cards

## Approved Semantic Colors (keep signal meanings)
- Critical/Down: red family (~#ef4444 or hotter)
- Warning: amber family (~#f59e0b)
- Healthy/Online: green family (~#10b981)

## Data Structure to Preserve (layout agnostic)
1. Stat row: HOSTS (52), SUBNETS (20), ZONES (15), ALERTS (13 — critical)
2. DHCP Pools table: CIDR | usage bar | % | CRIT badge
3. Host Status: ONLINE (27) | WARN (10) | DOWN (10)

## Palette Assignments (one per variant)
A. Pure monochrome: #0a0a0a bg, #f0f0f0 text
B. Warm off-white accent (#d6d2cb) on near-black
C. Amber phosphor: #0d0800 bg, #ffb700 text
D. Slate + lime: #0f1117 bg, #a3e635 accent
E. Graphite + white: #1a1a1a bg, #ffffff text
F. Navy + gold: #0a0f1e bg, #d4a017 accent
G. Raw white paper: #fafafa bg, #111 text
H. Crimson + black: #0c0000 bg, status red dominant
I. Warm linen: #f5f0e8 bg, #1a1208 text
J. Deep forest: #080e08 bg, #4ade80 text

## Type Rules
- Monospace for all data values, CIDR, percentages
- ≤3 font sizes per component
- Labels: ALL CAPS at small size, never body weight

## Paradigm Assignments
v1: Bloomberg data terminal (Palette A)
v2: Pure Swiss modernist (Palette E)
v3: Amber phosphor retro CRT (Palette C)
v4: Editorial newspaper broadsheet (Palette I)
v5: Brutalist raw grid (Palette D)
v6: Split-pane reference (Palette B)
v7: Command palette / terminal prompt (Palette J)
v8: Navy + gold command interface (Palette F)
v9 WILD: Radial gauge / circular (Palette A)
v10 WILD: Military HUD with corner brackets (Palette H)
