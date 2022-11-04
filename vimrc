syntax on
set sw=2
set smartindent
set expandtab

" switch header/footer
map <F8> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>


term0
#!/bin/bash

#terminal=t0
#export HISTFILE=/home/macetw/.bash_history_$terminal
#gnome-terminal --title=$terminal -- tmux new -E -t 0
