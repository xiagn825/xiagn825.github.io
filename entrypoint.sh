#!/bin/bash
bundle install
bundle update github-pages
bundle exec jekyll build --destination=/var/www/html
