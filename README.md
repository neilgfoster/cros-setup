
# cros-setup

This repository orchestrates the setup of a ChromeOS Linux (Crostini) environment, including ChromeOS Flex. It provides modular scripts to automate the configuration of a consistent development environment, making it easy to reconfigure or restore your setup after a powerwash.

## Purpose

`cros-setup` acts as the entry point and orchestrator for your ChromeOS environment setup. It contains essential scripts for initial configuration and can pull in and execute setup scripts from referenced repositories, allowing for modular and reusable configuration.


## Repository Structure

- `.setup/setup.sh`: Main setup script. Handles argument parsing, environment checks, and orchestrates the setup process. It executes all numbered scripts in `.setup/scripts/` in order.
- `.setup/scripts/000-init.sh`: Installs essential packages (git, git-lfs), initializes git configuration, and sets up global user details.
- `.setup/scripts/001-gtk-dark-mode.sh`: Optionally applies a dark theme to GTK apps for improved UI consistency (uses Adwaita-dark theme).
- `.setup/scripts/002-setup.sh`: Prompts for and executes setup scripts from referenced repositories (e.g., `cros-development`, `cros-productivity`, `cros-android`).
- `.github/CODEOWNERS`: Declares repository ownership for GitHub automation.

> **Note:** There is currently no `.setup/scripts/999-finalise.sh` in this repository.

## Referenced Repositories

These repositories contain additional setup scripts and configurations that may be pulled in and executed:
- [cros-development](https://github.com/neilgfoster/cros-development): Development environment setup scripts for ChromeOS.
- [cros-productivity](https://github.com/neilgfoster/cros-productivity): Productivity tools and configurations for ChromeOS.
- [cros-android](https://github.com/neilgfoster/cros-android): Android development environment setup scripts for ChromeOS.


## Setup Flow

1. **Initialization**: Installs essential tools and configures git (via `000-init.sh`).
2. **Optional UI Tweak**: Prompts to apply a dark GTK theme (via `001-gtk-dark-mode.sh`).
3. **Repository Setup**: Prompts to run setup scripts from referenced repositories, which are fetched and executed automatically (via `002-setup.sh`).


## Getting Started

1. Open the ChromeOS Linux terminal and navigate to the directory where you want repositories to be cloned.
2. Run the following command to start the setup process:

```bash
bash <(curl -sS https://raw.githubusercontent.com/neilgfoster/cros-setup/main/.setup/setup.sh) -o=neilgfoster -r=cros-setup
```


Follow the prompts to complete your environment setup. You may be asked to confirm actions or provide information (e.g., git username/email). You will also be prompted to run setup scripts from referenced repositories. The GTK dark mode option uses the Adwaita-dark theme.

## Notes

- The setup scripts are designed for Crostini (ChromeOS Linux) and may not work as intended outside this environment.

---
Maintained by @neilgfoster