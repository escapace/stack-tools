#!/usr/bin/env bash
# shellcheck disable=SC2016,SC1090,SC2034

source "${MANAGE_DIRECTORY}/bin/manage"

MANAGE_UNDERSCORE \
    docker/downloadDumbInit\
    docker/downloadGosu

MANAGE_BOOTSTRAP

expectSuccess 'download dumb-init' '
    DUMB_INIT_TARGET="$(pwd)/dumb-init"
    _ downloadDumbInit &&
    [ -f "$(pwd)/dumb-init" ]
'

expectSuccess 'download gosu' '
    GOSU_TARGET="$(pwd)/gosu"
    _ downloadGosu &&
    [ -f "$(pwd)/gosu" ]
'

finish
