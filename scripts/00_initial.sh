# set variables
read -p 'Insert your email address (needed for the lock screen message) > ' email
read -p 'Insert your telephone number (needed for the lock screen message) > ' telephone
read -p 'Insert your first and last names (to be used with git) > ' name
read -p 'Insert your github username > ' github_username
read -p 'Insert your github email > ' github_email

# ask for the administrator password upfront
sudo -v

# keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &