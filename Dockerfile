# Dockerfile for Railway Anvil Deployment
FROM ghcr.io/foundry-rs/foundry:latest

# Railway will set PORT environment variable
# Default to 8545 for local testing
ENV PORT=8545

# Expose the port
EXPOSE $PORT

# Start Anvil
# Railway expects apps to bind to $PORT
ENTRYPOINT ["sh", "-c", "anvil --host 0.0.0.0 --port $PORT --block-time 2 --accounts 10 --balance 10000 --chain-id 9746"]

