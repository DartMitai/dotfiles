#!/bin/sh
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

for d in "$XDG_RUNTIME_DIR/hypr"/*/ /tmp/hypr/$USER/*/; do
    [ -S "$d/.socket.sock" ] && {
        export HYPRLAND_INSTANCE_SIGNATURE="$(basename "$d")"
        break
    }
done

case "$1" in
    dark)
        hyprctl hyprsunset temperature 2300
        hyprctl hyprsunset gamma 80
        ;;
    light)
        hyprctl hyprsunset identity
        hyprctl hyprsunset gamma 100
        ;;
esac

