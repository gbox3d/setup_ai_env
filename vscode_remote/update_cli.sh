#!/bin/bash
set -e
TMPDIR=$(mktemp -d)
curl -fL 'https://update.code.visualstudio.com/latest/cli-linux-x64/stable' -o "$TMPDIR/vscode_cli.tar.gz"
tar -xzf "$TMPDIR/vscode_cli.tar.gz" -C "$TMPDIR"
sudo mv /usr/local/bin/code /usr/local/bin/code.old
sudo mv "$TMPDIR/code" /usr/local/bin/code
sudo chmod +x /usr/local/bin/code
systemctl --user restart code-tunnel.service
echo "✅ VSCode CLI updated: $(/usr/local/bin/code --version)"
