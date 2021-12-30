# PATH
export PATH="$HOME/.rbenv/shims:/usr/local/sbin:$HOME/bin:/usr/local/opt/imagemagick@6/bin:$HOME/.cargo/bin:/usr/local/opt/openssl@1.1/bin:$PATH"

# Option
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Alias
alias ls="ls -G"
alias ll="ls -l"
alias la="ll -a"

# alias vi="/usr/local/bin/vim"
# alias vim="vi"

alias dsstore_ls="find . -name '.DS_Store' -type f"
alias dsstore_rm="dsstore_ls -delete"

alias ssh="~/bin/ssh-change-profile.sh"

# starship
eval "$(starship init zsh)"

# asdf
. $(brew --prefix asdf)/libexec/asdf.sh
