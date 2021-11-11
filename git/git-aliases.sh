GIT_CONFIG_PERSONAL=$CURRENT_DIRECTORY/git/.gitconfig.personal
GIT_CONFIG_WORK=$CURRENT_DIRECTORY/git/.gitconfig.work

alias git-revert-config="mv -f ~/.gitconfig.back ~/.gitconfig"
alias git-config-personal="mv -f ~/.gitconfig ~/.gitconfig.back && cp -f $GIT_CONFIG_PERSONAL ~/.gitconfig"
alias git-config-work="mv ~/.gitconfig ~/.gitconfig.back && cp -f $GIT_CONFIG_WORK ~/.gitconfig"