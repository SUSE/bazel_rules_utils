"""
rules_binaries implements a set of rules for dealing with external binary dependencies in a Bazel
project.
"""

load(
    "//internal:def.bzl",
    _binary = "binary",
    _binary_location = "binary_location",
)

binary = _binary
binary_location = _binary_location
