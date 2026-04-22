#!/usr/bin/env bash

set -e

echo "==> Aplicando dotfiles com stow..."
stow vscode

echo "==> Rodando setup do VSCode..."
./scripts/vscode.sh

echo "Tudo pronto 🚀"