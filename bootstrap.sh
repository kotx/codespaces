#!/bin/bash

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USER
curl -fsSL https://sh.rustup.rs | bash
