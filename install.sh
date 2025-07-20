#!/bin/bash

# Detect if in a Git repo
if [ ! -d ".git" ]; then
  echo "❌ Not a Git repository. Run this inside a Git repo."
  exit 1
fi

HOOK_PATH=".git/hooks/commit-msg"

# Copy hook script
cp bard-hook.sh "$HOOK_PATH"
chmod +x "$HOOK_PATH"

echo "✅ Bard commit-msg hook installed successfully!"

