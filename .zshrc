#cfuerst - zsh 5.0.0

#init
autoload -U compinit promptinit colors
colors
compinit
promptinit

#load custom plugins
for plugin in spectrum completion historyconf keys colorls path prompt;
do source ~/.zsh/.$plugin; done
