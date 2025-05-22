FROM ubuntu:latest

# Install necessary packages
# Add libicu-dev for .NET Core dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    ca-certificates \
    libicu-dev && \  
    rm -rf /var/lib/apt/lists/*  

# Add a user for running the GitHub Actions runner
RUN useradd -m runner

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Switch to the new user
USER runner
WORKDIR /home/runner

# Download and configure the GitHub Actions runner
RUN curl -k -o actions-runner.tar.gz -L https://github.com/actions/runner/releases/download/v2.303.0/actions-runner-linux-x64-2.303.0.tar.gz \
    && tar xzf ./actions-runner.tar.gz \
    && rm actions-runner.tar.gz

ENTRYPOINT ["/entrypoint.sh"]