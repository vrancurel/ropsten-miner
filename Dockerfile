FROM golang:1.7

RUN \
  apt-get update && apt-get upgrade -q -y && \
  apt-get install -y --no-install-recommends make gcc libc-dev ca-certificates && \
  git clone --depth 1 https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make geth) && \
  cp go-ethereum/build/bin/geth /geth

# && \
#  apt-get remove -y golang git make gcc libc-dev && apt autoremove -y && apt-g#et clean && \
#  rm -rf /go-ethereum

EXPOSE 8545
EXPOSE 30303

COPY entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]
