#!/bin/bash

if [[ "$TRAVIS_OS_NAME" == "linux" && \
      "$(python -c 'import sys; print(sys.version_info[0])')" == "2" && \
      "$TRAVIS_PULL_REQUEST" == "false" && \
      "$TRAVIS_BRANCH" == "master" && \
      "$TRAVIS_SECURE_ENV_VARS" == "true" ]]; then
	./cc-test-reporter after-build --exit-code $TRAVIS_TEST_RESULT
fi
