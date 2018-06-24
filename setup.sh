#! /bin/bash
#$ -S /bin/sh
#$ -cwd





date

cd ~/tmp/jekyll_trial

echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

rbenv local 2.5.0
rbenv -v

gem install jekyll bundler
gem install github-pages







date