#!/bin/bash
set -exo pipefail
API_URL="https://api.github.com"

USERNAME=$username
TOKEN=$token


REPO_OWNER=$1
REPO_NAME=$2

function github_api_get {
  local endpoint="$1"
  # local url="${API_URL}/${endpoint}"
    local url="${API_URL}/${endpoint}"

  curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

function list_users_with_read_access {
   local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
   collaborators="$(github_api_get "$endpoint")"
   echo $collaborators
   echo "$(github_api_get)"
   
}

list_users_with_read_access
