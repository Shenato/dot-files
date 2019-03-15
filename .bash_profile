export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH=/usr/local/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export GOPATH=$HOME/work/repos
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
