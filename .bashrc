eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export SLS_DEBUG=true
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LESS='-R'

eval "$(direnv hook bash)"
alias python="python3"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/yamashitasatoshi/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/yamashitasatoshi/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/yamashitasatoshi/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/yamashitasatoshi/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/yamashitasatoshi/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/yamashitasatoshi/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash
