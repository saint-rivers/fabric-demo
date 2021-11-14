#!/bin/bash

export CORE_PEER_LOCALMSPID=KshrdMSP
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/fabric-demo/crypto-config/peerOrganizations/kshrd.com/users/Admin@kshrd.com/msp
export CORE_PEER_ADDRESS=peer0.kshrd.com:7051

docker exec \
    -e "CORE_PEER_LOCALMSPID=${CORE_PEER_LOCALMSPID}" \
    -e "CORE_PEER_MSPCONFIGPATH=${CORE_PEER_MSPCONFIGPATH}" \
    -e "CORE_PEER_ADDRESS=${CORE_PEER_ADDRESS}" -it cli bash -c "./scripts/channel.sh"
