-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Options
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)
--vim.keymap.set('n', '<leader><C-q>', '<cmd> qa <CR>', { desc = 'Quit all' }, opts)
vim.keymap.set('n', 'QQ', '<cmd> qa <CR>', opts)

-- session loading with persistence
vim.keymap.set('n', '<leader>qs', function()
  require('persistence').load()
end, { desc = 'Load current dir session' })
vim.keymap.set('n', '<leader>qr', function()
  require('persistence').select()
end, { desc = 'Select session' })
vim.keymap.set('n', '<leader>ql', function()
  require('persistence').load { last = true }
end, { desc = 'Load last session' })
vim.keymap.set('n', '<leader>qd', function()
  require('persistence').stop()
end, { desc = 'Disable session saving' })

---- registers, etc.
-- copy and write to register a
vim.keymap.set('n', '<leader>a', '"a', opts)
vim.keymap.set('n', '<C-a>', '"ap', opts)
vim.keymap.set('x', 'a', '"a', opts) -- mapmode x is for visual select mode

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- nvim-tree
vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>', opts)

-- transparency toggle
vim.keymap.set('n', '<leader>t', ':TransparentToggle<CR>', opts)

---- Terminals / Windows
-- floating terminal
vim.keymap.set('n', '<S-space>', ':ToggleTerm name=main direction=float<CR>', opts) -- toggle terminal
vim.keymap.set('t', '<S-space>', '<C-\\><C-n>:ToggleTerm<CR>', opts)                -- toggle terminal while in terminal

-- horizontal terminal
vim.keymap.set('n', '<C-g>', ':ToggleTerm direction=horizontal<CR>', opts) -- toggle terminal
vim.keymap.set('t', '<C-g>', '<C-\\><C-n>:ToggleTerm<CR>', opts)           -- toggle terminal while in terminal

-- cool idea that doesn't work apparently or i'm just stupid
---- horizontal terminal
--vim.keymap.set('n', '<C-g>', ':ToggleTerm name=other direction=horizontal<CR>', opts) -- toggle terminal
--vim.keymap.set('t', '<C-g>', '<C-\\><C-n>:ToggleTerm<CR>', opts) -- toggle terminal while in terminal

vim.keymap.set('t', '<C-e>', '<C-\\><C-n>', opts) -- enter normal mode while in terminal

-- Testing bullshit
--vim.keymap.set('t', '<F7>', ':<CR>')
-- Buffers
--vim.keymap.set('n', '<tab>', ':bnext<cr>', opts, { desc = 'next buffer' })
--vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts, { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>ww', ':Bdelete!<CR>', opts, { desc = 'Close buffer' }) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts, { desc = 'New buffer' })  -- new buffer

-- bufferline
vim.keymap.set('n', '<S-l>', ':BufferLineMoveNext<CR>', opts, { desc = 'Move buffer right' })
vim.keymap.set('n', '<S-h>', ':BufferLineMovePrev<CR>', opts, { desc = 'Move buffer left' })
vim.keymap.set('n', '<tab>', ':BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', opts)

-- Window/split management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)      -- split window vertically
vim.keymap.set('n', '<leader>n', '<C-w>n', opts)      -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)     -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window

-- Navigate between splits (deprecated)
--vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
--vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
--vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
--vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Remove highlights
vim.keymap.set('n', '<leader>i', '<cmd> noh <CR>', { desc = 'Remove highlights' }, opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '15<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '15<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Tabs (deprecated by bufferline)
--vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)   -- open new tab
--vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
--vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) --  go to next tab
--vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) --  go to previous tab

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>0', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
