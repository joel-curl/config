# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jcurl/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload promptinit
promptinit
prompt fire

export PATH="$HOME/.rbenv/shims:$PATH"
source ~/.bin/tmuxinator.zsh

export JAVA_HOME="/usr/lib/jvm/java-8-jdk"
export ANDROID_HOME="/opt/Android/Sdk"
export ADB_LOCATION="${ANDROID_HOME}/platform-tools"
alias appium="node ~/dev/appium/bin/appium.js --command-timeout '7200' --debug-log-spacing --log-timestamp --automation-name 'Appium' --platform-name 'Android' --platform-version '4.4' --dont-stop-app-on-reset --device-name 'spark plug' --suppress-adb-kill-server"
alias ls="ls --color=auto"

export UNAME=`uname -a`
case "$UNAME" in
	*Ubuntu* ) GOPATH=~/.ubuntu/go;;
	* ) 	GOPATH=~/.go;
		eval "$(rbenv init -)";;
esac
eval $(thefuck --alias)
export GOPATH
export CPLUS_INCLUDE_PATH=/home/jcurl/.usr/boost_1_59_0/libs
export LIBRARY_PATH="/usr/local/lib:/home/jcurl/.usr/boost_1_59_0/stage/lib"
export LD_LIBRARY_PATH=/home/jcurl/.usr/boost_1_59_0/stage/lib
export CQLSH_NO_BUNDLED=true
export PATH="${HOME}/.bin:/opt/chefdk/bin:/usr/local/bin:${HOME}/dev/cassandra/apache-cassandra-3.9/bin:${GOPATH}/bin:${HOME}/.gem/ruby/2.2.0/bin:${HOME}/.bin/node-webkit:/opt/android-studio/bin:/opt/Android/Sdk/platform-tools:/opt/Android/Sdk/tools:/opt/Android/android-ndk-r9d:${PATH}:/home/jcurl/tizen-sdk/tools:/opt/goland/bin:~/dev/spark-core-tools/bin"
export EDITOR="vim"
export TERM="xterm-256color"
alias rubymine="jetbrains-rubymine"
alias ffstream="ffmpeg -f avi -vcodec rawvideo -pix_fmt yuv420p -acodec pcm_alaw tcp://localhost:1234 -i $1"
eval "$(direnv hook zsh)"
alias gimmesomesugar="ssh honey"
alias gogogadgetengine="ssh jcurl@smedia-XPS-8900-3"
alias wipedb="cqlsh -e 'DROP KEYSPACE IF EXISTS acr;'; cqlsh -f ~/dev/sorenson-core/api/cassandraschema.cql"
