#!/usr/bin/env bash

if [ -z $1 ]; then
    echo "Port is not defined"; exit 1;
fi

echo exit | `which telnet` localhost $1 | grep 'Connected to localhost'