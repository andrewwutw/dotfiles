
##
# DELUXE-USR-LOCAL-BIN-INSERT
# (do not remove this comment)
##
echo $PATH | grep -q -s "/usr/local/bin"
if [ $? -eq 1 ] ; then
    PATH=$PATH:/usr/local/bin
    export PATH
fi

# Add ~/bin into PATH
PATH=$PATH:~/bin

PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\W\[\e[00m\]\$ '

export LESS="-M"

# enable GCC 4.9.0 color in diagnostics.
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

#alias ls="gls -FG --color=auto"
alias ls="ls -FG"
alias grep="grep --color=auto"

# enable bash completion if using MacPorts bash. (version >= 4)
if [[ "$BASH_VERSINFO" -gt "3" ]]; then
  # https://trac.macports.org/wiki/howto/bash-completion
  if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
  fi
else
  # If using old OSX bash, only enable git completion.
  . /opt/local/share/bash-completion/completions/git
fi

# enable git bash prompt
if [ -f /opt/local/share/git/git-prompt.sh ]; then
  . /opt/local/share/git/git-prompt.sh
  PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\W\[\e[01;35m\]$(__git_ps1)\[\e[00m\]\$ '
fi

# enable bd script
alias bd=". ~/bin/bd -s"

# alias for kdiff
alias kdiff="/Applications/kdiff3.app/Contents/MacOS/kdiff3"

# Use MacHg bundled command line hg program.
#alias hg='/Applications/MacHg.app/Contents/Resources/localhg'
# Use virtualenv created hg program.
alias hg='~/hgenv/bin/hg'

# Use MacVim bundled vim
alias vim="~/bin/mvim -v"

function bin-diff {
  diff -u <( xxd -g1 $1) <( xxd -g1 $2)
}

##
# Your previous /Users/andrew/.profile file was backed up as /Users/andrew/.profile.macports-saved_2009-06-02_at_17:43:18
##

# MacPorts Installer addition on 2009-06-02_at_17:43:18: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-06-02_at_17:43:18: adding an appropriate MANPATH variable for use with MacPorts.
#export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.


##
# Your previous /Users/andrew/.profile file was backed up as /Users/andrew/.profile.macports-saved_2010-01-13_at_11:42:10
##

# MacPorts Installer addition on 2010-01-13_at_11:42:10: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/andrew/.profile file was backed up as /Users/andrew/.profile.macports-saved_2013-12-11_at_13:48:55
##

# MacPorts Installer addition on 2013-12-11_at_13:48:55: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/andrew/.profile file was backed up as /Users/andrew/.profile.macports-saved_2014-12-08_at_00:28:14
##

# MacPorts Installer addition on 2014-12-08_at_00:28:14: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

