# PATH
export PATH="$HOME/.rbenv/shims:/usr/local/sbin:$HOME/bin:/usr/local/opt/imagemagick@6/bin:$HOME/.cargo/bin:$PATH"

# zplug
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load


# Option
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
export LSCOLORS=exfxcxdxbxegedabagacDx


# Alias
alias ls="ls -G"
alias ll="ls -l"
alias la="ll -a"

# alias vi="/usr/local/bin/vim"
# alias vim="vi"

alias dsstore_ls="find . -name '.DS_Store' -type f"
alias dsstore_rm="dsstore_ls -delete"

# Java
jdk() {
  version=$1
  export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
  java -version
}

# env
eval "$(rbenv init -)"
eval "$(nodenv init -)"

