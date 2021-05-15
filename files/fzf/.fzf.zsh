# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# Theme
# ------------
[ -f $HOME/.fzf.theme ] && source $HOME/.fzf.theme

# Custom config
# ------------
# fzf + ag configuration
if command -v fzf>/dev/null && command -v ag>/dev/null; then
  export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
#   export FZF_DEFAULT_OPTS='
#     --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
#     --color info:108,prompt:109,spinner:108,pointer:168,marker:168
#   '
fi
