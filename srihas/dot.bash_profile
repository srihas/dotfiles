# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
    source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/dotfiles/srihas/bin" ] ; then
    PATH="${HOME}/dotfiles/srihas/bin:${PATH}"
fi
PATH=".:${PATH}"

# Place user local stuff here
if [ -f "${HOME}/.localrc" ] ; then
    source "${HOME}/.localrc"
fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

# Init rbenv
eval "$(rbenv init -)"
