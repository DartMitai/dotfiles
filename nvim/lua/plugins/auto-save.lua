require("auto-save").setup(
  {
    enabled = true,
    events = {"InsertLeave", "TextChanged"},
    write_all_buffers = false,
    on_off_commands = true,
    clean_command_line_interval = 0,
    debounce_delay = 135
  }
)
