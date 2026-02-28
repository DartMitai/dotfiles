# config.nu
#
# Installed by:
# version = "0.107.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
# config nu
#

if $nu.is-login and $env.DISPLAY? == null and $env.XDG_VTNR? == "1" {
  exec start-hyprland
}

$env.config.buffer_editor = "nvim"

# Убрать приветствие
$env.config.show_banner = false

$env.path ++= ["/usr/bin/bash"]

$env.path ++= ["/home/mitai/dev/flutter/bin"]

$env.ANDROID_HOME = '/home/mitai/dev/Android/sdk'
$env.CHROME_EXECUTABLE = '/opt/google/chrome/google-chrome'

$env.SSH_AUTH_SOCK = $"($env.XDG_RUNTIME_DIR)/ssh-agent.socket"
