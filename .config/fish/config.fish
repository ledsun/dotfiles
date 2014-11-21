function fish_prompt
    printf '~ '
end

function fish_right_prompt
    git_prompt
end

function git_prompt
    if git rev-parse --show-toplevel >/dev/null 2>&1
        #setopt prompt_subst
        set_color magenta
        printf '['
        set_color green
        printf '%s' (git_current_branch)
        set_color magenta
        printf ']'
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
