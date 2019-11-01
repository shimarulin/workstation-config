### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

### Crasis http://zdharma.org/zplugin/wiki/crasis/
zplugin light zdharma/zui
zplugin light zdharma/zplugin-crasis
