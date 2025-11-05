source ~/.zsh/antigen.zsh
source ~/.zsh/sdkman.zsh
source ~/.zsh/k8s.zsh

unalias gk

alias dk='docker kill $(docker ps -q) && docker rm $(docker ps -qa) && docker volume rm $(docker volume ls -q)'
alias ops='eval $(op signin auth0)'

export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
 
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# strap:straprc:begin
[ -r "$HOME/.strap/etc/straprc" ] && . "$HOME/.strap/etc/straprc"
# strap:straprc:end



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jsalinas/.sdkman"
[[ -s "/Users/jsalinas/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jsalinas/.sdkman/bin/sdkman-init.sh"

