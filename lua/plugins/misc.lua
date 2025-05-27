return {
  {
    -- text icons
    'echasnovski/mini.nvim',
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    opts = {},
  },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    -- #ff00ff
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  {
    'folke/persistence.nvim',
    event = 'BufReadPre', -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
      dir = vim.fn.stdpath 'state' .. '/sessions/', -- directory where session files are saved

      -- make all variables stored in session (hopefully)
      globals,
      --      options,
      --      localoptions,
      --      --buffers,
      --      tabpages,
      --      --terminal,
      --
      --      --blank,
      help,
      curdir, -- opens to current directory (duh)
      --      sesdir, -- opens to directory session file is in
      --      resize,
      --      winsize,

      -- minimum number of file buffers that need to be open to save
      -- Set to 0 to always save
      need = 1,
      branch = true, -- use git branch to save session
    },
    --config = function()
    --  require('persistence').setup {
    --    globals = true,
    --    options = true,
    --  }
    --end,
  },
  --{ 'akinsho/toggleterm.nvim', version = '*', config = true },
  -- or
  {
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
  },
}
