#!/usr/bin/env bash

echo "Starting Deployment...."

# Authenticate Docker with ECR
aws ecr get-login-password --region eu-west-3 | docker login --username AWS --password-stdin 753675398639.dkr.ecr.eu-west-3.amazonaws.com

# Build the Docker image
docker build -t my-node-app .

# Tag the image
docker tag my-node-app:latest 753675398639.dkr.ecr.eu-west-3.amazonaws.com/my-node-app:latest

# Push the image to ECR
echo "Pushing the image......"
docker push 753675398639.dkr.ecr.eu-west-3.amazonaws.com/my-node-app:latest

echo "Deployment Succeeded ✅"
