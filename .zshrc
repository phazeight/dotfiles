# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

autoload -Uz compinit
compinit

## test chezmoi

# Path to your oh-my-zsh installation.
export ZSH="/Users/lthompson/.oh-my-zsh"

eval "$(zoxide init zsh)"

ssh-add --apple-load-keychain -q

autoload bashcompinit && bashcompinit
source /usr/local/etc/bash_completion.d/az

autoload -Uz run-help
autoload -Uz run-help-git
autoload -Uz run-help-svn
autoload -Uz run-help-svk
#unalias run-help
#alias help=run-help

alias cls=clear

alias path='echo "$PATH" | tr ":" "\n" | nl'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=28

# Uncomment the following line if pasting URLs and other text is messed up.
 DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  
  # adds a bunch of git aliases. See aliases here. https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git . Repo here https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git
  git 

  # docker autocompletions https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/docker
  docker 

  # shell command autocompletions https://github.com/zsh-users/zsh-autosuggestions
  zsh-autosuggestions 

  # aws cli autocompletions https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/aws
  aws 

  # color man pages https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/colored-man-pages
  colored-man-pages 

  # use ccat to syntax highlight "catted out filed" https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/colorize
  # NOTE: YOU MUST INSTALL `pygments` python package. Easiest way to do this is through `pip` python package manager.
  # Once you install it, restart terminal and you should be good.
  colorize

  # type "copyfile" to copy contents of a file to system clipboard. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/copyfile
  copyfile 

  # type "gi [TEMPLATENAME] >> .gitignore" using templates from https://www.gitignore.io/ to use one of the templates. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/gitignore
  gitignore

  # adds npm autocompletion as well as useful aliases https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm
  npm

  # adds "node-docs [libaryname]" command to open the documentation for that package https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm
  node

  # adds "extract [filename]" command to unzip compressed files like tar, zip, etc. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/extract
  extract

  # zoxide better version of cd, jumper I used to use
  zoxide

  # adds autojump navigation tool for navigating to directories.
  # use j "full or partial directory name" to go to that directory
  # or "jc" for child directory
  # or "jo" to open file manager to that directory
  # or "jco" to open file manager in child directory
  # https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/autojump

  # NOTE: For me, this by itself didn't work. I instead ran `brew install autojump` then put 
  # `[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh` at the bottom of this file.
  # FINAL NOTE: Commands will only work on directories which have been visited before as it uses history
  # autojump

  # adds aliases for opening finder window from terminal and others
  # "tab" - Opens current directory in new tab
  # "pfd" - Returns path of frontmost Finder window
  # "ofd" - Open current directory in Finder window
  # "cdf" - Change to current finder directory
  # "quick-look" Quick-Look a specified file
  # https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/osx
  macos
)

source /usr/local/share/antigen/antigen.zsh
# Bring in external plugins using Antigen
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle djui/alias-tips
# Apply antigen transformations
# All other antigen calls should be preceded by the "antigen apply" call
antigen apply

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

adgroup() {
  ldapsearch -o ldif-wrap=no -LLL -W -D "CN=Lucas Thompson,OU=staff,OU=Uptake Internal,DC=uptake,DC=com" -H ldaps://itsdc01.uptake.com:636 -s sub -b  'dc=uptake,dc=com' "sAMAccountName=${1:-$(whoami)}" "member"
}

aduser() {
  ldapsearch -o ldif-wrap=no -LLL -W -D "CN=Lucas Thompson,OU=staff,OU=Uptake Internal,DC=uptake,DC=com" -H ldaps://itsdc01.uptake.com:636 -s sub -b  'dc=uptake,dc=com' "sAMAccountName=${1:-$(whoami)}" "memberOf"
}

 function awsprofile ()
{
    PS3="Which AWS Profile: ";
    select PROFILE in $(cat ~/.aws/config |grep '\[' |sed -e 's/\[\(profile \)*//' -e 's/\]//'|sort);
    do
        export AWS_PROFILE="${PROFILE}";
        export AWS_REGION="us-east-1";
        break;
    done;
    PROFILE=$(grep -A9999 "profile ${AWS_PROFILE}" ~/.aws/config |grep region |sed -E 's/region ?= ?//' |head -n1);
    export AWS_REGION="${PROFILE}";
    echo -e "\nAWS_PROFILE = ${AWS_PROFILE}\nAWS_REGION = ${AWS_REGION}\n"
}

source <(kubectl completion zsh)

export PATH=/usr/local/bin/aws_completer:$PATH

PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"

export PATH=/Users/lthompson/repos/ops/bin:$PATH

export PATH=/Users/lthompson/bin:$PATH

export PATH=/Users/lthompson/go/bin:$PATH

export VAULT_ADDR=https://vault.production.control.uptake.run

export _ZO_ECHO='1'

complete -C '/usr/local/bin/aws_completer' aws

alias vaultg="vault login -method=ldap username=$(whoami)"

alias ctp="cheat -t personal"

alias lg='lazygit'

export PATH="/Users/lthompson/repos/scripts:${PATH}"

export GITHUB_TOKEN=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

up_ssh () {
    tsh --proxy=teleport.production.control.uptake.run ssh -l centos "$@"
}

alias rover='docker run --rm -it -p 9000:9000 -v $(pwd):/src im2nguyen/rover'

alias ll="ls -Fla"

alias infodocks='docker images && docker container list -a'

alias awc="export AWS_PROFILE=control"

alias cheatp="cheat -l -t personal"

alias stopdocks='docker stop $(docker ps -a -q)'

alias rmdocks='docker rm $(docker ps -a -q)'

# alias vaultboy='./repos/scripts/vault_browser.sh'

alias vaultboy='~/sandbox/jon_a_scripts/scripts/shell_scripts/vault_browser.sh'

alias prof='echo $AWS_PROFILE'

alias k='kubectl'

alias rzsh='source ~/.zshrc'

alias awsp='cat ~/.aws/config | grep profile'

alias kc='kubectl config'
fpath=(~/.zsh.d/ $fpath)

alias tfg='terraform plan -out=plan.out && terraform show -json plan.out > plan.json && mv plan.json ~/sandbox/visual_plans && rm plan.out'

alias tfv='terraform validate'

alias tfshow='terraform-visual --plan ~/sandbox/visual_plans/plan.json && open terraform-visual-report/index.html'

alias tfi='terraform init --upgrade'

alias tfvp='terraform validate && terraform plan -out tfplan'

alias tfp='terraform plan -out tfplan'

alias tfa='terraform apply "tfplan"'

alias tfc='rm -rf .terraform && ll'

alias tff='cd ~/repos/cloud-scaffolding/ && terraform fmt -recursive ./'

alias sshme='ssh-add --apple-use-keychain ~/.ssh/id_ed25519 & ssh-add ~/.ssh/id_rsa'

alias mydotfiles='git --git-dir=$HOME/.my-dotfiles/ --work-tree=$HOME'

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

complete -o nospace -C /usr/local/bin/vault vault

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

