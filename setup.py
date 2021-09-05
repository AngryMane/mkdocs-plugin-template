from setuptools import setup, find_packages


setup(
    name='mkdocs-your-plugin',
    version='0.1.0',
    description='A MkDocs plugin',
    long_description='',
    keywords='mkdocs',
    url='',
    author='Your Name',
    author_email='your email',
    license='MIT',
    python_requires='>=3.6',
    install_requires=[
        'mkdocs>=1.1'
    ],
    classifiers=[
        'Development Status :: 4 - Beta',
        'Intended Audience :: Developers',
        'Intended Audience :: Information Technology',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3 :: Only',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: 3.7'
        'Programming Language :: Python :: 3.8'
        'Programming Language :: Python :: 3.9'
    ],
    packages=find_packages(),
    entry_points={
        'mkdocs.plugins': [
            'your-plugin = mkdocs_your_plugin.plugin:YourPlugin'
        ]
    }
)
