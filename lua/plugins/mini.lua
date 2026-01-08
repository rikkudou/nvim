return{ 
  'nvim-mini/mini.nvim', 
  version = false,
  config = function()
    require('mini.completion').setup()
    require('mini.files').setup({
      options = {
        permanent_delete = false,
      },
      windows = {
        -- Maximum number of windows to show side by side
        max_number = math.huge,
        -- Whether to show preview of file/directory under cursor
        preview = false,
        -- Width of focused window
        width_focus = 50,
        -- Width of non-focused window
        width_nofocus = 15,
        -- Width of preview window
        width_preview = 25,
      },
    })
  end,
}
