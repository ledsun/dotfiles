# for RubyMine
set PATH $HOME/.rbenv/bin/ $PATH
set PATH /usr/local/bin/ $PATH

# for rbenv
status --is-interactive; and source (rbenv init -|psub)

# Set keyboard layout US for WSLg
setxkbmap -layout us

