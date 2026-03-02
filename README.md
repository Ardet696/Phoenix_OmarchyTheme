# Phoenix

```
A fiery dark theme for [Omarchy](https://omarchy.org/) — deep navy depths, crimson embers, amber flame, and gold light. *Unica semper avis.*

## Install

```bash
omarchy-theme-install https://github.com/ardet/omarchy-phoenix-theme.git
```

Or open the Omarchy Menu (`Super + Alt + Space`) → **Install > Style > Theme** and paste the URL above.

---

## Color Palette

Phoenix is a **light-mode terminal on a dark desktop** — the window and terminal surface uses a warm cream base (Flexoki Light), while the desktop and accent colors are drawn from fire and ember tones.

| Name | Hex | Role |
|------|-----|------|
| Cream | `#FFFCF0` | Terminal/window background, inactive border |
| Near-black | `#100F0F` | Foreground text, cursor |
| Phoenix Red | `#EC482A` | Primary accent, active tab, lock screen ring |
| Dark Crimson | `#771E29` | Ember — ANSI color2/4/10/12 |
| Amber | `#FF9549` | Flame — active window border, ANSI color6/9/13, lock screen check |
| Gold | `#FDC95F` | ANSI color3/11/14, selections |
| Sky | `#6094BA` | ANSI color5/13 |
| Warm gray | `#6F6E69` | ANSI color8 (bright black / dim text) |
| Selection | `#CECDC3` | Text selection background |

### ANSI Terminal Colors

| Slot | Hex | Use |
|------|-----|-----|
| color0 (black) | `#100F0F` | Near-black |
| color1 (red) | `#EC482A` | Phoenix Red |
| color2 (green) | `#771E29` | Dark Crimson |
| color3 (yellow) | `#FDC95F` | Gold |
| color4 (blue) | `#771E29` | Dark Crimson |
| color5 (magenta) | `#6094BA` | Sky |
| color6 (cyan) | `#FF9549` | Amber |
| color7 (white) | `#FFFCF0` | Cream |
| color8 (bright black) | `#6F6E69` | Warm gray |
| color9 (bright red) | `#FF9549` | Amber |
| color10 (bright green) | `#771E29` | Dark Crimson |
| color11 (bright yellow) | `#FDC95F` | Gold |
| color12 (bright blue) | `#771E29` | Dark Crimson |
| color13 (bright magenta) | `#FF9549` | Amber |
| color14 (bright cyan) | `#FDC95F` | Gold |
| color15 (bright white) | `#FFFCF0` | Cream |

---

## What the Theme Changes

### Window Manager (Hyprland)

- **Active window border** — Amber `#FF9549`, 2px
- **Inactive window border** — Cream `#FFFCF0` (matches the window background, making it invisible — focus stays on the active window)
- **Window rounding** — 14px
- **Blur** — enabled (size 5, 3 passes, vibrancy 0.12)
- **Active opacity** — 0.90
- **Inactive opacity** — 0.88
- **Gaps** — 2px inner, 4px outer

### Lock Screen (Hyprlock)

- Surface: warm cream `#FFFCF0`
- Input ring: Phoenix Red `#EC482A`
- Correct password flash: Amber `#FF9549`

### Applications

| App | What changes |
|-----|-------------|
| **GTK** | Full color override with Phoenix palette |
| **Neovim / LazyVim** | Phoenix colorscheme via `neovim.lua` |
| **btop** | Phoenix gradient for CPU, memory, temp graphs |
| **Cava** | Gradient from Dark Crimson → Amber → Sky |
| **Superfile** | Accent, error, and cancel colors |
| **Walker** | Custom CSS with Phoenix colors |
| **Waybar** | Styled to match the palette |
| **Mako** | Notification colors |
| **SwayOSD** | Volume/brightness overlay |
| **Vencord (Discord)** | Theme via `vencord.theme.css` |
| **Warp** | Terminal ANSI palette |
| **Chromium** | Browser theme |
| **Fastfetch** | System info display colors |

---

## Claude Code Setup

Phoenix uses a **light-mode terminal surface** with custom ANSI colors. Without adjustment, Claude Code's built-in diff renderer will produce near-invisible diffs (dark red text on a dark red background).

The `setup.sh` script fixes this automatically by patching two Claude Code settings:

| File | Change | Why |
|------|--------|-----|
| `~/.claude/settings.json` | `"syntaxHighlightingDisabled": true` | Stops Claude Code from overriding terminal ANSI colors with its own palette |
| `~/.claude.json` | `"theme": "light"` | Switches Claude Code's diff renderer to light mode — red `−` lines get a light background with dark text |

### Run once after installing

```bash
bash ~/.config/omarchy/themes/phoenix/setup.sh
```

This installs an Omarchy `theme-set` hook so the settings apply and revert automatically whenever you switch themes. **Restart Claude Code after running.**

### What the hook does

- When you switch **to** Phoenix → applies both settings
- When you switch **away** from Phoenix → reverts both settings (your other themes are unaffected)

---

## Motto

> *unica semper avis* — always the one-of-a-kind bird
> *ardet nec consumitor* — it burns but is not consumed
