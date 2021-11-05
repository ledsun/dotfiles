function fish_prompt
    printf '~ '
end

# function fish_right_prompt
#    git_prompt
#    set_color magenta
#    printf ' '
#    printf '%s' (echo $PWD | sed -e "s|^$HOME|~|" -e 's|^/private||')
# end

function git_prompt
    if git rev-parse --show-toplevel >/dev/null 2>&1
        set_color green
        printf '%s' (git_current_branch)
        set_color normal
    end
end

function git_current_branch -d 'Prints a human-readable representation of the current branch'
  set -l ref (git symbolic-ref HEAD ^/dev/null; or git rev-parse --short HEAD ^/dev/null)
  if test -n "$ref"
    echo $ref | sed -e s,refs/heads/,,
    return 0
  end
end


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/shigerunakajima/seven-trumpets/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/shigerunakajima/seven-trumpets/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/shigerunakajima/seven-trumpets/node_modules/tabtab/.completions/sls.fish ]; and . /Users/shigerunakajima/seven-trumpets/node_modules/tabtab/.completions/sls.fish
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shigerunakajima/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/shigerunakajima/Downloads/google-cloud-sdk/path.fish.inc'; end

# for RubyMine
set PATH /Users/shigerunakajima/.rbenv/bin/ $PATH
set PATH /usr/local/bin/ $PATH

status --is-interactive; and source (rbenv init -|psub)
