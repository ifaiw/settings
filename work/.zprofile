# Don't know if this should be at the top of this file or at the bottom
# Also not sure if it's needed: source ~/.zshrc

source ~/.env.carta

export PATH=$PATH:~/scripts:~/scripts_python:~/bin

export KUBECONFIG=$HOME/.kube/config:$HOME/.kube/banyan

export JAVA14_HOME=/usr/local/Cellar/openjdk/14.0.1/libexec/openjdk.jdk/Contents/Home
export JAVA8_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export JAVA_HOME=$JAVA14_HOME
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GOPATH=$HOME/Go
export GOBIN=$GOPATH/bin
export HOMEBREW_GITHUB_API_TOKEN="REDACTED"
export ANDROID_HOME=/Users/menss/Library/Android/sdk
export STUDIO_JDK=$JAVA8_HOME
export CDPATH=$CDPATH:$GOPATH/src

export PROMPT_COMMAND="echo -ne '\033]0;${USER}@${HOSTNAME}\007';$PROMPT_COMMAND"

export AWS_DEFAULT_REGION=us-east-1

alias fg='~/scripts/fgrep'
alias tw='open -a /Applications/BBEdit.app'
alias rv='~/scripts/review'
alias gc='git cherry-pick'
alias grc='git rebase --continue'
alias gcpc='git cherry-pick --continue'
alias mskip='mvn install -DskipTests'
alias mcskip='mvn clean install -DskipTests'
alias dshort="git b -D short"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias cdock='docker rm $(docker ps -aq) --force'
alias kx=kubectx
alias k=kubectl
alias ldown="ls -1t ~/Downloads | head -n 1"
alias testcirc='circleci config validate'
alias activate='. .venv/bin/activate'
alias banyan-nonprod='banyanproxy -l 55091 non-prod-redshift--ciqw3xmgnjql--us-east-1.redshift.banyands.carta.team 8443'
alias banyan-prod='banyanproxy -l 55092 prod-redshift--ciqw3xmgnjql--us-east-1.redshift.banyands.carta.team 8443'
alias banyan-airflow-history='banyanproxy -l 55093 nonprod-airflow-database--cvbehvdzebsc--us-east-1.rds.banyands.carta.team 8443'
alias pbprod='pbcopy < ~/temp/.envrc.airflow.prod-error'
alias hlist='helm list --all'
alias airflow-unittest='docker-compose -f config/compose/_unittest.yml run --rm unittest'
alias fix-google-perms='psql-nonprod < ~/temp/google-sheets-permissions.sql'
alias source-aws='source ~/scripts/aws-env'
alias gitlog='git log | less -iXFR'
alias gitlogh="git log | head -n40"
alias env-nonprod="source ~/keybase/team/carta_ds/ds-redshift/.envrc.nonprod"
alias env-prod="source ~/keybase/team/carta_ds/ds-redshift/.envrc.prod"
alias ftable="lstables | grep"
alias pushtags="git push -f origin --tags"
alias fcol="cat ~/temp/model-fund-dimensions-july2021/columns-with-tablenames.txt| grep"
alias puser="psql-nonprod -c '\du' | grep"
alias up="docker compose up -d"
alias down="docker compose down"
alias build="docker build ."
alias pulls='stash && pull && pop'
alias grest='git restore'
alias unstage='git restore --staged'
alias ca="conda activate $(pwd | grep -o '[a-z\-]*$')"
alias pn='psql-nonprod -c'
alias pp='psql-prod -c'
alias vair='kubectl get pods | grep airflow | grep -v Evicted | grep -v Completed'
alias gi="grep -i"
alias gv="grep -v"
alias kpodstime="kubectl get po --sort-by=.status.startTime"
alias kxds="kubectx data-science.carta.dev"
alias kxccmx="kubectx teleport-data"
alias kpods="kubectl get pods | --sort-by=.status.startTime"
alias gthings="cat ~/Documents/Things\ To\ Do\ Carta.txt| gi"
alias dedupe="python /Users/matthewenss/scripts_python/dedupe.py"
alias tlogin="tsh login --proxy=teleport.management.carta.rocks"
alias teleport='tsh login --proxy=teleport.management.carta.rocks'
alias pjq='pbpaste | jq | pbcopy'
alias mancreate='echo "conda create --name py35 python=3.5"'
alias cact="~/scripts/cact.sh && source ~/scripts/conda-activate-generated-script.sh"
alias knkafka="kname carta-main-kafka-connect"

function kall {
  for i in $(kubectl api-resources --verbs=list --namespaced -o name | grep -v "events.events.k8s.io" | grep -v "events" | sort | uniq); do
    echo "Resource:" $i
    kubectl -n ${1} get --ignore-not-found ${i}
  done
}


#__git_complete  __git_main
# __git_complete jj _git_checkout
#__git_complete gm __git_merge
#__git_complete gp _git_pull

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$ANDROID_HOME/tools/bin


# added by Snowflake SnowSQL installer v1.2
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

# Maven
export PATH=~/installs/apache-maven-3.9.9/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"
