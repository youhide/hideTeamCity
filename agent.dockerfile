FROM jetbrains/teamcity-agent:latest

LABEL maintainer="Youri T. K. K. Mattar <youri@youhide.com.br>"

## OS DEPENDENCIES
RUN apt-get update
RUN apt-get install -y wget unzip build-essential

## NVM
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
RUN nvm install 22
