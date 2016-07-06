# WordPress + Docker Theme Development

This is an extension of the official Docker WordPress image that installs and mounts a theme for real-time development.

More info on the official repo is at https://github.com/docker-library/wordpress

## Installation

* Check out this repository

* Check out your theme repository

* Run docker-compose to start WordPress

* Once WordPress starts, configure it and activate your theme

Example:

```
git clone THIS_REPO_URL wp-docker-theme-dev
git clone MY_THEME_REPO_URL wp-theme
cd  wp-docker-theme-dev
docker-compose up -d
```
