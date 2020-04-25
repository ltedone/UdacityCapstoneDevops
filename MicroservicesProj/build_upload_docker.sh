#!/usr/bin/env bash

# Step 1:
# Build image and add a descriptive tag, save the ID to the IMAGE_ID variable
# docker build --tag=app .
IMAGE_ID=$(docker build -t app . 2>/dev/null | awk '/Successfully built/{print $NF}')

# Step 2:
# Create dockerpath
dockerpath=$IMAGE_ID/app

# Step 3:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag $IMAGE_ID ltedone/capstone:app

# Step 4:
# Push image to a docker repository
docker push ltedone/capstone:app
