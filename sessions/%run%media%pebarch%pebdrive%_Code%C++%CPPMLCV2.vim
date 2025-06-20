let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
let NvimTreeSetup =  1 
let NvimTreeRequired =  1 
let BufferlinePositions = "[\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/build.sh\",\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/src/main.cpp\",\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/notes.txt\",\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/src/include/compoundtypes.h\",\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/src/lang/compoundtypes.cpp\",\"/home/pebarch/.zshrc\",\"/home/pebarch/.config/nvim/NvimTree_1\",\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/NvimTree_1\"]"
silent only
silent tabonly
cd /run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 build.sh
badd +29 src/main.cpp
badd +14 notes.txt
badd +5 src/include/compoundtypes.h
badd +179 src/lang/compoundtypes.cpp
argglobal
%argdel
$argadd ~/.config/nvim/NvimTree_1
edit src/lang/compoundtypes.cpp
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
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
exe 'vert 2resize ' . ((&columns * 101 + 119) / 238)
exe 'vert 3resize ' . ((&columns * 101 + 119) / 238)
argglobal
enew
file NvimTree_1
balt src/main.cpp
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
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 179 - ((40 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 179
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("src/include/compoundtypes.h", ":p")) | buffer src/include/compoundtypes.h | else | edit src/include/compoundtypes.h | endif
if &buftype ==# 'terminal'
  silent file src/include/compoundtypes.h
endif
balt src/lang/compoundtypes.cpp
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 5 - ((4 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 34 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 101 + 119) / 238)
exe 'vert 3resize ' . ((&columns * 101 + 119) / 238)
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
