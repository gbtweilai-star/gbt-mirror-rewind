#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_mirror_rewind info
PYTHONPATH=src python -m gbt_mirror_rewind check --payload '{}'
PYTHONPATH=src python -m gbt_mirror_rewind run   --payload '{}'
