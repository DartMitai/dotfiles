# env.nu
#
# Installed by:

# version = "0.115.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.
$env.COLORTERM = "truecolor"
# Отключить приветственное сообщение
$env.config.show_banner = false

# Отключить правую подсказку
$env.PROMPT_COMMAND_RIGHT = ""

# Редактор для конфига
$env.EDITOR = 'nvim'

# PATH
$env.path ++= ["/home/mitai/.pub-cache/bin/"]
$env.path ++= ["/home/mitai/Soft/flutter/bin"]
$env.path ++= ["/home/mitai/Soft/android_sdk/emulator"]
$env.path ++= ["/home/mitai/Soft/android_sdk//platform-tools"]
$env.path ++= ["/home/mitai/Soft/android_sdk/cmdline-tools/latest/bin"]

# Android SDK
$env.ANDROID_HOME = '/home/mitai/Soft/android_sdk'

# Google-Chrome Browser
$env.CHROME_EXECUTABLE = '/opt/google/chrome/google-chrome'

# Cargo
$env.path ++= ["/home/mitai/.cargo/bin"]

#alias webcam = scrcpy --select-usb --video-source=camera --camera-facing=back --camera-size=1280x720 --orientation=flip0 --v4l2-sink=/dev/video0 --no-audio --no-window

# Cargo Linker
#let-env RUSTFLAGS = "-C linker=gcc"

#Ssh-key
keychain --eval --quiet github | lines | where not ($it | is-empty) | parse "{k}={v};{_}" | transpose --header-row -d | str trim -c "\"" | load-env
