# Dockerfile for Railway Anvil Deployment
FROM ghcr.io/foundry-rs/foundry:latest

# Railway assigns a PORT environment variable
# We'll default to 8545 for local testing
ENV PORT=8545

# Expose the port
EXPOSE $PORT

# Start Anvil with Railway-compatible settings
# Uses $PORT environment variable set by Railway
CMD anvil \
    --host 0.0.0.0 \
    --port ${PORT} \
    --block-time 2 \
    --accounts 10 \
    --balance 10000 \
    --chain-id 9746

