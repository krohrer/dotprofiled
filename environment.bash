# RSync stuff
export RSYNC_RSH=$(which ssh)

# Workaround for broken lablgtk2 installation, which breaks on gdk-pixbuf-mlsource
export LIBRARY_PATH=.

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export DISPLAY=:0.0
export PATH=/Users/krohrer/godi/bin:/Users/krohrer/godi/sbin:$PATH

# Subversion needs this for various commands
export EDITOR=osxemacs

# Colored ls in OS X (builtin):
# export CLICOLOR=1

# Colored ls in GNU *nix (use GNU fileutils from MacPorts for OS X):
# I like COLORS! (May not be supported on all systems)
eval `gdircolors -b ~/.profile.d/DIR_COLORS`
alias ls="gls --color=auto"
export GREP_OPTIONS="--color"
