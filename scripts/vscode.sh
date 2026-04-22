#!/usr/bin/env bash

set -e

echo "Instalando extensões do VSCode..."

if ! command -v code &> /dev/null; then
  echo "VSCode não está instalado"
  exit 1
fi

while read -r extension; do
  if [ -n "$extension" ]; then
    echo "Instalando $extension"
    code --install-extension "$extension" --force
  fi
done < "$(dirname "$0")/../vscode/extensions.txt"

echo "Extensões instaladas!"

