#!/bin/bash
set -e

echo "chmod +x install_docker.sh"
echo "./install_docker.sh"


echo "🔄 Updating package list..."
sudo apt-get update

echo "⬇️ Installing Docker..."
sudo apt-get install -y docker.io

echo "👤 Adding user '$USER' to the 'docker' group..."
sudo usermod -aG docker "$USER"

echo "✅ Docker installed and user added to group."

echo ""
echo "🔁 To apply group changes, do one of the following:"
echo "  1. Run: newgrp docker"
echo "     (This starts a new shell with Docker access)"
echo "  OR"
echo "  2. Log out and log back in, then run: docker ps"
echo ""
echo "🚀 After that, you can use Docker without sudo."
