# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/shigerunakajima/seven-trumpets/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/shigerunakajima/seven-trumpets/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/shigerunakajima/seven-trumpets/node_modules/tabtab/.completions/sls.fish ]; and . /Users/shigerunakajima/seven-trumpets/node_modules/tabtab/.completions/sls.fish
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shigerunakajima/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/shigerunakajima/Downloads/google-cloud-sdk/path.fish.inc'; end

# for RubyMine
set PATH $HOME/.rbenv/bin/ $PATH
set PATH /usr/local/bin/ $PATH

status --is-interactive; and source (rbenv init -|psub)
