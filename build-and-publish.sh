#!/bin/bash

# Set environment variables for the Docker Hub repository
DOCKERHUB_USERNAME="vvscode"
DOCKERHUB_REPO="go-basic-ms"
DOCKERHUB_TAG="latest"

# Set the path to the Dockerfile
DOCKERFILE_PATH="./Dockerfile"

# Build the Docker image
echo "Building the Docker image..."
docker build --platform linux/amd64 -t "$DOCKERHUB_USERNAME/$DOCKERHUB_REPO:$DOCKERHUB_TAG" -f "$DOCKERFILE_PATH" .

# Send the Docker image to Docker Hub
echo "Sending Docker image to Docker Hub..."
docker push "$DOCKERHUB_USERNAME/$DOCKERHUB_REPO:$DOCKERHUB_TAG"

echo "Done! Docker image sent to Docker Hub: $DOCKERHUB_USERNAME/$DOCKERHUB_REPO:$DOCKERHUB_TAG"