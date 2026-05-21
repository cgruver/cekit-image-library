#!/usr/bin/env bash
set -e
npm install -g @kilocode/cli
mkdir -p ${HOME}/.config/kilo
ln -s /projects/.globalconfig/kilo.jsonc ${HOME}/.config/kilo/kilo.jsonc
