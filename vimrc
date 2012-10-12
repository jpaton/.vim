color wombat
set number
set clipboard=unnamed
set ignorecase
syntax on

filetype indent plugin on
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
au FileType cpp setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType c setlocal fdm=syntax foldlevel=100

" open and close folds with spacebar
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" mapping to rebuild ctags file in directory of current file
nmap ,t :!(cd %:p:h;make tags)&

" localvimrc configuration

let g:localvimrc_sandbox = 0
let g:localvimrc_whitelist = "/home/paton/.*"

" set smaller font size when running gui
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 9
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" define command to refresh tags and reset cscope
command RefTags make tags | cs reset

" define command to write and make
command Wmake w | make

" prevent loading of minibufexplorer if on Linux -- presumably we are
" on a department machine in that case
let s:uname = system("uname")
if s:uname == "Linux"
	let g:loaded_minibufexplorer = 1
endif
