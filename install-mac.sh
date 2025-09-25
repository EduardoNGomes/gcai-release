#!/usr/bin/env bash
BIN=gcai-macos
INSTALL_PATH=/usr/local/bin/gcai

echo "Instaling $BIN on $INSTALL_PATH..."
sudo cp "$BIN" "$INSTALL_PATH"
sudo chmod 755 "$INSTALL_PATH"
echo "✅ gcai installed successfully!"
