#!/bin/bash

# Error handling
set -e

# List of repositories to install
ORG=neilgfoster
REPOS=(
  cros-development
  cros-productivity
)

# Loop through each repository and execute its setup script
for REPO in "${REPOS[@]}"; do
  echo
  echo -ne "${YELLOW}Execute setup scripts from repository $ORG/$REPO? [Y]: ${NC}"
  read confirm < /dev/tty
  echo
  confirm=${confirm:-Y}
  if [[ ! $confirm =~ ^[Yy]$ ]]; then
    continue
  fi
  bash <(curl -sS https://raw.githubusercontent.com/${ORG}/${REPO}/main/.setup/setup.sh) -o=${ORG} -r=${REPO}
done