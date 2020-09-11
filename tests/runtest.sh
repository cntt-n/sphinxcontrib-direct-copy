#!/bin/bash
# Copyright 2020 Nokia
# Licensed under the Apache License 2.0.
# SPDX-License-Identifier: Apache-2.0


set -o errexit
set -o nounset
set -x

srcDir="testproject"
outDir="build-sphinx-testproject"

echo "Building 'testproject' with postpocessing disabled..."
rm -rf "$outDir"
sphinx-build -T -vvv -b html -D language=en "$srcDir" "$outDir"

echo "[runtest.sh] Checking if file copied"
[ -f $outDir/image/ch01_scope.png ]

echo "[runtest.sh] All tests passed."
