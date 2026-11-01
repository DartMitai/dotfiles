#!/bin/sh
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

for d in "$XDG_RUNTIME_DIR/hypr"/*/ /tmp/hypr/$USER/*/; do
    [ -S "$d/.socket.sock" ] && {
        export HYPRLAND_INSTANCE_SIGNATURE="$(basename "$d")"
        break
    }
done

case "$1" in
    dark)  hyprctl setcursor oblique-cursor-dark 24;;
    light) hyprctl setcursor oblique-cursor-light 24;;
esac
