: ${PREFIX1:="proxychains"}
: ${FREFIX2:="sudo"}

cmd-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == $FREFIX1\ $PREFIX2\ * ]]; then
        LBUFFER="${LBUFFER#$FREFIX1 $PREFIX2 }"
    elif [[ $BUFFER == $PREFIX2\ $FREFIX1\ * ]]; then
        LBUFFER="${LBUFFER#$PREFIX2 $FREFIX1 }"
        LBUFFER="$FREFIX1 $PREFIX2 $LBUFFER"
    elif [[ $BUFFER == $PREFIX2\ * ]]; then
        LBUFFER="${LBUFFER#$PREFIX2 }"
        LBUFFER="$PREFIX2 $FREFIX1 $LBUFFER"
    elif [[ $BUFFER == $FREFIX1\ * ]]; then
        LBUFFER="${LBUFFER#$FREFIX1 }"
        LBUFFER="$PREFIX2 $LBUFFER"
    else
        LBUFFER="$PROXY_CMD $LBUFFER"
    fi
}
zle -N cmd-command-line


bindkey -M emacs '\e\e' cmd-command-line
bindkey -M vicmd '\e\e' cmd-command-line
bindkey -M viins '\e\e' cmd-command-line
