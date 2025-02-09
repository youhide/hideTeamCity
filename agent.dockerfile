FROM jetbrains/teamcity-agent:latest

LABEL maintainer="Youri T. K. K. Mattar <youri@youhide.com.br>"

# Switch to root to install packages
USER root

## OS DEPENDENCIES
# RUN apt-get update
# RUN apt-get install -y wget unzip build-essential

## NVM
# Switch to the teamcity user for NVM installation
USER buildagent

# Set up environment variables for NVM
ENV NVM_DIR /home/buildagent/.nvm
ENV NODE_VERSION=22.0.0

# Install NVM and Node.js
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash \
  && . $NVM_DIR/nvm.sh \
  && nvm install $NODE_VERSION \
  && nvm alias default $NODE_VERSION \
  && nvm use default

# Add NVM and Node.js to PATH
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# Verify installations
RUN node --version \
  && npm --version

# Switch back to buildagent user
USER buildagent
