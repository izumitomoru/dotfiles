let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
let NvimTreeSetup =  1 
let NvimTreeRequired =  1 
let BufferlinePositions = "[\"/home/pebarch/.config/nvim/init.lua\",\"/home/pebarch/.config/nvim/lua/core/keymaps.lua\",\"/home/pebarch/.config/nvim/lua/core/options.lua\",\"/home/pebarch/.config/nvim/README.md\",\"/home/pebarch/.config/nvim/lua/plugins/persistence.lua\",\"/home/pebarch/.config/nvim/lua/plugins/tmux.lua\",\"/home/pebarch/.tmux.conf\",\"/home/pebarch/.config/nvim/lua/plugins/transparent.lua\",\"/home/pebarch/.config/nvim/lua/plugins/monokai-pro.lua\",\"/home/pebarch/.config/nvim/lua/plugins/smartsplits.lua\",\"/home/pebarch/.config/wezterm/wezterm.lua\",\"/home/pebarch/.config/starship/starship.toml\"]"
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
badd +50 lua/core/keymaps.lua
badd +3 init.lua
badd +49 README.md
badd +30 lua/core/options.lua
badd +26 lua/plugins/monokai-pro.lua
badd +18 lua/plugins/persistence.lua
badd +35 lua/plugins/transparent.lua
badd +17 lua/plugins/tmux.lua
badd +2 ~/.tmux.conf
badd +40 lua/plugins/smartsplits.lua
badd +80 ~/.config/wezterm/wezterm.lua
badd +15 ~/.config/starship/starship.toml
argglobal
%argdel
$argadd ~/.local/state/nvim/sessions/NvimTree_1
edit lua/core/keymaps.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 34 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 203 + 119) / 238)
argglobal
enew
file NvimTree_1
balt lua/core/keymaps.lua
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
wincmd w
argglobal
balt init.lua
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
let s:l = 50 - ((49 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 50
normal! 030|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 34 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 203 + 119) / 238)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
