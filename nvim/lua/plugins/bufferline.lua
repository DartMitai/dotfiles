require('bufferline').setup({
    options = {
        color_icons = true,
        buffer_close_icon = "",
        close_command = "bdelete! %d",
        close_icon = "",
        indicator = {
            icon = '▎',
            style = 'icon', -- | 'underline' | 'none'
        },
        left_trunc_marker = "",
        modified_icon = "●",
        offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },
        left_mouse_command = "bdelete! %d",
        right_trunc_marker = "",
        show_close_icon = true,
        show_tab_indicators = true,
    },
})
