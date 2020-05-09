#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=emajar/myapp
tag=prod

# Step 2:  
# Authenticate & tag
docker logout
docker login
docker tag myapp $dockerpath:$tag

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath:$tag


