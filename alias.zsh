# Shortcuts
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'

# Directories
alias archive="cd $HOME/Developer/Archive"
alias dotfiles="cd $DOTFILES"
alias playground="cd $HOME/Developer/Playground"
alias sites="cd $HOME/Developer/Sites"

# Laravel
alias a="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias seed="php artisan db:seed"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit 'Work in progress'"
