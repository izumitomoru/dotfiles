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
  require 'plugins.nvimtree',
  require 'plugins.colortheme',
  require 'plugins.bufferline',
  require 'plugins.which-key',
  require 'plugins.lualine',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.autocomplete',
  require 'plugins.autoformat',
  require 'plugins.indent-blankline',
  require 'plugins.misc',
  require 'plugins.alpha',
  require 'plugins.debugging',
  require 'plugins.lazygit',
  require 'plugins.gitsigns',
}

-- theme
vim.cmd [[colorscheme monokai-pro]]
