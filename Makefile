PROJECT= "FirstfML"
AUTHOR= "Tazim"
RELEASE= "0.0.0.1"

install:
	pip install -r requirements.txt


docs:
	echo "Generating Docs....." && \
	cd docs && \
	sphinx-quickstart -q -p ${PROJECT} -a ${AUTHOR} -r ${RELEASE} --ext-viewcode --ext-todo --ext-autodoc  && \
	cd .. && \
	cd my_py_pkg && \
	sphinx-apidoc -o  ../docs src/ 


.PHONY: docs
