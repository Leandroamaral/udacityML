#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t predict . 

# Step 2: 
# List docker images
docker images "predict"

# Step 3: 
# Run flask app
docker run -p 8000:80 predict
