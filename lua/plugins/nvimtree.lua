--local function my_on_attach(bufnr)
--  local api = require 'nvim-tree.api'
--
--  local function opts(desc)
--    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
--  end
--
--  -- default mappings
--  --api.config.mappings.default_on_attach(bufnr)
-- -- custom mappings
--  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts 'Up')
--  vim.keymap.set('n', '?', api.tree.toggle_help, opts 'Help')
--  --vim.keymap.set('n', '\\', ':NvimTreeToggle', { desc = 'Toggle nvim-tree' })
--  --vim.keymap.set('n', '<leader>p', ':NvimTreetoggle<CR>', opts 'test')
--
--  vim.keymap.set('n', '<leader>p', api.tree.expand_all(), opts 'TEST')
--  --vim.cmd [[nnoremap \ :NvimTreeToggle<cr>]]
--end

return {
  -- Install
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'kyazdani42/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      auto_reload_on_write = true,
      reload_on_bufenter = true,
      on_attach = 'default',
      hijack_cursor = true,
      sort = {
        sorter = 'name',
      },
      view = {
        --side = 'right',
        width = 34,
        preserve_window_proportions = false,
      },
      actions = {
        open_file = {
          resize_window = false,
        },
      },
      renderer = {
        --root_folder_label = ':p:h', -- default: ":~:s?$?/..?"
        full_name = false,
        group_empty = true,
        indent_width = 1,
        indent_markers = {
          enable = true,
          icons = {
            corner = '│',
            edge = '│',
            item = '│',
            bottom = '│',
            none = '│',
          },
        },

        decorators = { 'Git', 'Open', 'Hidden', 'Modified', 'Bookmark', 'Diagnostics', 'Copied', 'Cut' },
        icons = {

          web_devicons = {
            file = {
              enable = true,
              color = true,
            },
            --folder = {
            --  enable = true,
            --  color = true,
            --},
          },

          padding = {
            icon = ' ',
            folder_arrow = ' ',
          },

          -- show the icons
          show = {
            file = true,
            folder = true,
            modified = true,
            bookmarks = true,
            folder_arrow = false,
            git = true,
            hidden = false,
            diagnostics = true,
          },
          --glyphs = {
          --  default = '',
          --  symlink = '',
          --  bookmark = '󰆤',
          --  modified = '●',
          --  hidden = '󰜌',
          --  folder = {
          --    arrow_closed = '',
          --    arrow_open = '',
          --    default = '',
          --    open = '',
          --    empty = '',
          --    empty_open = '',
          --    symlink = '',
          --    symlink_open = '',
          --  },
          --},
        },
      },
      filters = {
        enable = false,
        git_ignored = true,
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        no_bookmark = false,
        custom = {},
        exclude = {},
      },
      --require('nvim-tree').setup {
      ---
      --on_attach = my_on_attach,
      ---
      --},
    }
  end,
  --end,
}
