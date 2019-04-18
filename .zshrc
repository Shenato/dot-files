# Created by newuser for 5.6.2
# Set up the prompt
source //usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh
source ~/.bash_profile

# Load the oh my zsh
antigen use oh-my-zsh

# Bundles from robbyrussel
antigen bundle git
antigen bundle command-not-found

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Load theme
# ZSH_THEME="robbyrussell"
antigen theme agnoster

antigen apply

alias tmux='tmux -2'

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH=/usr/local/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export GOPATH=$HOME/work/repos
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

export PATH="$PATH:/Users/omarelgaml/work/repos/mac-scripts"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export WINIT_HIDPI_FACTOR=1.0
export ANDROID_HOME=~/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools


if [ -f ~/.ssh/agent.env ] ; then
  . ~/.ssh/agent.env > /dev/null
  if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
    echo "Stale agent file found. Spawning new agent… "
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add
  fi
else
  echo "Starting ssh-agent"
  eval `ssh-agent | tee ~/.ssh/agent.env`
  ssh-add
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/omarelgaml/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/omarelgaml/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/omarelgaml/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/omarelgaml/google-cloud-sdk/completion.zsh.inc'; fi
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
