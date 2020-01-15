# Configuration examples

```bash
########################################################################################################################
### Load Prompt (Theme) [geometry](https://github.com/geometry-zsh/geometry)
########################################################################################################################
GEOMETRY_PROMPT=(geometry_echo geometry_status geometry_path)
GEOMETRY_PROMPT+=(geometry_newline)

zplugin ice atload'!geometry::prompt' lucid nocd
zplugin load geometry-zsh/geometry
########################################################################################################################
```

```bash
########################################################################################################################
### Load Prompt (Theme)
########################################################################################################################

DEFAULT_PROMPT="powerlevel10k"

# Load when DEFAULT_PROMPT == lambda-mod
zplugin ice load'![[ $DEFAULT_PROMPT = "lambda-mod" ]]' unload'![[ $DEFAULT_PROMPT != "lambda-mod" ]]' lucid
zplugin load halfo/lambda-mod-zsh-theme

# Load when $DEFAULT_PROMPT == pure
zplugin ice load'![[ $DEFAULT_PROMPT = "pure" ]]' unload'![[ $DEFAULT_PROMPT != "pure" ]]' \
    pick"/dev/null" multisrc"{async,pure}.zsh" \
    atload'!prompt_pure_precmd' lucid nocd
zplugin load sindresorhus/pure

# Load when $DEFAULT_PROMPT == geometry
zplugin ice load'![[ $DEFAULT_PROMPT = "geometry" ]]' unload'![[ $DEFAULT_PROMPT != "geometry" ]]' \
          atload'!geometry::prompt' lucid nocd
zplugin load geometry-zsh/geometry

## Load when DEFAULT_PROMPT == typewritten
#zplugin ice load'![[ $DEFAULT_PROMPT = "typewritten" ]]' unload'![[ $DEFAULT_PROMPT != "typewritten" ]]' lucid
#zplugin ice lucid
#zplugin light reobin/typewritten

# Load when DEFAULT_PROMPT == spaceship
zplugin ice load'![[ $DEFAULT_PROMPT = "spaceship" ]]' unload'![[ $DEFAULT_PROMPT != "spaceship" ]]' lucid
zplugin light denysdovhan/spaceship-prompt

# Load when DEFAULT_PROMPT == powerlevel10k
zplugin ice load'![[ $DEFAULT_PROMPT = "powerlevel10k" ]]' unload'![[ $DEFAULT_PROMPT != "powerlevel10k" ]]' lucid
zplugin light romkatv/powerlevel10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh && $DEFAULT_PROMPT == 'powerlevel10k' ]] || source ~/.p10k.zsh

```
