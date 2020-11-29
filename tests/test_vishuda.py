#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""Tests for `vishuda` package."""
from click.testing import CliRunner

from vishuda.cli import main

# PROTECTED REGION ID(vishuda.tests.test_vishuda) ENABLED START

def test_vishuda():
    # from vishuda import vishuda
    # assert vishuda


    runner = CliRunner()
    result = runner.invoke(main, [])

    assert result.output == 'Hello World!\n'
    assert result.exit_code == 0


if __name__ == '__main__':
    # to run test file standalone
    test_vishuda()

# PROTECTED REGION END
