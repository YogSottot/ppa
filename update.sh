#!/usr/bin/env bash

set -e
set -v

reprepro includedeb bookworm *debian12*.deb
reprepro includedeb bookworm *noble*.deb
