#!/usr/bin/env bash
set -e
npm install -g @kilocode/cli

cat << EOF >> /workspace-init.sh
if [ ! -f ${HOME}/.globalconfig/kilo.jsonc ]
then
  mkdir -p ${HOME}/.config/kilo
  ln -s ${HOME}/.globalconfig/kilo.jsonc ${HOME}/.config/kilo/kilo.jsonc
fi

EOF
