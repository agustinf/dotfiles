# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:/usr/local/opt/go/libexec/bin:$PATH"

# RCM configuration file
export RCRC="$HOME/.dotfiles/rcrc"

# Set Encoding
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Keys config
[[ -f ~/.zshenv.keys ]] && source ~/.zshenv.keys
