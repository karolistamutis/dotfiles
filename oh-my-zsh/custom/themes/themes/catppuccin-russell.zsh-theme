# ~/.oh-my-zsh/custom/themes/catppuccin-russell.zsh-theme

# Catppuccin color palette
local green='%F{#a6e3a1}'
local blue='%F{#89b4fa}'
local red='%F{#f38ba8}'
local yellow='%F{#f9e2af}'
local reset='%f'

# Git info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$blue%}git:(%{$red%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$blue%}) %{$yellow%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$blue%})"

# Prompt structure
PROMPT='%{$green%}➜ %{$reset%}%c $(git_prompt_info)'
