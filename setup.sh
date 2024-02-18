#!/bin/bash
echo "Start setup autoGPT"
if ! command -v python3 &> /dev/null
then
    echo "python3 could not be found"
    echo "Installing python3 using pyenv..."
    if ! command -v pyenv &> /dev/null
    then
        echo "pyenv could not be found"
        echo "Installing pyenv..."
        curl https://pyenv.run | bash
    fi
    pyenv install 3.11.5
    pyenv global 3.11.5
fi

if ! command -v poetry &> /dev/null
then
    echo "poetry could not be found"
    echo "Installing poetry..."
    curl -sSL https://install.python-poetry.org | python3 -
fi