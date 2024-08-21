#!/bin/bash

# Specify the image name
IMAGE_NAME="nginx:latest"

# Specify the output file name
SBOM_FILE="../sbom.json"

# Generate SBOM using Syft
syft $IMAGE_NAME -o json > $SBOM_FILE

echo "SBOM generated and saved to $SBOM_FILE"
