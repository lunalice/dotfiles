eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(direnv hook bash)"
PATH=/Users/yamashitasatoshi/.Pokemon-Terminal:/Users/yamashitasatoshi/.nvm/versions/node/v8.5.0/bin:/Users/yamashitasatoshi/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
