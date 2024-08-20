source ~/.profile
setopt interactivecomments

# Check that the function `starship_zle-keymap-select()` is defined.
# xref: https://github.com/starship/starship/issues/3418
type starship_zle-keymap-select >/dev/null || \
  {
    eval "$(starship init zsh)"
  }

ZINIT_HOME="${XDG_DATA_HOME}/zsh/zinit.git"

if [ ! -d $ZINIT_HOME ]; then
    mkdir -p $ZINIT_HOME
    git clone --depth 1 https://github.com/zdharma-continuum/zinit.git $ZINIT_HOME
fi

source "${ZINIT_HOME}/zinit.zsh"

ZSH_COMPDUMP="${XDG_CACHE_HOME}/zsh/zcompdump-$HOST"

zinit ice depth=1; zinit light zsh-users/zsh-syntax-highlighting
zinit ice depth=1; zinit light zsh-users/zsh-completions
zinit ice depth=1; zinit light zsh-users/zsh-autosuggestions

autoload -U compinit
zstyle ':completion:*' menu select
fpath=(${ASDF_DIR}/completions $fpath)

if [ ! -d $(dirname $ZSH_COMPDUMP) ]; then
    mkdir -p $(dirname $ZSH_COMPDUMP)
fi
compinit -d $ZSH_COMPDUMP

HISTSIZE="10000"
HISTFILE="${XDG_DATA_HOME}/zsh/zsh_history"
SAVEHIST="10000"
HISTDUP=erase
HISTORY_IGNORE='(clear exit)'
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

bindkey -v
bindkey '^y' autosuggest-accept
bindkey -a k history-search-backward
bindkey -a j history-search-forward

alias adb='HOME="$XDG_DATA_HOME"/android adb'

if which eza &> /dev/null; then
    alias -- 'eza'='eza '\''--icons'\'''
    alias -- 'ls'='eza'
    alias -- 'la'='eza -a'
    alias -- 'll'='eza -l'
    alias -- 'lt'='eza --tree'
    alias -- 'lla'='eza -la'
    alias -- 'llg'='eza -l --git'
fi

alias -- 'rmi'='rm -i'

if which zoxide &> /dev/null; then
    eval "$(zoxide init zsh --no-cmd)"
    export _ZO_FZF_OPTS=$FZF_DEFAULT_OPTS
    alias -- 'z'='__zoxide_zi'
fi

if which eza &> /dev/null; then
    alias -- 'vimdiff'='nvim -d'
    alias -- 'vim'='nvim'
    alias -- 'vi'='nvim'
fi

if which tmuxifier &> /dev/null; then
    eval "$(tmuxifier init -)"
fi

eval "$(direnv hook zsh)"

# pnpm
export PNPM_HOME="/home/david/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

if [ -f ~/.local/share/asdf/asdf.sh ]; then
    source ~/.local/share/asdf/asdf.sh
fi

smolfetch
