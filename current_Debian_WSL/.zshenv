export COMPUTER="Debian_WSL"
export DOTNET_ROOT=$HOME/.dotnet
export PATH=~/.cargo/bin:~/bin:$DOTNET_ROOT:$DOTNET_ROOT/tools:$PATH

alias vim="nvim"
alias vid="neovide.exe --wsl"

source "$HOME/.cargo/env"
