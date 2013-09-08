# lyc preference
function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
export PS1='[\u@\h:\W]\[\e[1;32m\]$(parse_git_branch)\[\e[0m\]$ '
PATH=~/bin/:$PATH
