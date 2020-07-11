.DEFAULT_GOAL := help

install-requirements: ## install requirements
	pip install -r requirements.txt

run-jupyter: ## start jupyter notebook server
	jupyter notebook

help: ## show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
