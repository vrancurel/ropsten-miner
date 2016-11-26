## what is ropsten-miner?

Ropsten-miner is a docker container which let you mine ropsten testnet ethers only providing your ropsten etherbase address. It's an adaptation of the go-ethereum Dockerfile founded on Docker hub, especially for ropsten testnet mining purpose.

## usage

    git clone https://github.com/asseth/ropsten-miner
    cd ropten-miner
    docker build -t asseth/ropsten-miner .
    docker run --name ropsten-miner2 -e ETHERBASE=0x... asseth/ropsten-miner

where 0x... is your address

More options:

    -e MINERTHREADS=4
    -e EXTRADATA=ASSETH

The DAG will be generated and the ropsten blockchain will be downloaded, it could take a long time


Base Dockerfile found [here](https://hub.docker.com/r/ethereum/client-go/~/dockerfile/)
