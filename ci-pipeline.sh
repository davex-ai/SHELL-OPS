#!/bin/bash
# ci-pipeline.sh

echo " Running tests..."
npm test  # or pytest, go test, etc.
if [ $? -ne 0 ]; then
  echo " Tests failed! Aborting deploy."
  exit 1
fi

echo " Tests passed. Deploying..."
./deploy.sh staging