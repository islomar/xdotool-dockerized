#!/bin/sh
set -eu pipefail

sh xdotool.sh search "Mozilla Firefox" windowactivate --sync key --clearmodifiers ctrl+l