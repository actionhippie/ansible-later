#!/usr/bin/env bash
set -eo pipefail

if [ $# -ne 1 ]; then
    echo "Usage: ${0} VERSION"
    exit 1
fi

VERSION=${1}
shift

ROOT=$(cd $(dirname $0)/..; pwd)

sed \
    -i \
    "s|'docker://ghcr.io/actionhippie/ansible-later:.*'|'docker://ghcr.io/actionhippie/ansible-later:v${VERSION}'|" \
    ${ROOT}/action.yml
