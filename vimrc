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

" toggle tagbar
nmap <F8> :TagbarToggle<CR> 

" mapping to rebuild ctags file in directory of current file
nmap ,t :!(cd %:p:h;make tags)&

" localvimrc configuration

let g:localvimrc_sandbox = 0
let g:localvimrc_whitelist = "/home/paton/workspace/blkback-ljx/.lvimrc"
