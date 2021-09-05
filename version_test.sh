#!/usr/bin/env bash

VERSION_LIST=(
3.6.14
3.7.11
3.8.12
3.9.7
)

function test_version () {
  local version=$1
  echo /_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  echo start test for $version version
  echo /_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/ 
  echo -----------------------------------------------
  echo Setup environment
  echo -----------------------------------------------
  pyenv install $version -s > /dev/null
  pyenv local $version > /dev/null
  pyenv exec pip install -r requirements.txt > /dev/null

  echo -----------------------------------------------
  echo Create project
  echo -----------------------------------------------
  pyenv exec python setup.py install --record files.txt > /dev/null
  pyenv exec mkdocs new testdoc > /dev/null
  echo "plugins:" >> mkdocs.yml  > /dev/null
  echo "    - your-plugin" >> mkdocs.yml > /dev/null

  echo -----------------------------------------------
  echo Test
  echo -----------------------------------------------
  # type check
  pyenv exec mypy mkdocs_your_plugin/plugin.py

  # build $ serve test
  pushd testdoc > /dev/null
  pyenv exec mkdocs build 
  timeout -sINT 5 pyenv exec mkdocs serve
  popd > /dev/null

  echo -----------------------------------------------
  echo Tear down
  echo -----------------------------------------------
  rm -rf testdoc > /dev/null
  cat files.txt | xargs rm -rf
  rm files.txt
  pyenv exec pip uninstall -r requirements.txt -y > /dev/null

  echo 
  echo 
}


for version in "${VERSION_LIST[@]}"
do
  test_version $version  
done


