#!/bin/sh

# Ждём, пока Hyprland создаст свой инстанс (до 60 секунд)
i=0
sig=""
while [ "$i" -lt 120 ]; do
    sig="$(ls "$XDG_RUNTIME_DIR/hypr" 2>/dev/null | head -n 1)"
    if [ -n "$sig" ]; then break; fi
    sleep 0.5
    i=$((i + 1))
done
if [ -z "$sig" ]; then
    exit 1
fi
export HYPRLAND_INSTANCE_SIGNATURE="$sig"

# Если WAYLAND_DISPLAY не задан — находим сокет композитора сами
if [ -z "$WAYLAND_DISPLAY" ]; then
    wd="$(ls "$XDG_RUNTIME_DIR" 2>/dev/null | grep -E '^wayland-[0-9]+$' | head -n 1)"
    if [ -n "$wd" ]; then
        export WAYLAND_DISPLAY="$wd"
    fi
fi

# Перезапускаем демон с нужными параметрами напрямую
pkill -x hyprsunset 2>/dev/null
sleep 0.5

case "$1" in
    dark)
        nohup hyprsunset -t 1800 -g 80 >/dev/null 2>&1 &
        ;;
    light)
        nohup hyprsunset -i >/dev/null 2>&1 &
        ;;
    *)
        exit 0
        ;;
esac
