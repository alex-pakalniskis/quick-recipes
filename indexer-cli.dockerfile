FROM node:18

RUN \
  apt-get update && \
  apt-get upgrade -y

RUN \
  npm install -g @graphprotocol/indexer-service && \
  npm install -g @graphprotocol/indexer-agent && \
  npm install -g @graphprotocol/graph-cli && \
  npm install -g @graphprotocol/indexer-cli

ENV HOME /root

WORKDIR /root

# Then run: 
# `docker build -t indexercli .`
# `docker run -it indexercli:latest bash`
