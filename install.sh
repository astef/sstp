#!/usr/bin/env bash

SERVICE_NAME="sstp.service"
SERVICE_FILE="./pkg/$SERVICE_NAME"
ENV_FILE="./pkg/.env"
LIB_SCRIPT="./pkg/lib.sh"
STOP_SCRIPT="./pkg/stop.sh"
POST_START_SCRIPT="./pkg/start_post.sh"
CONFIG_DIR="/etc/sstp"

(
    set -ex
    
    sudo cp "$SERVICE_FILE" /etc/systemd/system/

    sudo mkdir -p "$CONFIG_DIR"

    sudo cp "$ENV_FILE" "$CONFIG_DIR/"
    sudo cp ./pkg/*.sh "$CONFIG_DIR/"

    sudo chmod +x "$CONFIG_DIR"/*.sh

    sudo systemctl daemon-reload
)

echo ""
echo "Installation complete. You can now start the service with:"
echo "  sudo systemctl start $SERVICE_NAME"
