# based on: 
# https://github.com/rmrs/firebase-zsh
# https://github.com/manhluong/firebase_zsh
# https://github.com/ittus/firebase-prompt

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------
SPACESHIP_FIREBASE_SHOW="${SPACESHIP_FIREBASE_SHOW=true}"
SPACESHIP_FIREBASE_PREFIX="${SPACESHIP_FIREBASE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_FIREBASE_SUFFIX="${SPACESHIP_FIREBASE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_FIREBASE_SYMBOL="${SPACESHIP_FIREBASE_SYMBOL="🐘 "}"
SPACESHIP_FIREBASE_DEFAULT_VERSION="${SPACESHIP_FIREBASE_DEFAULT_VERSION=""}"
SPACESHIP_FIREBASE_COLOR="${SPACESHIP_FIREBASE_COLOR="yellow"}"

function is_firebase_project() {
  if [[ -e ./firebase.json ]]; then 
    echo 1
  fi
}

function firebase_exists() {
  if hash firebase 2>/dev/null; then
    echo 1
  fi
}

function is_logged_in() {
  # if logged in EMAIL holds the email; otherwise null
  local EMAIL=$(timeout -s KILL 1 firebase login | grep "Already logged in as" | awk 'END {print $NF}')
  echo $EMAIL
}

function is_logged_in_static() {
  local EMAIL=$(grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" ~/.config/configstore/firebase-tools.json)
  echo $EMAIL
}

function current_project_id() {
  local CURRENT=$(firebase list | grep "(current)" | sed 's/│/|/g' | cut -d'|' -f3 | sed 's/[[:space:]]//g')
  echo $CURRENT
}

function prompt_firebase() {
  fb_project=$(grep \"$(pwd)\" ~/.config/configstore/firebase-tools.json | cut -d" " -f2 | cut -d'"' -f2)
  if [[ -n $fb_project ]]; then
    # prompt_segment red black $fb_project
    # echo -n $fb_project
    echo $fb_project
    # echo -n %{$fg[yellow]%}"[$fb_project]"%{$reset_color%}
  fi
}

function detect_firebase_project_root() {
  local project_root_path=$(pwd)
  while [[ "$project_root_path" != "" && ! -e "$project_root_path/firebase.json" ]]; do
    echo "$project_root_path"
    project_root_path=${project_root_path%/*}
  done
  echo "$project_root_path"
}

# Same as prompt_firebase() but with detect_firebase_project_root()
function firebase_prompt_info() {
  local active_project=$(grep \"$(detect_firebase_project_root)\" ~/.config/configstore/firebase-tools.json | awk -F'[ ,]' '{print $2}')
  if [[ -n $active_project ]]; then
    echo "$active_project"
  fi
}


# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------
function firebase_status_eastwood() {
  if [ $(is_firebase_project) ] && [ $(firebase_exists) ] ; then
    local EMAIL=$(is_logged_in_static)
    if [ -z "$EMAIL" ]; then
      EMAIL="not_signed_in"
    fi
    echo -n %{$fg[yellow]%}"[$EMAIL]"%{$reset_color%}
  fi
}

function firebase_status_robbyrussell() {
  if [ $(is_firebase_project) ] && [ $(firebase_exists) ] ; then
    local EMAIL=$(is_logged_in_static)
    if [ -z "$EMAIL" ]; then
      EMAIL="not_signed_in"
    fi
    echo -n %{$fg_bold[yellow]%}"$EMAIL"%{$reset_color%}
  fi
}

function spaceship_firebase() {
  local 'fb_project'
  fb_project=$(grep \"$(pwd)\" ~/.config/configstore/firebase-tools.json | cut -d" " -f2 | cut -d'"' -f2)
  if [[ -n $fb_project ]]; then
    spaceship::section \
        "$SPACESHIP_FIREBASE_COLOR" \
        "$SPACESHIP_FIREBASE_PREFIX" \
        "${SPACESHIP_FIREBASE_SYMBOL}${fb_project} " \
        "$SPACESHIP_FIREBASE_SUFFIX"
  fi
}
