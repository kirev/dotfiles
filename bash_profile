# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh
#. /Volumes/Storage/Dropbox/development/GitHub/z/z.sh
# init rvm
#source ~/.rvm/scripts/rvm

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
# Tomcat Apache
#export CATALINA_HOME=/usr/local/Cellar/tomcat/7.0.40

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export PATH="/usr/local/git/bin/:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home)

export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

# enable color support of ls and also add handy aliases
#test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias ls="ls -FHG"
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

   # alias grep='grep --color=always'
   # alias fgrep='fgrep --color=always'
   # alias egrep='egrep --color=always'
# test -e ~/.dircolors && \ 
#    eval `dircolors -b ~/.dircolors`
# alias ls="ls --color=always" 
# alias grep="grep --color=always"
# alias egrep="egrep --color=always"
