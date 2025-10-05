#!/bin/sh

TX_LOG_LEVEL="${TX_LOG_LEVEL:=info}"
TX_DOWNLOAD_DIR="${TX_DOWNLOAD_DIR:=/tx/download}"
TX_INCOMPLETE_DIR="${TX_INCOMPLETE_DIR:=/tx/incomplete}"
TX_RPC_PORT="${TX_RPC_PORT:=9091}"
TX_PEER_PORT="${TX_PEER_PORT:=51413}"

set -e
mkdir -p "${TX_DOWNLOAD_DIR}" "${TX_INCOMPLETE_DIR}"

exec transmission-daemon -f --no-watch-dir --no-lpd \
  --log-level="$TX_LOG_LEVEL" \
  --download-dir="$TX_DOWNLOAD_DIR" \
  --incomplete-dir="$TX_INCOMPLETE_DIR" \
  --peerport="$TX_PEER_PORT" \
  --port="$TX_RPC_PORT"
