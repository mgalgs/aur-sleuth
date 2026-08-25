#!/bin/sh
# Maintainer helper: roll a release tarball from the working tree.
set -e
version="$(sed -n 's/^pkgver=//p' PKGBUILD)"
git archive --format=tar.gz --prefix="bench-widget-${version}/" \
    -o "bench-widget-${version}.tar.gz" HEAD
