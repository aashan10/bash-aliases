### Common Bash Aliases

Common bash alias under one roof.
This project works perfectly with bash.

### Installation

- Clone this repository under `~/.project`
- Add the following line to your `~/.bashrc` file.

```bash

source ~/.project/main.sh

```

### Warning - Use at your own risk!
Some aliases in this project work with modifying permissions, restarting and stopping system services and so on. 
Please go through the aliases one by one and only use the ones that you are confident on.

### Available Aliases

Following are the currently available aliases.

#### Manage Permissions
- `mpp` => `sudo chmod -R 777 .`

#### Systemctl
- `res` => `sudo systemctl restart $@` 
    - Requires system name as argument
    - Eg. `res nginx`

- `start` => `sudo systemctl start $@` 
    - Requires system name as argument
    - Eg. `start nginx`

- `stop` => `sudo systemctl stop $@` 
    - Requires system name as argument
    - Eg. `stop nginx`

- `stat` => `sudo systemctl status $@` 
    - Requires system name as argument
    - Eg. `stat nginx`

### Docker Compose Aliases

- `dc` => `sudo docker-compose`
- `dc-up` => `sudo docker-compose up -d`
- `dc-start` => `sudo docker-compose start`
- `dc-stop` => `sudo docker-compose stop`
- `dc-ex` => `sudo docker-compose exec`
- `ps` => `sudo docker-compose ps`

### Pimcore Console Alias
This uses Pimcores official docker-compose.yml for reference.
- `pim-console` => `sudo docker-compose exec php-fpm bin/console`
- `pim-cc` => `sudo docker-compose exec php-fpm bin/console cache:clear`

### Every Workflow Console Alias
This uses Everyworkflows official docker repository for reference.
- `ew-console` => `sudo docker-compose exec cli php /var/www/html/bin/console`

### Git Aliases
**Warning: Please back up your ~/.gitconfig file before using this feature.**

- `git-config-personal` => `mv -f ~/.gitconfig ~/.gitconfig.back && cp -f ./git/.gitconfig.personal ~/.gitconfig`
    This replaces the `~/.gitconfig` file with `.gitconfig.personal` inside the git directory
    

- `git-config-work` => `mv -f ~/.gitconfig ~/.gitconfig.back && cp -f ./git/.gitconfig.work ~/.gitconfig`
    This replaces the `~/.gitconfig` file with `.gitconfig.personal` inside the git directory


- `git-revert-config` => `mv -f ~/.gitconfig.back ~/.gitconfig`
    This replaces the `~/.gitconfig` file with `~/.gitconfig.back`

### PHP Aliases
- `install-php` => installs specified php version
    - requires php version number
    - Eg. `install-php 8.0`

- `set-php-version` => switches php version
    - requires php version number
    - Eg. `set-php-version 8.0`
    
