function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
}

export CLICOLOR='true'
export TERM=xterm-256color
export LSCOLORS="gxfxcxdxcxegedabagacad"

export PS1="\[\e[31;0m\][\t]\w\$(parse_git_branch)\\$ \[\e[0m\]"

export SCALA_HOME=~/Scala-2.11.1/bin
export WORKON_HOME=~/Envs
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
export MATLAB_HOME="/Applications/MATLAB_R2014a.app/bin"
export MONGODB_HOME="~/MongoDB/mongodb-osx-x86_64-2.6.4/bin"
export NODEJS_HOME="~/NodeJS/bin"
export MYSQL_HOME="/usr/local/mysql/bin"
export MAVEN_OPTS="-Xmx512m"
export M2_HOME="~/apache-maven-3.0.5"
export M2="$M2_HOME/apache-maven/src/bin"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_11.jdk/Contents/Home"
export SPARK_HOME="/srv/spark/bin"
export RABBITMQ_HOME="~/rabbitmq_server-3.4.3/sbin"
export SBT_HOME="~/sbt/bin"
export PYENV_HOME="$HOME/.pyenv/bin"
export MINICONDA_HOME="$HOME/.pyenv/versions/miniconda-3.16.0/bin"

export PATH="$MINICONDA_HOME:$PYENV_HOME:$SCALA_HOME:$MONGODB_HOME:$JAVA_HOME:$MATLAB_HOME:$NODEJS_HOME:$MYSQL_HOME:$M2:~/bin:/usr/local/share/python:/usr/local/bin:$RABBITMQ_HOME:$SBT_HOME:$SPARK_HOME:~/bin:$PATH"

# Check if the file ~/.git-completion.bash is exist.
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

alias lab='ssh jhowliu@140.118.155.150 -p 9527'

alias notebook='ipython notebook --no-browser'
