#!/bin/bash
 
USER_HOME=$(eval echo ~${SUDO_USER})
 
while read -r color r g b; do
    echo "[$color]"
    echo "Bold=true"
    echo "Color=$r,$g,$b" 
    echo ""
done < "${USER_HOME}/.config/crt_colors" > /usr/lib/qt/qml/QMLTermWidget/color-schemes/cool-retro-term.colorscheme
