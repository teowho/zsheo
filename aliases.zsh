alias _='sudo'
alias -- -='cd -'
alias b="bat"
alias bb="bd 1"

alias grep='grep --color'

alias ls="exa"
alias l='exa -lFh'     #size,show type,human readable
alias la='exa -lAFh'   #long list,show almost all,show type,human readable
alias ll='exa -l'      #long list


alias ex="extract"
alias du="dust"

alias d="docker"

alias g="git"
alias ga="git add"
alias gb="git branch"
alias gbD="git branch -D"
alias gc!="git commit -v --amend"
alias gcn!="git commit -v --no-edit --amend"
alias gcam="git commit -a -m"
alias gcmsg="git commit -m"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcB="git checkout -B"
alias gcm="git checkout master"
alias gcp="git cherry-pick"
alias gcpa="git cherry-pick --abort"
alias gcpc="git cherry-pick --continue"
alias gd="git diff"
alias gdca="git diff --cached"
alias gdm="git diff master"
alias gl="git pull"
alias ggl='git pull origin $(git_current_branch)'
alias gp="git push"
alias ggp='git push origin $(git_current_branch)'
alias ggf='git push --force origin $(git_current_branch)'
alias glg="git log --stat"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --aliasev-commit --date=relative"
alias grb="git rebase"
alias grba="git rebase --abort"
alias grbc="git rebase --continue"
alias grbs="git rebase --skip"
alias grbi="git rebase -i"
alias grbm='git pull --rebase origin $(git_main_branch)'
alias grh="git reset"
alias grhh="git reset --hard"
alias grm="git rm"
alias grmr="git rm -r"
alias gsta="git stash push"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstp="git stash pop"

alias grc="gh repo clone"
alias grcd="gh repo clone deepmirrorinc/"
alias op="gh pr view --web"

alias s2="sha256sum"
alias zz="exit"

alias lower="tr '[:upper:]' '[:lower:]'"
alias upper="tr '[:lower:]' '[:upper:]'"


# open browser on urls
if [[ -n "$BROWSER" ]]; then
  _browser_fts=(htm html de org net com at cx nl se dk)
  for ft in $_browser_fts; do alias -s $ft='$BROWSER'; done
fi

_editor_fts=(cpp cxx cc c hh h inl asc txt TXT tex)
for ft in $_editor_fts; do alias -s $ft='$VIEWER'; done

if [[ -n "$XIVIEWER" ]]; then
  _image_fts=(jpg jpeg png gif mng tiff tif xpm)
  for ft in $_image_fts; do alias -s $ft='$XIVIEWER'; done
fi

_media_fts=(ape avi flv m4a mkv mov mp3 mpeg mpg ogg ogm rm wav webm)
for ft in $_media_fts; do alias -s $ft=mplayer; done

#read documents
alias -s pdf=acroread
alias -s ps=gv
alias -s dvi=xdvi
alias -s chm=xchm
alias -s djvu=djview

#list whats inside packed file
alias -s zip="unzip -l"
alias -s rar="unrar l"
alias -s tar="tar tf"
alias -s tar.gz="echo "
alias -s ace="unace l"
