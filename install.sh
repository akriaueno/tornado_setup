#!/bin/bash
mkdir -p $HOME/.scripts/setup/tornado
cp tornado_setup.sh template.py template.html template.css $HOME/.scripts/setup/tornado
echo "alias tornado_setup='source $HOME/.scripts/setup/tornado/tornado_setup.sh'" >> $HOME/.bashrc
source $HOME/.bashrc
