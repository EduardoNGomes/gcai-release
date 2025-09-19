#!/usr/bin/env bash
BIN=gcai
INSTALL_PATH=/usr/local/bin/$BIN

if [ ! -f "$INSTALL_PATH" ]; then
    echo "Instalando $BIN em /usr/local/bin..."
    sudo cp "$BIN" "$INSTALL_PATH"
    sudo chmod 755 "$INSTALL_PATH"
else
	echo "$BIN already exists in /usr/local/bin, updating..."
    sudo cp "$BIN" "$INSTALL_PATH"
    sudo chmod 755 "$INSTALL_PATH"
fi
