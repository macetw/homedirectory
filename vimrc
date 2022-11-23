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

aliases
#function pod()
#{
#   kubectl get pods -o wide -n namespace --no-headers -o custom-columns=":metadata.name" | head -n1
#}
#
#alias connect='kubectl config use-context cluster-name'
#alias k="kubectl -n namespace"
#alias log='k logs $(pod) -c namespace'
#alias pods='k get pods -w'
#alias s='k exec -it $(pod) bash'
#alias d='k describe pod $(pod)'
#
#connect                                                                                                                    
