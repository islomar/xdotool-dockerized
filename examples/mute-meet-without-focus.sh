#!/bin/sh
set -eu pipefail

CURRENT_WINDOW="xdotool getactivewindow"

sh xdotool.sh search --name '^Meet - .+$' windowactivate --sync key --clearmodifiers ctrl+d

xdotool windowactivate $CURRENT_WINDOW