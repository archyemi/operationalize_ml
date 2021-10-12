#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=aalatishe86/ml_app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 406373545287.dkr.ecr.us-east-1.amazonaws.com
# Step 3:
# Push image to a docker repository
docker login
docker push aalatishe86/$dockerpath