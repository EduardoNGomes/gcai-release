#!/usr/bin/env bash
BIN=gcai-macos-arm
INSTALL_PATH=/usr/local/bin/gcai

echo "Instalando $BIN em $INSTALL_PATH..."
sudo cp "$BIN" "$INSTALL_PATH"
sudo chmod 755 "$INSTALL_PATH"
echo "✅ gcai instalado com sucesso (binário macOS)!"
