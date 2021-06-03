#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=rexben/machine-learning

# make username dynamic by passing it as a parameter 
echo "username: $1"

# # Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=$1
docker tag machine-learning $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
