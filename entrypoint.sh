#!/bin/bash
set -e

# Generate Heroku CLI auth information
HEROKU_CONFIG=~/.netrc
echo "machine api.heroku.com" >> $HEROKU_CONFIG
echo "  login ${HEROKU_USER}" >> $HEROKU_CONFIG
echo "  password ${HEROKU_TOKEN}" >> $HEROKU_CONFIG
echo "machine git.heroku.com" >> $HEROKU_CONFIG
echo "  login ${HEROKU_USER}" >> $HEROKU_CONFIG
echo "  password ${HEROKU_TOKEN}" >> $HEROKU_CONFIG

exec "$@"
