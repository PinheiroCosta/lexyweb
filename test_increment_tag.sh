#!/bin/bash
set -e

# Buscar última tag que siga o padrão vX.Y.Z
latest_tag=$(git tag -l "v*.*.*" --sort=-v:refname | head -n 1)

if [ -z "$latest_tag" ]; then
  echo "Nenhuma tag encontrada, iniciando em v0.0.1"
  new_tag="v0.0.1"
else
  # Extrair major, minor e patch
  IFS='.' read -r major minor patch <<< "${latest_tag#v}"
  echo "Última tag: $latest_tag"
  echo "Major: $major, Minor: $minor, Patch: $patch"

  new_patch=$((patch + 1))
  new_tag="v${major}.${minor}.${new_patch}"
fi

echo "Nova tag gerada: $new_tag"
