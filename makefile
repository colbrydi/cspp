RDIR= ./R
HTMLDOCDIR= ./doc
RDOCDIR= ./man
DATADIR= ./data

help:
	@echo ""
	@echo "Welcome to my project!!!"
	@echo "To get started create an environment using:"
	@echo "	make init"
	@echo "	conda activate ./envs"
	@echo ""
	@echo "To install this package through a terminal run:"
	@echo " make install"
	@echo ""
	@echo "To generate project documentation use:"
	@echo "	make doc"
	@echo ""
	@echo "To Lint the project use:"
	@echo "	make lint"
	@echo ""
	@echo "To run unit tests use:"
	@echo "	make test"
	@echo ""

init:
	conda env create --prefix ./envs --file environment.yml
	
install:
	Rscript install.R

doc:
	Rscript document.R
	@echo "R documentation now available in ./man directory"
	@echo "Rd files are standard for R libraries."
	@echo "HTML versions of the documentation are available in"
	@echo "./doc directory"

lint:
	Rscript linting.R

test:
	Rscript test.R

.PHONY: init doc lint test 

