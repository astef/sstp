#!/usr/bin/env bash

(
    set -exu

    source ./lib.sh

    echo "cleaning up ip routes..."
    stop_iproute2

    echo "cleaning up iptables..."
    stop_iptables

    echo "cleanup completed"
)