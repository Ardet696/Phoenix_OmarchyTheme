#!/bin/bash
# Phoenix theme — one-time setup
# Run this once after installing the Phoenix theme:
#   bash ~/.config/omarchy/themes/phoenix/setup.sh

set -e

THEME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOOKS_DIR="$HOME/.config/omarchy/hooks"
HOOK_TARGET="$HOOKS_DIR/theme-set"
PHOENIX_MARKER="# >>> phoenix-theme-set-hook <<<"

mkdir -p "$HOOKS_DIR"

if [ ! -f "$HOOK_TARGET" ]; then
    # No existing hook — create one that calls our handler
    cat > "$HOOK_TARGET" << EOF
#!/bin/bash
$PHOENIX_MARKER
bash "$THEME_DIR/hooks/theme-set" "\$1"
$PHOENIX_MARKER
EOF
    chmod +x "$HOOK_TARGET"
    echo "Installed theme-set hook."
elif ! grep -qF "$PHOENIX_MARKER" "$HOOK_TARGET"; then
    # Existing hook without our block — append it
    cat >> "$HOOK_TARGET" << EOF

$PHOENIX_MARKER
bash "$THEME_DIR/hooks/theme-set" "\$1"
$PHOENIX_MARKER
EOF
    echo "Added Phoenix handler to existing theme-set hook."
else
    echo "Phoenix handler already present in theme-set hook."
fi

# Apply Claude settings immediately (don't wait for next theme-set)
bash "$THEME_DIR/hooks/theme-set" "phoenix"
echo "Applied Claude Code settings for Phoenix."
echo ""
echo "Done. Restart Claude Code if it is currently open."
