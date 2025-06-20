let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
let NvimTreeSetup =  1 
let NvimTreeRequired =  1 
let BufferlinePositions = "[\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/notes.txt\",\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/build.sh\",\"/run/media/pebarch/pebdrive/_Code/Assembly/ASMMLC/build.sh\",\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/src/main.cpp\",\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/src/lang/compoundtypes.cpp\",\"/run/media/pebarch/pebdrive/_Code/C++/CPPMLCV2/src/include/compoundtypes.h\",\"/home/pebarch/.config/nvim/NvimTree_1\",\"/run/media/pebarch/pebdrive/_Code/NvimTree_1\"]"
silent only
silent tabonly
cd /run/media/pebarch/pebdrive/_Code
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +10 C++/CPPMLCV2/build.sh
badd +19 C++/CPPMLCV2/src/main.cpp
badd +14 C++/CPPMLCV2/notes.txt
badd +5 C++/CPPMLCV2/src/include/compoundtypes.h
badd +9 C++/CPPMLCV2/src/lang/compoundtypes.cpp
badd +8 Assembly/ASMMLC/build.sh
argglobal
%argdel
$argadd ~/.config/nvim/NvimTree_1
edit C++/CPPMLCV2/build.sh
argglobal
balt C++/CPPMLCV2/notes.txt
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
let s:l = 10 - ((9 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
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
