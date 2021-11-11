
installPhp() {
    local version=$1;
    sudo apt install php$version-{cli,fpm,mbstring,iconv,zip,curl,dom,xml,intl,gd,mysql}
}

changePhpVersion() {
    local version=$1;
    sudo update-alternatives --set php /usr/bin/php$version
}

alias install-php="installPhp"
alias set-php-version="changePhpVersion"