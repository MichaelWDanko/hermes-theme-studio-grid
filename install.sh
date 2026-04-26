#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
theme_dir="${HERMES_HOME:-$HOME/.hermes}/dashboard-themes"

mkdir -p "$theme_dir"
cp "$repo_dir/themes/studio-grid.yaml" "$theme_dir/"
cp "$repo_dir/themes/studio-grid-dark.yaml" "$theme_dir/"

cat <<MSG
Installed Studio Grid themes to:
  $theme_dir

Open or refresh the Hermes dashboard and select either:
  studio-grid
  studio-grid-dark

To activate manually, set dashboard.theme in your Hermes config.
MSG
