#!/bin/bash
set -e

SSH_HOST="server2ubuntu"
REGISTRY="host.docker.internal:5000"
IMAGE="$REGISTRY/chimhaha-frontend:latest"

echo "==> Opening SSH tunnel to $SSH_HOST:5000"
ssh -N -L 0.0.0.0:5000:localhost:5000 "$SSH_HOST" &
TUNNEL_PID=$!
trap "kill $TUNNEL_PID 2>/dev/null" EXIT

echo "==> Waiting for tunnel to be ready..."
for i in $(seq 1 15); do
  curl -s http://localhost:5000/v2/ > /dev/null 2>&1 && break
  sleep 1
done

echo "==> Building frontend image"
docker build -t "$IMAGE" ./vite

echo "==> Pushing to registry"
docker push "$IMAGE"

echo "==> Done: $IMAGE"
