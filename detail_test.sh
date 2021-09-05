#!/usr/bin/env bash
sudo python3 setup.py install > /dev/null
python3 -m mkdocs new temptestproject
pushd temptestproject > /dev/null
echo "plugins:" >> mkdocs.yml  > /dev/null
echo "    - your-plugin" >> mkdocs.yml > /dev/null
timeout -sINT 5 python3 -m mkdocs serve
popd > /dev/null
rm -rf temptestproject 
