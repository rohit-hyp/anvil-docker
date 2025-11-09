# Dockerfile
FROM ghcr.io/foundry-rs/foundry:latest

# Expose Anvil port
EXPOSE 8545

# Start Anvil
CMD ["anvil", "--host", "0.0.0.0", "--port", "8545", "--block-time", "2"]
