return {
  'loctvl842/monokai-pro.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('monokai-pro').setup {
      transparent_background = true,
      terminal_colors = true,
      background_clear = {
        'float_win',
        'toggleterm',
        'telescope',
        'which-key',
        'renamer',
        'notify',
        'nvim-tree',
        'neo-tree',
        'bufferline', -- better used if background of `neo-tree` or `nvim-tree` is cleared
        'lualine', -- idk if this works
      },
      -- test comment for thing

      plugins = {
        bufferline = {
          underline_selected = false,
          underline_visible = false,
        },
        indent_blankline = {
          context_highlight = 'pro', -- default | pro
          context_start_underline = false,
        },
      },
    }
    -- toggle transparency test
    -- local bg_transparent = true

    -- local toggle_transparency = function()
    --   bg_transparent = not bg_transparent
    --   vim.g.transparent_background = bg_transparent
    --   vim.cmd [[colorscheme monokai-pro]]
    -- end

    --vim.keymap.set('n', '<leader>Bg', toggle_transparency(), { desc = 'toggle transparency' }, opts)
  end,
}
