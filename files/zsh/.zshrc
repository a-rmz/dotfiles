# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

# Oh my zsh plugins
plugins=(gitfast git npm asdf)

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


BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

if [ -e $BASE16_SHELL ]; then
#   Select color scheme
  base16_gruvbox-dark-hard
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

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

# For installing psycopg2
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
