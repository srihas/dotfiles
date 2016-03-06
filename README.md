# dotfiles
Dotfiles for setting up dev


Install homesick (install rbenv if conflicts while installing gem)
------------------------------------------------------------------------------------
$ gem install homesick


Install rbenv to manage ruby versions and not disturb system installed ruby version.
------------------------------------------------------------------------------------
$ brew install rbenv

# list all available versions:
$ rbenv install -l

# install a Ruby version:
$ rbenv install 2.0.0-p648

$ gem install bundler

# Check the location where gems are being installed with gem env:
$ gem env home
# => ~/.rbenv/versions/<ruby-version>/lib/ruby/gems/...

Ref : https://github.com/rbenv/rbenv
