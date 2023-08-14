# ------------------------------------------------------------------------------
# Description
# -----------
#
# sudo or sudo -e (replacement for sudoedit) will be inserted before the command
#
# ------------------------------------------------------------------------------
# Authors
# -------
#
# * Dongweiming <ciici123@gmail.com>
# * Subhaditya Nath <github.com/subnut>
# * Marc Cornellà <github.com/mcornella>
# * Carlo Sala <carlosalag@protonmail.com>
#
# ------------------------------------------------------------------------------

sudo-proxychains-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == proxychains\ sudo\ * ]]; then
        LBUFFER="${LBUFFER#proxychains sudo }"
    elif [[ $BUFFER == sudo\ proxychains\ * ]]; then
        LBUFFER="${LBUFFER#sudo proxychains }"
        LBUFFER="proxychains sudo $LBUFFER"
    elif [[ $BUFFER == sudo\ * ]]; then
        LBUFFER="${LBUFFER#sudo }"
        LBUFFER="sudo proxychains $LBUFFER"
    elif [[ $BUFFER == proxychains\ * ]]; then
        LBUFFER="${LBUFFER#proxychains }"
        LBUFFER="sudo $LBUFFER"
    else
        LBUFFER="proxychains $LBUFFER"
    fi
}
zle -N sudo-proxychains-command-line

# 定义快捷键：[Esc] [Esc]
bindkey -M emacs '\e\e' sudo-proxychains-command-line
bindkey -M vicmd '\e\e' sudo-proxychains-command-line
bindkey -M viins '\e\e' sudo-proxychains-command-line
