# MAC PORTS
##############################################################################

# Adding an appropriate PATH variable for use with MacPorts, if installed.
if [ -r /opt/local ]
then
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
fi

# RSync stuff
export RSYNC_RSH=$(which ssh)

export DISPLAY=:0.0

# COLORED OUTPUT
##############################################################################

# Colored ls in OS X (builtin):
# export CLICOLOR=1

# Colored ls in GNU *nix (use GNU fileutils from MacPorts for OS X):
# I like COLORS! (May not be supported on all systems)
eval `gdircolors -b ~/.profile.d/DIR_COLORS`
alias ls="gls --color=auto"
export GREP_OPTIONS="--color"

# OCAML
##############################################################################

alias ocaml-libdir="ocamlc -where"

# TEXTEDITING
##############################################################################

# Subversion needs this for various commands
export EDITOR="open -a /Applications/MacPorts/Emacs.app"

alias sex="see -m xml"

alias osxemacs="open -a /Applications/MacPorts/Emacs.app"

# MISC
##############################################################################

alias cdwish="echo >> ~/Documents/Persoenliches/cd-wishlist.txt"
alias cdmore="cat ~/Documents/Persoenliches/cd-wishlist.txt"
alias cdgrep="cdmore | grep -i"
alias preview="open -a /Applications/Preview.app"
alias mydate="date \"+%y%m%d-%H%M\""
alias timestamp="date +%Y%m%d%H%M"
alias gst="git status"
alias gff="git diff"

# SQL
##############################################################################

#alias mysqlup="sudo /usr/local/mysql/bin/mysqld_safe && bg"
#alias mysql="/usr/local/mysql/bin/mysql"
#alias mysqladmin="/usr/local/mysql/bin/mysqladmin"

#alias svnup="svnserve --daemon --root /Users/krohrer/Repository"

alias x11="open -a X11 && export DISPLAY=:0.0"

