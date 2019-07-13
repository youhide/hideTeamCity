FROM jetbrains/teamcity-agent:latest

LABEL maintainer="Youri T. K. K. Mattar <youri@youhide.com.br>"

## OS DEPENDENCIES
RUN apt-get update
RUN apt-get install -y wget

## NODEJS
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN npm install -g gulp yarn

## PHP
RUN apt-get update \
&& apt-get install -y php php-xml php-gd php-mbstring composer nodejs

## PYTHON
RUN curl -O https://bootstrap.pypa.io/get-pip.py \
&& python3 get-pip.py \
&& pip install awsebcli --upgrade

## AWS
RUN mkdir ~/.aws
RUN touch ~/.aws/credentials \
&& echo "[eb-cli]" >> ~/.aws/credentials \
&& echo "aws_access_key_id = XXX" >> ~/.aws/credentials \
&& echo "aws_secret_access_key = XXX" >> ~/.aws/credentials
RUN touch ~/.aws/config \
&& echo "[default]" >> ~/.aws/config \
&& echo "region = us-east-1" >> ~/.aws/config

## DOTNET CORE SDK 2.2
RUN wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get install -y apt-transport-https
RUN apt-get update
RUN apt-get install -y dotnet-sdk-2.2