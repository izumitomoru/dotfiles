return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = { --[[ things you want to change go here]]
  },

  config = function()
    require('toggleterm').setup {
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      persist_mode = false,
      direction = 'float', -- | 'horizontal' | 'tab' | 'float', -- | horizontal | tab | float
      shell = vim.o.shell,
      auto_scroll = true,
      float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = 'curved', --'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        ---- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
        --width = <value>,
        --height = <value>,
        --row = <value>,
        --col = <value>,
        --winblend = 3,
        --zindex = <value>,
        title_pos = 'center', --'left' | 'center' | 'right', position of the title of the floating window
      },
    }
  end,
}
