# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Antigen based on AUR install
source /usr/share/zsh/share/antigen.zsh 

# Yarn node modules
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

# node modules
export PATH=/usr/local/share/npm/bin:$PATH

# N node path
export N_PREFIX=$HOME/.n

# NVM Init config
source /usr/share/nvm/init-nvm.sh

# source /home/h/.bash_profile
# source $HOME/.bashrc

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle git-flow
antigen bundle zsh-history-substring-search
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle buonomo/yarn-completion
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle zsh-users/zsh-completions
antigen bundle compleat
antigen bundle agkozak/zsh-z
antigen bundle $HOME/.oh-my-zsh/custom/plugins # add custom oh-my-zsh plugins

# Spaceship
antigen theme denysdovhan/spaceship-prompt

# Spaceship Settings
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  firebase      # Firebase section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Spaceship Right Config
SPACESHIP_RPROMPT_ORDER=(
  node          # Node.js section
  time          # Current time section
)

SPACESHIP_PROMPT_DEFAULT_PREFIX=''
SPACESHIP_GIT_PREFIX='' #  
SPACESHIP_GIT_SYMBOL=''
SPACESHIP_GIT_STATUS_PREFIX=''
SPACESHIP_GIT_STATUS_SUFFIX=''
SPACESHIP_PACKAGE_PREFIX=''
SPACESHIP_CHAR_SYMBOL='❯ '
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_PREFIX=''
SPACESHIP_FIREBASE_SYMBOL=''

# Tell Antigen that you're done.
antigen apply