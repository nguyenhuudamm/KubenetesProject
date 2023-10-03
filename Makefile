## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	python3 -m venv ~/.KubernetesProject

install:
	python3 -m pip install --upgrade pip
	pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

validate-circleci:
	./circleci config process .circleci/config.yml

run-circleci-local:
	./circleci local execute -c .circleci/config.yml build

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
