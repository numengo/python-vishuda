========
Overview
========

.. start-badges

.. list-table::
    :stub-columns: 1

    * - docs
      - |docs|
    * - tests
      - | |travis| |appveyor| |requires|
        | |codecov|
    * - package
      - | |version| |wheel| |supported-versions| |supported-implementations|
        | |commits-since|

.. |docs| image:: https://readthedocs.org/projects/python-vishuda/badge/?style=flat
    :target: https://readthedocs.org/projects/python-vishuda
    :alt: Documentation Status

.. |travis| image:: https://travis-ci.org/numengo/python-vishuda.svg?branch=master
    :alt: Travis-CI Build Status
    :target: https://travis-ci.org/numengo/python-vishuda

.. |appveyor| image:: https://ci.appveyor.com/api/projects/status/github/numengo/python-vishuda?branch=master&svg=true
    :alt: AppVeyor Build Status
    :target: https://ci.appveyor.com/project/numengo/python-vishuda

.. |requires| image:: https://requires.io/github/numengo/python-vishuda/requirements.svg?branch=master
    :alt: Requirements Status
    :target: https://requires.io/github/numengo/python-vishuda/requirements/?branch=master

.. |codecov| image:: https://codecov.io/github/numengo/python-vishuda/coverage.svg?branch=master
    :alt: Coverage Status
    :target: https://codecov.io/github/numengo/python-vishuda

.. |version| image:: https://img.shields.io/pypi/v/vishuda.svg
    :alt: PyPI Package latest release
    :target: https://pypi.python.org/pypi/vishuda

.. |commits-since| image:: https://img.shields.io/github/commits-since/numengo/python-vishuda/v0.1.0.svg
    :alt: Commits since latest release
    :target: https://github.com/numengo/python-vishuda/compare/v0.1.0...master

.. |wheel| image:: https://img.shields.io/pypi/wheel/vishuda.svg
    :alt: PyPI Wheel
    :target: https://pypi.python.org/pypi/vishuda

.. |supported-versions| image:: https://img.shields.io/pypi/pyversions/vishuda.svg
    :alt: Supported versions
    :target: https://pypi.python.org/pypi/vishuda

.. |supported-implementations| image:: https://img.shields.io/pypi/implementation/vishuda.svg
    :alt: Supported implementations
    :target: https://pypi.python.org/pypi/vishuda


.. end-badges

Framework for rapid application development and code generation

* Free software: GNU General Public License v3

.. skip-next

Installation
============

Install command::

    pip install vishuda

Settings are managed using
`simple-settings <https://github.com/drgarcia1986/simple-settings>`__
and can be overriden with configuration files (cfg, yaml, json) or with environment variables
prefixed with VISHUDA_.

Documentation
=============

https://python-vishuda.readthedocs.io/

Development
===========

To run the all tests run::

    tox

Note, to combine the coverage data from all the tox environments run:

.. list-table::
    :widths: 10 90
    :stub-columns: 1

    - - Windows
      - ::

            set PYTEST_ADDOPTS=--cov-append
            tox

    - - Other
      - ::

            PYTEST_ADDOPTS=--cov-append tox
