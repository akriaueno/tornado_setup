#!/bin/bash
mkdir -p $HOME/.scripts/setup/tornado
cp tornado_setup.sh template.py template.html template.css $HOME/.scripts/setup/tornado
echo "alias tornado_setup='$HOME/.scripts/setup/tornado/tornado_setup.py'" >> $HOME/.bashrc
