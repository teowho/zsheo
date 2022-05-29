# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/zsheo/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZDOTDIR=$(dirname $0)

source $ZDOTDIR/lib/antidote.zsh
source $ZDOTDIR/lib/zephyr.zsh

source $ZDOTDIR/aliases.zsh

# To customize prompt, run `p10k configure` or edit ~/zsheo/.p10k.zsh.
[[ ! -f ~/zsheo/.p10k.zsh ]] || source ~/zsheo/.p10k.zsh

export EDITOR='nvim'
export VIEWER="bat"
export VISUAL='code'
export PAGER='less'

export ABBR_USER_ABBREVIATIONS_FILE=$ZDOTDIR/abbreviations

export fpath=($ZDOTDIR/completions $fpath)

# load module for list-style selection
zmodload zsh/complist

# use the module above for autocomplete selection
zstyle ':completion:*' menu yes select
