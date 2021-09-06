#!/usr/bin/env bash

# plugin name
TEMPLATE=template 
DEFAULT_PLUGIN_NAME_UNDERBAR=mkdocs_your_plugin
DEFAULT_PLUGIN_NAME_DASH=mkdocs-your-plugin
DEFAULT_PLUGIN_ENTRY_POINT_NAME=your-plugin
DEFAILT_CLASS_NAME=YourPlugin
PLUGIN_NAME=$1
CLASS_NAME=$2
SETUP_FILE=setup.py
PLUGIN_FILE=plugin.py


function generate_new_template () {
    cp -r ${TEMPLATE} ${PLUGIN_NAME}
    mv ${PLUGIN_NAME}/${DEFAULT_PLUGIN_NAME_UNDERBAR} ${PLUGIN_NAME}/${PLUGIN_NAME//-/_}
    sed -i -e "s/${DEFAULT_PLUGIN_NAME_UNDERBAR}/${PLUGIN_NAME//-/_}/" ${PLUGIN_NAME}/${SETUP_FILE}
    sed -i -e "s/${DEFAULT_PLUGIN_NAME_DASH}/${PLUGIN_NAME}/" ${PLUGIN_NAME}/${SETUP_FILE}
    sed -i -e "s/${DEFAULT_PLUGIN_ENTRY_POINT_NAME}/${PLUGIN_NAME}/" ${PLUGIN_NAME}/${SETUP_FILE}
    sed -i -e "s/${DEFAILT_CLASS_NAME}/${CLASS_NAME}/" ${PLUGIN_NAME}/${SETUP_FILE}
    sed -i -e "s/${DEFAILT_CLASS_NAME}/${CLASS_NAME}/" ${PLUGIN_NAME}/${PLUGIN_NAME//-/_}/${PLUGIN_FILE}
}

function usage_exit() {
    echo "Usage: $0 \$PLUGIN_NAME \$CLASS_NAME" 1>&2
    echo "       \$PLUGIN_NAME is the name of the plugin, which is referenced in setup.py, etc." 1>&2
    echo "       \$CLASS_NAME is the name of the class, which is defined at the top of the plugin" .1>&2
    exit 1
}

function main () {
    if [ -z "$PLUGIN_NAME" ]; then
        echo [WARNING] This command requires the plugin name as the first argument and the class name as the second argument.
        usage_exit
    fi

    generate_new_template 
}

main
