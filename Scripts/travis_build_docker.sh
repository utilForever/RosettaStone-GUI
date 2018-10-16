#!/usr/bin/env bash

set -e

if [ $# -eq 0 ]
  then
    docker build -t utilforever/hearthstoneppgui .
    docker run utilforever/hearthstoneppgui
else
    docker build -f $1 -t utilforever/hearthstoneppgui:$2 .
    docker run utilforever/hearthstoneppgui:$2
fi