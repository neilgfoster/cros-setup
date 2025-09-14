# cros-setup
This repository contains the setup scripts for configuring my ChromeOS Linux environment. I use ChromeOS Flex as my daily driver OS, and this repository helps me quickly set up a consistent development environment across different devices. It also allows me to easily powerwash and reconfigure my devices as needed, getting back to a functional state with minimal effort.

This repo does not actually contains the setup scripts themselves, but acts as the orchestrator for setting up my environment. The actual setup scripts are located in separate repositories, which are added as a remote and pulled in during the setup process. This allows for a modular and reusable approach to managing my ChromeOS setup.

## Referenced Repositories
- [base](https://github.com/neilgfoster/base): Base repository containing common setup scripts and configurations.
- [cros-base](https://github.com/neilgfoster/cros-base): Repository used as the template for creating any new ChromeOS setup repositories.
- [cros-development](https://github.com/neilgfoster/cros-development): Repository containing scripts for setting up my development environment on ChromeOS.

# Getting Started
1. Make sure you are in the directory where you want all repositories to be cloned.
2. Open the Chrome OS Linux terminal, then copy and paste the following text to download and run the setup scripts.
```bash
bash <(curl -sS https://raw.githubusercontent.com/neilgfoster/base/main/.setup/setup.sh) -o=neilgfoster -r=cros-setup
```