#!/usr/bin/env bash
set -e
npm install -g @kilocode/cli
mkdir -p ${HOME}/.config/kilo
chown -R 1000:1000 ${HOME}/.config
ln -s /projects/.globalconfig/kilo.jsonc /projects/.config/kilo/kilo.jsonc
