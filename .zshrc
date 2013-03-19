#cfuerst - zsh 5.0.0

#init
autoload -U compinit promptinit colors
colors
compinit
promptinit

#load custom plugins
for plugin in utils spectrum completion historyconf keys colorls path prompt;
do source ~/.zsh/.$plugin; done

#execute everytime before a new promt gets set
function precmd(){
    set_window_title "$(hostname)"
}
