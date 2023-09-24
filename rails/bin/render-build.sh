#!/usr/bin/env bash
# exit on error
set -o errexit

put "Start rails/bin/render-build.sh"

put "cd rails"
cd rails

put "bundle install"
bundle install

put "bundle exec rails db:create"
bundle exec rails db:create

put "bundle exec rails db:migrate"
bundle exec rails db:migrate

put "bundle exec rails db:seed"
bundle exec rails db:seed
