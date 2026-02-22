# Load history search functions
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Bind Up and Down arrows
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Options for better history management
setopt SHARE_HISTORY          # Share history between sessions
setopt HIST_IGNORE_ALL_DUPS   # Don't store duplicates
setopt HIST_REDUCE_BLANKS     # Remove unnecessary blanks

# --- PROMPT CUSTOMIZATION ---

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the git information
zstyle ':vcs_info:git:*' formats '(%b)'

# Enable substitution in the prompt
setopt PROMPT_SUBST

# Define the prompt
# %n = username
# %~ = current directory (with ~ for home)
# %F{color} ... %f = foreground color
PROMPT='%F{cyan}%n%f %F{yellow}%~%f %F{magenta}${vcs_info_msg_0_}%f %# '
