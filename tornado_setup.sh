#!/bin/sh

mkdir $1 # $1 is app-name
cd $1
/opt/python/versions/3.6.4/bin/python3 -m venv venv
source ./venv/bin/activate
pip install tornado
cp $HOME/.scripts/templates/tornado/template.py ./server.py
mkdir -p templates static/css
cp $HOME/.scripts/templates/tornado/template.html ./templates/index.html
cp $HOME/.scripts/templates/tornado/template.css ./static/css/style.css

