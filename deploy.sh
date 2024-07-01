#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Build the project
npm run build

# Deploy to the remote server
scp -r dist/ do:sometimeslesswrong/site/

# Print a success message
echo "Deployment successful!"
