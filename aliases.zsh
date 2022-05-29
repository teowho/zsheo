alias _='sudo'

alias grep='grep --color'

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias ll='ls -l'      #long list


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
