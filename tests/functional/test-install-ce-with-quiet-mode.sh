#!/usr/bin/env bash
source tests/functional.sh

OUTPUT=$(${BIN_M2INSTALL} --force --source composer -v 2.1.5 --quiet)

CURRENT="$(php bin/magento -V --no-ansi)";
EXPECTED="Magento CLI version 2.1.5";
assertEqual "$EXPECTED" "$CURRENT" "Version should match"

assertEqual "" "${OUTPUT}" "Should be without any output in quiet mode"
