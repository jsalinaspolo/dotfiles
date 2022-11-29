source ~/.zsh/antigen.zsh
source ~/.zsh/sdkman.zsh
source ~/.zsh/k8s.zsh

unalias gk

alias dk='docker kill $(docker ps -q) && docker rm $(docker ps -qa) && docker volume rm $(docker volume ls -q)'
alias ops='eval $(op signin auth0)'

export PATH=$PATH:$(go env GOPATH)/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# strap:straprc:begin
[ -r "$HOME/.strap/etc/straprc" ] && . "$HOME/.strap/etc/straprc"
# strap:straprc:end

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jsalinas/.sdkman"
[[ -s "/Users/jsalinas/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jsalinas/.sdkman/bin/sdkman-init.sh"

