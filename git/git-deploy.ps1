function deploy  { npm run deploy    }
function deploy-feature  { npm run deploy-feature  }
function deploy-broken  { npm run deploy-broken  }
function deploy-status  { npm run deploy-status  }

function gs       { git status }

function git-config-alias {
    git config --global -e
    git config --global alias.s status
    git config --global alias.d diff
    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.last "log -1 HEAD"
    git config --global alias.cmt "commit --amend --no-edit"
    git config --global alias.pr "pull --rebase"
    git config --global alias.log "log --graph --oneline --decorate -n 30"
}