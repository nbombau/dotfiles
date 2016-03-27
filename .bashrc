function host_or_branch() {
    branch=$(__git_ps1)
    if [ -z "$branch" ]; then
        echo $(hostname)
    else
        echo $branch
    fi
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@$(host_or_branch)\[\033[01;34m\] \w \$\[\033[00m\] '
