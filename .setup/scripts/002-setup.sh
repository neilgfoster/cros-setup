#!/bin/bash

# Error handling
set -e

# List of repositories to install
ORG=neilgfoster
REPOS=(
  cros-development
  cros-productivity
  cros-android
)

# Loop through each repository and execute its setup script
for REPO in "${REPOS[@]}"; do
  echo
  echo -e "${YELLOW}Switching context to the Repository: https://github.com/$ORG/$REPO${NC}"
  echo -ne "${YELLOW}Execute setup scripts from this repository? [Y]: ${NC}"
  read confirm < /dev/tty
  echo
  confirm=${confirm:-Y}
  if [[ ! $confirm =~ ^[Yy]$ ]]; then
    continue
  fi
  bash <(curl -sS https://raw.githubusercontent.com/${ORG}/${REPO}/main/.setup/setup.sh) -o=${ORG} -r=${REPO}
done