#!/bin/bash

# Error handling
set -e

# List of repositories to install
repos=(
  cros-development
)

# Loop through each repository and execute its setup script
for repo in "${repos[@]}"; do
  echo
  echo -ne "${YELLOW}Proceed with executing setup script from $repo? [Y]: ${NC}"
  read confirm < /dev/tty
  echo
  confirm=${confirm:-Y}
  if [[ ! $confirm =~ ^[Yy]$ ]]; then
    continue
  fi
  bash <(curl -sS https://raw.githubusercontent.com/neilgfoster/${repo}/main/.setup/setup.sh) -o=neilgfoster -r=${repo}
done