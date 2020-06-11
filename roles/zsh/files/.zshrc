### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

### zplugin-crasis (https://github.com/zdharma/zplugin-crasis)
zinit light zdharma/zui
zinit light zdharma/zinit-crasis
### End of zplugin-crasis chunk

### zinit-console (https://github.com/zinit-zsh/zinit-console)
zinit wait lucid for zinit-zsh/zinit-console
### End of zinit-console chunk

### Oh-My-Zsh
local _OMZ_SOURCES=(
  # Libs
#  lib/compfix.zsh
  lib/completion.zsh
  lib/directories.zsh
#  lib/functions.zsh
#  lib/git.zsh
#  lib/grep.zsh
  lib/history.zsh
  lib/key-bindings.zsh
#  lib/misc.zsh
#  lib/spectrum.zsh
#  lib/termsupport.zsh
#  lib/theme-and-appearance.zsh
#  lib/termsupport.zsh

  # Plugins
#  plugins/autojump/autojump.plugin.zsh
  plugins/command-not-found/command-not-found.plugin.zsh
  plugins/fzf/fzf.plugin.zsh
#  plugins/git/git.plugin.zsh
#  plugins/gitfast/gitfast.plugin.zsh
#  plugins/pip/pip.plugin.zsh
#  plugins/sudo/sudo.plugin.zsh
#  plugins/thefuck/thefuck.plugin.zsh
#  plugins/urltools/urltools.plugin.zsh
)

zinit ice from"gh" pick"/dev/null" nocompletions blockf lucid \
  multisrc"${_OMZ_SOURCES}" compile"(${(j.|.)_OMZ_SOURCES})"
zinit light robbyrussell/oh-my-zsh
### End of Oh-My-Zsh chunk


########################################################################################################################
### History auto suggestions with context
### Based on the article https://www.dev-diaries.com/blog/terminal-history-auto-suggestions-as-you-type/
########################################################################################################################
### load patched zsh-histdb
zinit light shimarulin/zsh-histdb

# https://www.dev-diaries.com/blog/terminal-history-auto-suggestions-as-you-type/
#show_local_history() {
#    limit="${1:-10}"
#    local query="
#        select history.start_time, commands.argv
#        from history left join commands on history.command_id = commands.rowid
#        left join places on history.place_id = places.rowid
#        where places.dir LIKE '$(sql_escape $PWD)%'
#        order by history.start_time desc
#        limit $limit
#    "
#    results=$(_histdb_query "$query")
#    echo "$results"
#}
#
#search_local_history() {
#    show_local_history 100 | grep "$1"
#}

### End of zsh-histdb chunk

### zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions)
# https://github.com/larkery/zsh-histdb#integration-with-zsh-autosuggestions
# Query to find the most frequently issued command issued exactly in this directory,
# or if there are no matches it will find the most frequently issued command in any directory
_zsh_autosuggest_strategy_histdb_top() {
  local query="select commands.argv from
    history left join commands on history.command_id = commands.rowid
    left join places on history.place_id = places.rowid
    where commands.argv LIKE '$(sql_escape $1)%'
    group by commands.argv
    order by places.dir != '$(sql_escape $PWD)', count(*) desc limit 1"
  suggestion=$(_histdb_query "$query")
}

# https://www.dev-diaries.com/blog/terminal-history-auto-suggestions-as-you-type/
# Query to pull in the most recent command if anything was found similar
# in that directory. Otherwise pull in the most recent command used anywhere
# Give back the command that was used most recently
_zsh_autosuggest_strategy_histdb_top_most_recent() {
  local query="
  select commands.argv from
  history left join commands on history.command_id = commands.rowid
  left join places on history.place_id = places.rowid
  where places.dir LIKE
    case when exists(select commands.argv from history
    left join commands on history.command_id = commands.rowid
    left join places on history.place_id = places.rowid
    where places.dir LIKE '$(sql_escape $PWD)%'
    AND commands.argv LIKE '$(sql_escape $1)%')
      then '$(sql_escape $PWD)%'
      else '%'
      end
  and commands.argv LIKE '$(sql_escape $1)%'
  group by commands.argv
  order by places.dir LIKE '$(sql_escape $PWD)%' desc,
    history.start_time desc
  limit 1"
  suggestion=$(_histdb_query "$query")
}

#ZSH_AUTOSUGGEST_STRATEGY=histdb_top
ZSH_AUTOSUGGEST_STRATEGY=histdb_top_most_recent

zinit ice wait atload"_zsh_autosuggest_start" lucid
zinit light zsh-users/zsh-autosuggestions
### End of zsh-autosuggestions chunk
########################################################################################################################

### zsh-completions (https://github.com/zsh-users/zsh-completions)
zinit ice wait blockf atpull'zplugin creinstall -q .' lucid
zinit light zsh-users/zsh-completions
### End of zsh-completions chunk

### fast-syntax-highlighting (https://github.com/zdharma/fast-syntax-highlighting)
zinit ice wait atinit"zpcompinit; zpcdreplay" lucid
zinit light zdharma/fast-syntax-highlighting
### End of fast-syntax-highlighting chunk

### NVM
zinit light lukechilds/zsh-nvm
### End of NVM chunk

########################################################################################################################
### Load Prompt (Theme)
########################################################################################################################

### powerlevel10k
zinit ice depth=1
zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
### End of powerlevel10k chunk
########################################################################################################################

### [VTE Configuration](https://gnunn1.github.io/tilix-web/manual/vteconfig/)
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi
