#!/bin/bash

# Exit on error
set -e

BASE_BRANCH="develop"

# Fetch latest base branch
git fetch origin $BASE_BRANCH

# Get current branch name
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo "Comparing $CURRENT_BRANCH with origin/$BASE_BRANCH" >&2

# Generate diff
git diff origin/$BASE_BRANCH...HEAD