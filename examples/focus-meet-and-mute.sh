#!/bin/sh
set -eu pipefail

sh xdotool.sh search --name '^Meet - .+$' windowactivate --sync key ctrl+d