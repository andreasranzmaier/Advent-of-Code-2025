#!/usr/bin/env bash
set -euo pipefail

VENV_DIR="/home/vscode/.venv"
echo "== Setup: ensure home venv at $VENV_DIR =="

# Create the venv if missing
if [ ! -x "$VENV_DIR/bin/python" ]; then
  python -m venv "$VENV_DIR"
fi

# Basic tooling in the venv (no project deps installed here)
"$VENV_DIR/bin/python" -m pip install -U pip wheel setuptools

echo "== Setup complete =="