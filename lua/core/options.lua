vim.wo.number = true -- default line numbers
vim.o.clipboard = 'unnamedplus' -- Sync OS clipboard with neovim (default: '')
vim.o.wrap = true -- Display lines as one long line
vim.o.linebreak = true -- Companion to wrap, don't split words
vim.o.mouse = 'a' -- Enable mouse mode (default: '')
vim.o.autoindent = true -- Auto indent
vim.o.ignorecase = true -- Case insensitive searching
vim.o.smartcase = true -- Smart case
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.numberwidth = 2
vim.o.expandtab = true -- convert tabs to spaces
vim.o.cursorline = true -- highlight the current line
vim.o.smartindent = true -- make indenting smarter
vim.o.showtabline = 2 -- always show tabs
vim.o.fileencoding = 'utf-8' -- the encoding written to a file
vim.o.cmdheight = 1 -- more space in the neovim command line for displaying messages
--vim.opt.runtimepath:remove '/usr/share/vim/vimfiles' -- separate vim plugins from neovim in case vim still in use
vim.o.backup = false -- creates a backup file
vim.o.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.o.undofile = true -- Save undo history
vim.wo.signcolumn = 'yes' -- Keep signcolumn on by default
--vim.go.sessionoptions = 'globals,curdir,buffers,resize,localoptions,options,winsize'

vim.go.sessionoptions = 'globals,blank,buffers,curdir,folds,help,tabpages,winsize,terminal'

--vim.o.sessionoptions = 'globals,curdir,buffers,resize,localoptions,options,winsize'

--vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,terminal'
--vim.wo.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,terminal'
-- sessionoptions	list of words that specifies what to put in a session file
-- 	set ssop=blank,buffers,curdir,folds,help,tabpages,winsize,terminal

--ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff fffffffffffffftestingtesting
