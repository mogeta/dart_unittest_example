#!/bin/bash

echo Analyzing library for warnings or type errors

dartanalyzer --package-root packages --fatal-warnings --fatal-type-errors *.dart || \
  echo "ignore analyzer errors"

dart --enable-type-checks --enable-asserts test/run_all.dart $@