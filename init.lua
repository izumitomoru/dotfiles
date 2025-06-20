require 'core.options'
require 'core.keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- colors
vim.opt.termguicolors = true

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- install plugins
require('lazy').setup {
  -- main utilities
  require 'plugins.smartsplits',
  require 'plugins.persistence',
  require 'plugins.bufferline',
  require 'plugins.nvimtree',
  require 'plugins.toggleterm',
  require 'plugins.tmux',
  require 'plugins.lsp',
  require 'plugins.autoformat',
  require 'plugins.lazygit',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.debugging',

  -- misc
  require 'plugins.autopairs',
  require 'plugins.misc',
  require 'plugins.monokai-pro',
  require 'plugins.transparent',
  require 'plugins.which-key',
  require 'plugins.lualine',
  require 'plugins.autocomplete',
  require 'plugins.indent-blankline',
  require 'plugins.gitsigns',
}

-- theme
vim.cmd [[colorscheme monokai-pro]]
