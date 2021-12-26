#!/bin/sh
set -eu pipefail

./xdotool.sh search "Mozilla Firefox" windowactivate --sync key --clearmodifiers ctrl+l