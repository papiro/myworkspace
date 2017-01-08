#!/bin/sh

# Standard first update
echo "freebsd-update fetch"
freebsd-update fetch
echo "freebsd-update install"
freebsd-update install

