PATH="$HOME/Documents/tools/jadx/build/jadx/bin:/opt/local/bin:/usr/local/Cellar/oniguruma/5.9.2:/usr/local/bin:$HOME/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/bin:$PATH"
export PATH
# git diff highlight
export PATH=$PATH:/opt/homebrew/share/git-core/contrib/diff-highlight

# Java
# export JAVA_HOME=`/usr/libexec/java_home -v 1.7.0_21`
export JAVA_HOME=$HOME/.sdkman/candidates/java/current
export PATH=$JAVA_HOME/bin:$PATH

# Android
export ANDROID_HOME=/Users/yutaro.iino/Library/Android/sdk
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/31.0.0:$PATH
export ADBHOST=10.0.1.12

# Virtualenvwrapper
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#export WORKON_HOME=$HOME/.virtualenvs
#source `which virtualenvwrapper.sh`

