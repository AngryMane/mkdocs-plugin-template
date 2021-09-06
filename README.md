# Overview
This is a template for a MkDocs plugin.


# How to use
## Generate your plugin
You can generate your own plugin by the following command.

```
bash generate_template.sh ${PLUGIN_NAME} ${PLUGIN_CLASS_NAME}
```

## Edit your plugin
**TODO:**

## Install your plugin
Install your plugin by the following command:

```
cd ${GENERATED_PLUGIN_DIR}
python3 setup.py install
```

## Use your plugin
Activate the plugin in `mkdocs.yml`:

**NOTE**:  
If you use `-` charactre in ${PLUGIN_NAME}, it will be replaced to '_' charactor.  
This is becase of python module naming rule.  

```yaml
plugins:
  - search
  - ${PLUGIN_NAME}
```


# Versions of python & mkdocs
I have confirmed that it works in the following environment.

||version|
|-|-|
|python|3.6 - 3.9|
|mkdocs|1.1|

If you want to create a plugin for another mkdocs version, checkout the corresponding tag.  

## See Also
- [plugins.md](https://github.com/mkdocs/mkdocs/blob/eddeeab066cb071dbe426878a85de715df1b93e7/docs/user-guide/plugins.md)  
   This is user-guide for plusings.
- [plugins.py](https://github.com/mkdocs/mkdocs/blob/eddeeab066cb071dbe426878a85de715df1b93e7/mkdocs/plugins.py)  
   Mkdocs defines the events for plugins in this file.