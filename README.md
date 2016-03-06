
# To setup my dotfiles configuration:

$ cd ~

$ git clone https://github.com/srihas/dotfiles

$ cd ~/dotfiles/srihas

* Update dot.bashrc, dot.bash_profile if checkout/clone directory is different from above mentioned


Run the bootstrap to link all the dot.<filename> files (dotfiles)

$ ./bootstrap.sh

To install utilities and applications using brew

$ ./brew.sh



# Install homesick (install rbenv if conflicts while installing gem)

$ gem install homesick

Ref : https://github.com/technicalpickles/homesick


# Install rbenv to manage ruby versions

$ brew install rbenv

list all available versions:

$ rbenv install -l

Install a Ruby version:

$ rbenv install 2.0.0-p648

$ gem install bundler

Check the location where gems are being installed with gem env:

$ gem env home

=> ~/.rbenv/versions/<ruby-version>/lib/ruby/gems/...

Ref : https://github.com/rbenv/rbenv
