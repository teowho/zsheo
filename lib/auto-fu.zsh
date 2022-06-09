if [[ ! -e $ZPLUG_HOME/repos/hchbaw/auto-fu.zsh/auto-fu ]]; then
  git clone https://github.com/hchbaw/auto-fu.zsh.git $ZPLUG_HOME/repos/hchbaw/auto-fu.zsh
  S=$ZPLUG_HOME/repos/hchbaw/auto-fu.zsh/auto-fu.zsh; \
    (zsh -c "source $S ; auto-fu-zcompile $S $ZPLUG_HOME/repos/hchbaw/auto-fu.zsh/")
fi

source $ZPLUG_HOME/repos/hchbaw/auto-fu.zsh/auto-fu; auto-fu-install
