# Aliases
source $ZDOTDIR/aliases.zsh

# Pure Prompt
fpath+=($ZDOTDIR/plugins/pure)
autoload -U promptinit; promptinit
prompt pure
zstyle :prompt:pure:git:stash show yes # Shows git stash status

# Tab complete hidden files
setopt globdots

# Autocomplete
source $ZDOTDIR/plugins/autocomplete/zsh-autocomplete.plugin.zsh
# Make Tab go straight to the menu and cycle there
bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
bindkey -M menuselect '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete
# Style Autocomplete
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# Highlight on tab
zstyle ':completion:*' menu select

# Autosuggestions
source $ZDOTDIR/plugins/autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HISTORY_IGNORE="(cd *|vim *|nvim *|vi *|git add*|git commit -m*)"
bindkey '^h' autosuggest-toggle

# lf Integration
ZSH_SELECT_WITH_LF_DIR_BIND="^O"
ZSH_SELECT_WITH_LF_FILE_BIND="^F"
source $ZDOTDIR/plugins/lf/zsh-select-with-lf.plugin.zsh

# Syntax Highlighting
source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Auto cd
setopt auto_cd

# Prevent duplicates in history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# Allow Backspace to Previous Line
bindkey '^?' backward-delete-char
