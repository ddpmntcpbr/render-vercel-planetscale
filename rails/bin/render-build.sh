#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Start rails/bin/render-build.sh"

# echo "cd rails"
# cd rails

echo "bundle install"
bundle install

echo "bundle exec rails db:create"
bundle exec rails db:create

echo "bundle exec rails db:migrate"
bundle exec rails db:migrate

echo "bundle exec rails db:seed"
bundle exec rails db:seed
