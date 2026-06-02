#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PYTHON_BIN="${PYTHON_BIN:-python3}"
LOCK_FILE="${LOCK_FILE:-/tmp/project_music_post_scan.lock}"

cd "$ROOT_DIR"

if command -v flock >/dev/null 2>&1; then
 exec 9>"$LOCK_FILE"
 flock -n 9 || exit 0
fi

"$PYTHON_BIN" Instrument/ContentAgent/music_post_ingest.py --scan
