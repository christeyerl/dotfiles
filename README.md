# Dotfiles

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually.

## Backup

If you're migrating from an existing Mac, you should first make sure to backup all of your existing data. Go through the checklist below to make sure you didn't forget anything before you migrate.

- Did you commit and push any changes/branches to your git repositories?
- Did you save all of your work from apps which aren't synced through iCloud?
- Did you remember to export important data from your local database?
- Did you save all of your SSH keys?

## Instalation

After backing up your old Mac you may now follow these install instructions to setup a new one.

1. Update macOS to the latest version through system preferences.
2. Copy existing or generate new SSH key.
3. Clone this repo to `~/.dotfiles` with:
```bash
git clone https://github.com/christeyerl/dotfiles.git ~/.dotfiles
```
4. Make the setup script executable
```bash
cd ~/.dotfiles && chmod +x fresh.sh
``` 
5. Run the instalation with:
```bash
cd ~/.dotfiles && ./fresh.sh
```
6. Restart your computer to finalize the process.
