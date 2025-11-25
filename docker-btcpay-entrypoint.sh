#!/bin/bash
set -e

# Wait for dependencies
until nc -z btcpayserver 49391; do
  echo "Waiting for BTCPay Server..."
  sleep 2
done

# Start BTCPay Server
dotnet /app/BTCPayServer.dll --urls "http://*:49391" "$@"