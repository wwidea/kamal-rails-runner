#!/bin/sh
SERVICE_NAME="$1"
COMMAND="$2"

CONTAINER_ID=$(docker ps \
  --filter "label=service=$SERVICE_NAME" \
  --filter "label=role=web" \
  --format '{{.ID}}' | head -n 1)

if [ -n "$CONTAINER_ID" ]; then
  echo "Running $COMMAND in container: $CONTAINER_ID"
  docker exec "$CONTAINER_ID" bin/rails runner "$COMMAND"
else
  echo "No matching container found."
  exit 1
fi
