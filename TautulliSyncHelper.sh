#!/bin/bash
cd "$(dirname "${BASH_SOURCE[0]}")"

if [[ ! -d venv ]]; then
	python3 -m venv venv
fi
./venv/bin/pip install -U pip
./venv/bin/pip install -r requirements.txt

/home/bas/git/PlexAniSync/venv/bin/python3 ./TautulliSyncHelper.py "$1"
