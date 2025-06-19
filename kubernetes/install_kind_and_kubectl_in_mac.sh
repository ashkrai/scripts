#!/bin/bash

#chmod +x install.sh
#./install.sh

# Determine the architecture
ARCH=$(uname -m)
if [ "$ARCH" != "arm64" ]; then
  echo "This script is intended for ARM64 architecture (Apple Silicon)."
  exit 1
fi

# Install Kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.27.0/kind-darwin-arm64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# Install kubectl
VERSION="v1.30.0"
URL="https://dl.k8s.io/release/${VERSION}/bin/darwin/arm64/kubectl"
curl -LO "$URL"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl

# Verify installations
kubectl version
kind version
docker --version
# Clean up
rm -f kubectl kind

echo "Kind & kubectl installation complete."















