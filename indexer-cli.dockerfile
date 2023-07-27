FROM ubuntu:22.04

RUN \
  apt-get update && \
  apt get upgrade && \
  apt get install -y npm && \
  npm install -g @graphprotocol/indexer-service && \
  npm install -g @graphprotocol/indexer-agent && \
  npm install -g @graphprotocol/graph-cli && \
  npm install -g @graphprotocol/indexer-cli

ENV HOME /root

WORKDIR /root

CMD ["graph-indexer-service", "start", "--help"]