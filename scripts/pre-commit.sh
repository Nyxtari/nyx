#!/usr/bin/env bash

HOOK_PATH=".git/hooks/pre-commit"

cat >"$HOOK_PATH" <<'EOF'
#!/usr/bin/env bash

if [ ! -f ".git/hooks/commit-msg" ]; then
  echo "Error: commit-msg hook is missing! Please run 'make setup' to install it."
  exit 1
fi
EOF

chmod +x "$HOOK_PATH"
echo "Installed pre-commit hook at $HOOK_PATH"
