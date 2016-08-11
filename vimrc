syntax on
set sw=2
set smartindent
set expandtab

" switch header/footer
map <F8> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
