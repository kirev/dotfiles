# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults
export PATH="/usr/local/opt/apr/bin:${PATH}"
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/git/bin/:$PATH"
#export JAVA_HOME=$(/usr/libexec/java_home)
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin
export PATH="/usr/bin/python:${PATH}"
export PATH="$HOME/scripts/:$PATH"

export PATH="$HOME/go/bin/:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"
#Fix issue with tmux session
export EVENT_NOKQUEUE=1

export GITHUB_TOKEN=dcaafac38882492e24b5a2109d2d3aebc57183cc
#alias ls="ls -FHG"
export BASH_SILENCE_DEPRECATION_WARNING=1
