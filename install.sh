#!/bin/bash
SCRIPT=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPT`

1 ruby -v
2 gem --version
3 gem install nanoc
(to resolve the openssl errors)
4 ruby win_*.rb
   set SSL_CERT_FILE = d:///
5 gem list
(gem  install  bundle )--> if the bundle package is not installed
6 bundle -v
7 bundle install 
(there maybe some errors when install  redcarpet, the solution is to download the devkit)
   bundle show redcarpet
8 bundle exec ruhoh server 9292

when running the `ruhoh help/ version`, still have install some packages

gem install respec
gem install cucumber
gem install capybara

then everything is done, then you can run ruhoh console/help without 
bundle exec ruhoh help/console
