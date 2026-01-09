#!/usr/bin/env bash
 grim -g "$(slurp)" - | swappy -f - -o ~/Documents/Screenshots/$(date +'%F-%T.png')
