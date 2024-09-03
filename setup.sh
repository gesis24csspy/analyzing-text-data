#!/bin/sh
set -e

curl -fsSL https://starship.rs/install.sh | sh -s -- -y
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc

[ -n "$ZSH_VERSION" ] && source ~/.zshrc
[ -n "$BASH_VERSION" ] && source ~/.bashrc

# poetry install
poetry run python -m spacy download en_core_web_sm