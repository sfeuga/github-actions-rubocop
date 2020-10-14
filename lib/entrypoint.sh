#!/bin/sh

set -e

gem install rubocop
gem install rubocop-performance
gem install rubocop-rails
gem install rubocop-rspec

ruby /action/lib/index.rb
