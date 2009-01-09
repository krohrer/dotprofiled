#################################################################
# Define aliases
#################################################################

# alias see="pico"
alias sex="see -m xml"

alias cdwish="echo >> ~/Documents/Persoenliches/cd-wishlist.txt"
alias cdmore="cat ~/Documents/Persoenliches/cd-wishlist.txt"
alias cdgrep="cdmore | grep -i"
alias preview="open -a /Applications/Preview.app"
alias mydate="date \"+%y%m%d-%H%M\""
alias timestamp="date +%Y%m%d%H%M"

alias mysqlup="sudo /usr/local/mysql/bin/mysqld_safe && bg"
alias mysql="/usr/local/mysql/bin/mysql"
alias mysqladmin="/usr/local/mysql/bin/mysqladmin"

alias svnup="svnserve --daemon --root /Users/krohrer/Repository"

alias x11="open -a X11 && export DISPLAY=:0.0"

#################################################################
# Initialize environment
#################################################################

# RSync stuff
export RSYNC_RSH=$(which ssh)

# Workaround for broken lablgtk2 installation, which breaks on gdk-pixbuf-mlsource
export LIBRARY_PATH=.

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export DISPLAY=:0.0
export PATH=/Users/krohrer/godi/bin:/Users/krohrer/godi/sbin:$PATH

# Subversion needs this for various commands
alias osxemacs="open -a /Applications/MacPorts/Emacs.app"
export EDITOR=osxemacs
alias see="emacs"
alias e="emacs"

# Colored ls in OS X (builtin):
# export CLICOLOR=1

# Colored ls in GNU *nix (use GNU fileutils from MacPorts for OS X):
# I like COLORS! (May not be supported on all systems)
eval `gdircolors -b ~/.profile.d/DIR_COLORS`
alias ls="gls --color=auto"
export GREP_OPTIONS="--color"
