color wombat
set number
set clipboard=unnamed
syntax on

filetype indent plugin on
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
au FileType c setlocal fdm=syntax

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

