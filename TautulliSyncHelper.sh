#!/bin/bash
cd "$(dirname "${BASH_SOURCE[0]}")"

pip install -U pip
pip install -r requirements.txt

if [ $# -eq 0 ]; then
	python ./PlexAniSync.py
else
	python ./TautulliSyncHelper.py "$1"
fi
