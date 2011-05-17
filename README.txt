This setup has been tested only in Ubuntu.
You need some packages installed:
emacs-goodies-el
emacs-goodies-extra-el
git-core

Installation:
After cloning the repository, run this command to fetch some git submodules
git submodule update --init --recursive

Org-mode:
I'm using some features from org-mode 7.x so I need to install it manually.
cd vendor/org-mode
make
sudo make install

M-x org-version => 7.x

Rope for python:
I need to install pymacs for rope
cd vendor/pymacs-X
sudo make install
sudo pip install rope ropemode

Ack:
Ack is a great replacement for grep.
You need to install ack.
If you are using Ubuntu (or Debian I think) you have to install
the package ack-grep and create a link:
$ sudo link /usr/bin/ack-grep /usr/bin/ack

js2-mode:
emacs --batch --eval '(byte-compile-file "js2.el")'

pyflymake:
sudo pip install pep8 pylint pyflakes

That's all (I think)
