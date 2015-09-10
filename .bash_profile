export PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH"
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin
export PATH=$PATH:/Users/tareqfadel/Library/Android/sdk/platform-tools/
export PATH=$PATH:/Users/tareqfadel/Library/Android/sdk/tools/
export PATH=$PATH:/Users/tareqfadel/Library/gradle/bin
export PATH=$PATH:/usr/local/apache-maven-3.3.3/bin
export PATH=$PATH:/usr/local/mysql/bin/



function setjdk() {  
  if [ $# -ne 0 ]; then  
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'  
   if [ -n "${JAVA_HOME+x}" ]; then  
    removeFromPath $JAVA_HOME  
   fi  
   export JAVA_HOME=`/usr/libexec/java_home -v $@`  
   export PATH=$JAVA_HOME/bin:$PATH  
  fi  
  echo JAVA_HOME set to $JAVA_HOME  
  java -version  
 }  
 function removeFromPath() {  
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")  
 }

# Enable tab completion
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
cyan="\[\033[0;36m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$cyan \W $ $reset"
#Hierarchy Viewer Variable
export ANDROID_HVPROTO=ddm


alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

