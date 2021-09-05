import sys

from mkdocs.plugins import BasePlugin
from mkdocs.config import config_options, Config
from mkdocs.structure.files import File, Files
from mkdocs.structure.nav import Navigation, Page

from jinja2.environment import Template
from jinja2 import Environment
from livereload import Server


class YourPlugin(BasePlugin):

    config_scheme = (
        ('param', config_options.Type(str, default='')),
    )

    def __init__(self):
        pass

    # Global Events
    def on_serve(self, server: Server, config: Config) -> Server:
        return server

    def on_config(self, config: Config) -> Config:
        return config

    def on_pre_build(self, config: Config) -> None:
        return

    def on_files(self, files: Files, config: Config) -> Files:
        return files

    def on_nav(self, nav: Navigation, config: Config, files: Files) -> Navigation:
        return nav

    def on_env(self, env: Environment, config: Config, files: Files) -> Environment:
        return env

    def on_post_build(self, config: Config) -> None:
        return

    # Template Events
    def on_pre_template(self, template: Template, template_name: str, config: Config) -> Template:
        return template

    def on_template_context(self, context: dict, template_name: str, config: Config) -> dict:
        return context

    def on_post_template(self, output_content: str, template_name: str, config: Config) -> str:
        return output_content

    # Page Events
    def on_pre_page(self, page: Page, config: Config, files: Files) -> Page:
        return page

    def on_page_read_source(self, page: Page, config: Config) -> str:
        return ""

    def on_page_markdown(self, markdown: str, page: Page, config: Config, files: Files) -> str:
        return markdown

    def on_page_content(self, html: str, page: Page, config: Config, files: Files) -> str:
        return html

    def on_page_context(self, context: dict, page: Page, config: Config, nav: Navigation) -> dict:
        return context

    def on_post_page(self, output_content: str, page: Page, config: Config) -> str:
        return output_content
