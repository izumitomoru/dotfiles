let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
let NvimTreeSetup =  1 
let NvimTreeRequired =  1 
let BufferlinePositions = "[\"/home/pebarch/.config/nvim/init.lua\",\"/home/pebarch/.config/nvim/lua/core/keymaps.lua\",\"/home/pebarch/.config/nvim/lua/plugins/misc.lua\",\"/home/pebarch/.config/nvim/lua/plugins/which-key.lua\",\"/home/pebarch/.config/nvim/wk-options.lua\",\"/home/pebarch/.config/nvim/README.md\",\"/home/pebarch/.config/nvim/lua/core/options.lua\",\"/home/pebarch/.config/nvim/lua/plugins/monokai-pro.lua\",\"/home/pebarch/.config/nvim/lua/plugins/persistence.lua\",\"/home/pebarch/.config/nvim/lua/plugins/transparent.lua\",\"/home/pebarch/.config/nvim/lua/plugins/tmux.lua\",\"/home/pebarch/.tmux.conf\",\"/home/pebarch/.config/nvim/lua/plugins/smartsplits.lua\",\"/home/pebarch/.config/wezterm/wezterm.lua\",\"/home/pebarch/.config/nvim/lua/plugins/lualine.lua\",\"/home/pebarch/.config/nvim/lua/core/sessionopts.lua\",\"/home/pebarch/.config/nvim/sessions/%home%pebarch%.config%nvim.vim\",\"/home/pebarch/.config/nvim/sessions/%run%media%pebarch%pebdrive%_Code%C++%CPPMLCV2.vim\"]"
silent only
silent tabonly
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +24 lua/plugins/misc.lua
badd +54 lua/core/keymaps.lua
badd +3 init.lua
badd +1 lua/plugins/which-key.lua
badd +1 wk-options.lua
badd +49 README.md
badd +30 lua/core/options.lua
badd +26 lua/plugins/monokai-pro.lua
badd +18 lua/plugins/persistence.lua
badd +35 lua/plugins/transparent.lua
badd +17 lua/plugins/tmux.lua
badd +2 ~/.tmux.conf
badd +104 lua/plugins/smartsplits.lua
badd +27 ~/.config/wezterm/wezterm.lua
badd +9 lua/plugins/lualine.lua
badd +2 lua/core/sessionopts.lua
badd +6 sessions/\%home\%pebarch\%.config\%nvim.vim
badd +109 sessions/\%run\%media\%pebarch\%pebdrive\%_Code\%C++\%CPPMLCV2.vim
argglobal
%argdel
$argadd ~/.local/state/nvim/sessions/NvimTree_1
edit lua/core/keymaps.lua
argglobal
balt lua/plugins/misc.lua
setlocal foldmethod=manual
setlocal foldexpr=v:lua.vim.treesitter.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 54 - ((0 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 54
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
