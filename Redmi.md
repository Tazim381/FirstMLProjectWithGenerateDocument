This project creates a documentation of a ml project

Create Virtual Environtment

1. install conda
2. conda create --name myenv python=3.8
3. conda activate myenv //active virtual environtment

Install make

1. Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) //install choco

2. choco install make -y //install make
3. make --version

After installing make

1. make install //to install python package thats are defined into requirements.txt folder

make a src folder and module folter . write python code on module folder

Create a "docs" folder at the root folder
Goto docs folder and
To generate document Install

1. pip install sphinx
2. pip install sphinx-rtd-theme
3. sphinx-quickstart //start to write docs . then generate files and folder into the docs

Goto conf.py file and

1.  Change the theme to "sphinx_rtd_theme"

Add three extension to the conf.py file

1. "sphinx.ext.viewcode",
2. "sphinx.ext.todo",
3. "sphinx.ext.autodoc",

Import to build in package

1. import os
2. import sys

Insert to the system path in which file/folder that i want to make document

1. sys.path.insert(0,os.path.abspath("../my_py_pkg/src"))

Add "modules" into the index.rst file

Goto my_py_pkg folder and
To generate document insert

1. sphinx-apidoc -o ../docs src/ //output goes to docs foder and document generate from src folder

After inserting that command we see that .rst file is generated into docs folder

Goto "docs" folder
write

1. make html

this command make a html file and this file is out document file

Then we see that a index.html file is created under "\_build/html" folder then run this file .

To handle this issue smartly

1. Write a Makefile
   Makefile
   PROJECT= "FirstfML"
   AUTHOR= "Tazim"
   RELEASE= "0.0.0.1"

install:
pip install -r requirements.txt

docs:
echo "Generating Docs....." && \
 cd docs && \
 sphinx-quickstart -q -p ${PROJECT} -a ${AUTHOR} -r ${RELEASE} --ext-viewcode --ext-todo --ext-autodoc && \
 cd .. && \
 cd my_py_pkg && \
 sphinx-apidoc -o ../docs src/

.PHONY: docs

2. command "make docs "

3. Add those things to the docs/config.py

import os
import sys
sys.path.insert(0,os.path.abspath("../my_py_pkg/src"))

html_theme = 'sphinx_rtd_theme'

4. Add "modules" to the docs/index.rst file
   modules

5. cd docs
6. command "make html"

Finally generate html
