
# cros-setup

This repository orchestrates the setup of a ChromeOS Linux (Crostini) environment, with a focus on ChromeOS Flex. It provides scripts to automate the configuration of a consistent development environment across devices, making it easy to reconfigure or restore your setup after a powerwash.

## Purpose

`cros-setup` acts as the entry point and orchestrator for your ChromeOS environment setup. It does **not** contain all setup scripts directly; instead, it pulls in and executes scripts from referenced repositories, allowing for modular and reusable configuration.

## Repository Structure

- `.setup/setup.sh`: Main setup script. Handles argument parsing, environment checks, and orchestrates the setup process.
- `.setup/scripts/000-init.sh`: Installs essential packages (git, git-lfs), initializes git configuration, and sets up global user details.
- `.setup/scripts/001-gtk-dark-mode.sh`: Optionally applies a dark theme to GTK apps for improved UI consistency.
- `.setup/scripts/002-setup.sh`: Prompts for and executes setup scripts from referenced repositories (e.g., `cros-development`).
- `.setup/scripts/999-finalise.sh`: Displays final instructions and reminders (e.g., restarting the Crostini container).
- `.github/CODEOWNERS`: Declares repository ownership for GitHub automation.

## Referenced Repositories

These repositories contain the actual setup scripts and configurations that are pulled in and executed:

- [base](https://github.com/neilgfoster/base): Common setup scripts and configurations.
- [cros-base](https://github.com/neilgfoster/cros-base): Template for new ChromeOS setup repositories.
- [cros-development](https://github.com/neilgfoster/cros-development): Development environment setup scripts for ChromeOS.

## Setup Flow

1. **Initialization**: Installs essential tools and configures git.
2. **Optional UI Tweak**: Prompts to apply a dark GTK theme.
3. **Repository Setup**: Prompts to run setup scripts from referenced repositories, which are fetched and executed automatically.
4. **Finalization**: Displays instructions for restarting the Crostini container to apply changes.

## Getting Started

1. Open the ChromeOS Linux terminal and navigate to the directory where you want repositories to be cloned.
2. Run the following command to start the setup process:

```bash
bash <(curl -sS https://raw.githubusercontent.com/neilgfoster/cros-setup/main/.setup/setup.sh) -o=neilgfoster -r=cros-setup
```

Follow the prompts to complete your environment setup. You may be asked to confirm actions or provide information (e.g., git username/email).

## Notes

- The setup scripts are designed for Crostini (ChromeOS Linux) and may not work as intended outside this environment.
- You may need to restart your Crostini container after setup. See the final instructions for details.

---

Maintained by @neilgfoster