# ZSH plugins
plugins=(
    zsh-autosuggestions
    git
)

# Path to your oh-my-zsh installation.
export ZSH="/Users/clov/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"
# ZSH_THEME="agnoster"

# Load oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Set username
export DEFAULT_USER=`whoami`

# Set aliases
# docker  stop & remove all containers -- TODO
# git update all repos                 -- TODO

# Java setup -- using adoptopenjdk
jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
 }

# Golang setup
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

# Rust setup
export PATH=$PATH:$HOME/.cargo/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fix: Homebrew's sbin was not found in your PATH
export PATH="/usr/local/sbin:$PATH"

# Fix: To remove pipenv warnings
export PATH="$PATH:$HOME/.local/bin"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Colorful cows on your terminal
fortune | cowsay | lolcat --seed 0 --spread 1.0

# To manage Python version
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# To activate syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
