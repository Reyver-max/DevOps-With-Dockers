#!/bin/bash

# Usage:
# ./builder.sh <github_repo> <dockerhub_repo>
# Example:
# ./builder.sh mluukkai/express_app reyver/testing

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <github_repo> <dockerhub_repo>"
  exit 1
fi

GITHUB_REPO=$1
DOCKER_REPO=$2
REPO_NAME=$(basename "$GITHUB_REPO")

echo "Cloning https://github.com/$GITHUB_REPO.git"
git clone "https://github.com/$GITHUB_REPO.git"

cd "$REPO_NAME" || exit 1

echo "Building Docker image: $DOCKER_REPO"
docker build -t "$DOCKER_REPO" .

echo "Pushing image to Docker Hub: $DOCKER_REPO"
docker push "$DOCKER_REPO"

echo "Done!"
