#!/bin/bash

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USER
curl -fsSL https://sh.rustup.rs | bash -s -- -y
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.2
curl -sfL https://raw.githubusercontent.com/ducaale/xh/master/install.sh | sh
curl -L https://fly.io/install.sh | sh

cat <<EOF
export FLYCTL_INSTALL="/home/codespace/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
EOF >> $HOME/.bashrc
