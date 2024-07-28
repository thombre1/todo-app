#!/bin/bash

# Check if a commit message was provided
if [ -z "$1" ]; then
  echo "Error: No commit message provided."
  echo "Usage: ./git_push.sh 'Your commit message'"
  exit 1
fi

# Add all changes to staging
git add .

# Commit changes with the provided message
git commit -m "$1"

# Push changes to the main branch
git push origin main

# Indicate script completion
echo "Changes pushed to the main branch."

