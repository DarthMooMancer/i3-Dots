HISTFILE=~/.zsh_history
HISTSIZE=150
SAVEHIST=1000

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line
bindkey "^[[6~" down-line

export PLUGINS="$HOME/.config/zsh/"
export VIRTUAL_ENV_DISABLE_PROMPT=true

autoload -U compinit; compinit
autoload -Uz promptinit; promptinit

source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.config/env/bin/activate

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code="cd ~/Docs/Coding2/DungeonProject/ && nvim"
alias jdir="cd ~/Docs/JavaDev/CodeHS/"
alias javeb="javac *.java && java"
alias neoconfig="cd ~/.config/nvim"
alias i3conf="cd ~/.config/i3/ && nvim"

prompt pure
nitch
