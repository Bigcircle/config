# ------------------------------------------------------------------------------
# Based on robbyrussell's theme, with host and rvm indicators. Example:
# VERSION:  0.0.1
# ------------------------------------------------------------------------------

# arrow_color & time_color & apple_icon_color
ARROW_COLOR="%{$fg[red]%}"
CURRENT_TIME_COLOR="%{$fg_bold[cyan]%}"
APPLE_COLOR="%{$fg[cyan]%}"

# apple icon
function apple { echo -n "" }

# show current_time
CURRENT_TIME="$CURRENT_TIME_COLOR%T"

# add ruby version
RUBY_VERSION="$($HOME/.rvm/bin/rvm-prompt v)"

# PROMPT='%{$CURRENT_TIME $fg_bold[red]%}%{$APPLE_COLOR $(apple)%} ➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

PROMPT='$CURRENT_TIME $ARROW_COLOR➜ [$RUBY_VERSION]%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

# git style
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
