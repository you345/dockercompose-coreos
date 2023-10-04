#!/bin/bash

mkdir ~/.bashrc.d
touch ~/.bashrc.d/docker-compose.rc

cat <<'EOF' > ~/.bashrc.d/docker-compose.rc
alias docker-compose='docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:/$PWD" \
    -w="/$PWD" \
    docker/compose:1.25.4'
EOF

source ~/.bashrc.d/docker-compose.rc

docker pull docker/compose:1.25.4
