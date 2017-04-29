#!/bin/bash

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
    export PYENV_VERSION_STRING="Python ${PYENV_VERSION}"
    wget https://github.com/praekeltfoundation/travis-pyenv/releases/download/0.3.0/setup-pyenv.sh
    source setup-pyenv.sh
fi

which python

if [[ $RUN_FLAKE ]]; then python -m pip install flake8; fi
python -m pip install wheel
CC=gcc python setup.py develop
