# config.nu
#
# Installed by:
# version = "0.115.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

# Отключить приветственное сообщение
$env.config.show_banner = false

# Редактор для конфига
$env.EDITOR = 'nvim'

# PATH
$env.path ++= ["/home/mitai/.pub-cache/bin/"]
$env.path ++= ["/home/mitai/Soft/flutter/bin"]
$env.ANDROID_HOME = '/home/mitai/Soft/android_sdk'
$env.path ++= ["/home/mitai/Soft/android_sdk/emulator"]
$env.path ++= ["/home/mitai/Soft/android_sdk//platform-tools"]
$env.path ++= ["/home/mitai/Soft/android_sdk/cmdline-tools/latest/bin"]
# Google-Chrome Browser
$env.CHROME_EXECUTABLE = '/opt/google/chrome/google-chrome'

#alias webcam = scrcpy --select-usb --video-source=camera --camera-facing=back --camera-size=1280x720 --orientation=flip0 --v4l2-sink=/dev/video0 --no-audio --no-window

