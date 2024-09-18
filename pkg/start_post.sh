#!/usr/bin/env bash

echo $PWD

(
    set -exu

    echo $PWD

    source ./lib.sh

    echo "configuring iptables..."
    start_iptables

    echo "configuring ip routes..."
    start_iproute2

    echo "configuration completed"
)