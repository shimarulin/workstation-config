### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

### https://github.com/zdharma/zplugin-crasis
zplugin light zdharma/zui
zplugin light zdharma/zplugin-crasis

### https://github.com/zplugin/zplugin-console
zplugin ice wait lucid
zplugin load zplugin/zplugin-console

### https://github.com/zsh-users/zsh-autosuggestions
# zplugin ice wait atload"_zsh_autosuggest_start" lucid
# zplugin light zsh-users/zsh-autosuggestions

### https://github.com/larkery/zsh-histdb
# zplugin light larkery/zsh-histdb

# source "$HOME/.zplugin/plugins/larkery---zsh-histdb/sqlite-history.zsh"
# autoload -Uz add-zsh-hook
# add-zsh-hook precmd histdb-update-outcome

### Oh-My-Zsh
### https://github.com/zdharma/zplugin/issues/54#issuecomment-401884886
local _ZSHRC_OMZ_LIBS=(
#   compfix.zsh
#   completion.zsh
#   directories.zsh
#   functions.zsh
#   grep.zsh
  history.zsh
#   key-bindings.zsh
#   misc.zsh
#   spectrum.zsh
#   termsupport.zsh
#   theme-and-appearance.zsh
)

zplugin ice from"gh" pick"lib/git.zsh" nocompletions blockf \
  atload'!local f; for f in ${_ZSHRC_OMZ_LIBS}; do source lib/$f; done' \
  compile"lib/(${(j.|.)_ZSHRC_OMZ_LIBS})"
zplugin load robbyrussell/oh-my-zsh
