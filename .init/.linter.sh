#!/bin/bash
cd /home/kavia/workspace/code-generation/redis-installation-guide-for-ubuntu-7891-7900/how_to_add_redis_in_ubuntu_frontend
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

