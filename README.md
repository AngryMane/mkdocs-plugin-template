# Overview
This is a template for a MkDocs plugin.

# Versions of python & mkdocs
I have confirmed that it works in the following environment.

||version|
|-|-|
|python|3.6 - 3.9|
|mkdocs|1.1|

If you want to create a plugin for another mkdocs version, checkout the corresponding tag.  

# How to use
TODO: explain how to rename..

## Setup
Install the plugin using pip:

`pip install mkdocs-your-plugin-name`

Activate the plugin in `mkdocs.yml`:
```yaml
plugins:
  - search
  - your-plugin-name
```

> **Note:** If you have no `plugins` entry in your config file yet, you'll likely also want to add the `search` plugin. MkDocs enables it by default if there is no `plugins` entry set, but now you have to enable it explicitly.

More information about plugins in the [MkDocs documentation][mkdocs-plugins].

## Config
* `param` - This does something

## See Also

- [plugins.md](https://github.com/mkdocs/mkdocs/blob/eddeeab066cb071dbe426878a85de715df1b93e7/docs/user-guide/plugins.md)  
   This is user-guide for plusings.
- [plugins.py](https://github.com/mkdocs/mkdocs/blob/eddeeab066cb071dbe426878a85de715df1b93e7/mkdocs/plugins.py)  
   Mkdocs defines the events for plugins in this file.