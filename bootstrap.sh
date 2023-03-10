#!/bin/bash

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USER
curl -fsSL https://sh.rustup.rs | bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.2
