export ZPLUG_HOME=$ZDOTDIR/.zplug

[[ -e $ZDOTDIR/.zplug ]] || git clone --depth=1 https://github.com/zplug/zplug.git $ZPLUG_HOME

source $ZPLUG_HOME/init.zsh

# bindkey -v # Enable vi mode.

zplug "Aloxaf/fzf-tab", depth:1
zplug "Bhupesh-V/ugit", defer:2, depth:1
# zplug "IngoMeyer441/zsh-easy-motion", depth:1
# zplug "MichaelAquilina/zsh-auto-notify", defer:2, depth:1
zplug "Tarrasch/zsh-bd", depth:1
zplug "arzzen/calc.plugin.zsh", defer:2, depth:1
zplug "changyuheng/fz", depth:1
zplug "chrissicool/zsh-256color", depth:1
# zplug "jeffreytse/zsh-vi-mode", depth:1
# zplug "marlonrichert/zsh-autocomplete", defer:2, depth:1
zplug "mtxr/zsh-change-case", depth:1
zplug "plugins/colored-man-pages", from:oh-my-zsh, defer:2, depth:1
zplug "plugins/command-not-found", from:oh-my-zsh, depth:1
zplug "plugins/copybuffer", from:oh-my-zsh, depth:1
zplug "plugins/copypath", from:oh-my-zsh, depth:1
zplug "plugins/direnv", from:oh-my-zsh, depth:1
zplug "plugins/docker", from:oh-my-zsh, depth:1
zplug "plugins/extract", from:oh-my-zsh, depth:1
zplug "plugins/emoji", from:oh-my-zsh, depth:1
zplug "plugins/gitignore", from:oh-my-zsh, defer:2, depth:1
zplug "plugins/web-search", from:oh-my-zsh, depth:1
zplug "plugins/z", from:oh-my-zsh, depth:1
zplug "reegnz/jq-zsh-plugin", depth:1
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "sei40kr/fast-alias-tips-bin", from:gh-r, as:command, rename-to:def-matcher, depth:1
zplug "sei40kr/zsh-fast-alias-tips", depth:1
zplug "teonsean-dm/zsh-up-dir", defer:2, depth:1
zplug "zdharma-continuum/fast-syntax-highlighting", defer:2, depth:1
zplug "zsh-users/zsh-completions", depth:1

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/zsheo/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit $ZDOTDIR/.p10k.zsh.
source $ZDOTDIR/.p10k.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/clipboard.zsh

setopt autocd

autoload -Uz $ZDOTDIR/functions/autoload-dir
autoload -U history-search-end
autoload-dir $ZDOTDIR/functions
autoload-dir $ZDOTDIR/functions/git

autoload -U select-word-style
select-word-style bash
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
zle -N quick-exa

bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
bindkey '^K^U' _mtxr-to-upper # Ctrl+K + Ctrl+U
bindkey '^K^L' _mtxr-to-lower # Ctrl+K + Ctrl+L
bindkey '^@' quick-exa
bindkey "^[[1;5A" beginning-of-line
bindkey "^[[1;5B" end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-kill-word
bindkey "^[[3;5~" kill-word
# bindkey -M vicmd ' ' vi-easy-motion

source $HOME/.config/broot/launcher/bash/br
source $HOME/.fzf/shell/key-bindings.zsh
source $HOME/.fzf/shell/completion.zsh

export EDITOR='nvim'
export VIEWER="bat"
export VISUAL='nvim'
export PAGER='less'

export HISTFILE=$HOME/.zsh_history
export SAVEHIST=100000
export HISTSIZE=200000

# export AUTO_NOTIFY_IGNORE=("python" "python3.8" "ssh")
export PATH=$PATH:$HOME/.fzf/bin
export fpath=($ZDOTDIR/completions $fpath)
