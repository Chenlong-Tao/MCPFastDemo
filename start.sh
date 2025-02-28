#!/bin/sh
# Check if 'mcp' is importable (installed)
if ! python -c "import mcp" 2>/dev/null; then
    # Install if not installed
    pip install "mcp[cli]"
fi
mcp dev server.py