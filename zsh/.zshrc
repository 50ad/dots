#   =----=----=----=----=----=----=----=----=----=----=----=
#
#       50ad/dots@gh                     Athreya Dravida
#       config/zsh/zshrc                        [v1.0.0]
#
#   =----=----=----=----=----=----=----=----=----=----=----=

cd ~
source ~/.config/zsh/zinit.zsh # must be BEFORE `src plugins.zsh`
source ~/.config/zsh/plugins.zsh
source ~/.config/zsh/.aliases.zsh

HISTFILE=$HOME/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY
setopt HIST_REDUCE_BLANKS
unsetopt beep

eval "$(zoxide init zsh)"

export EDITOR=vim
export PAGER=moor
export LANG=en_US.UTF-8
export PATH="$PATH:$HOME/.local/bin"
export EZA_CONFIG_DIR="$HOME/.config/eza"
export MOOR="-colors 256 -mousemode scroll"
export BIT_THEME=monochrome