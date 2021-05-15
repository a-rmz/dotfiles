# If you come from.zsh you might have to change your $PATH.  
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# Oh my zsh plugins
plugins=(gitfast git npm forgit poetry)

source $ZSH/oh-my-zsh.sh

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Aliases
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# Keybindings
if [ -f ~/.zsh_bindings ]; then
    . ~/.zsh_bindings
fi

########################
# User configuration
########################
export TERM="xterm-256color"
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/.liquidprompt/liquidprompt

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR.zsh_completion" ] && \. "$NVM_DIR.zsh_completion"  # This loads nvm.zsh_completion

# BASE16_SHELL=$HOME/.config/base16-shell/
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# if [ -e $BASE16_SHELL ]; then
#   Select color scheme
#   base16_gruvbox-dark-hard
# fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function logentry() {
  while getopts "mo" mode; do
    case $mode in
      m)
        vim +Goyo +"set mouse=" ~/logbook/$(date '+%Y-%m-%d').md
        ;;

      o)
        vim +Goyo +"set mouse=" ~/logbook/$(date '+%Y-%m-%d').org
        ;;
    esac

  done
  # Default option
  vim +Goyo +"set mouse=" ~/logbook/$(date '+%Y-%m-%d').md
}

# Preferred editor for local and remote sessions
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# pyenv-virtualenv
# https://github.com/pyenv/pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

##############################
#      hub autocompletion    #
##############################

fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

eval "$(rbenv init -)"

# Load rupa's z if installed
[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh

eval "$(pipenv --completion)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/a-rmz/.sdkman"
[[ -s "/Users/a-rmz/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/a-rmz/.sdkman/bin/sdkman-init.sh"

export GPG_TTY=$(tty)

export GOPATH=$HOME/launchpad/go
export PATH=$GOPATH/bin:$PATH

[ -s "/Users/a-rmz/.jabba/jabba.sh" ] && source "/Users/a-rmz/.jabba/jabba.sh" && jabba use default

# added by travis gem
[ -f /Users/a-rmz/.travis/travis.sh ] && source /Users/a-rmz/.travis/travis.sh

export PATH=/Users/a-rmz/.local/bin:/opt/flutter/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.poetry/bin:$PATH"
