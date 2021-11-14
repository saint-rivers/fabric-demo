#!/bin/bash

export CORE_PEER_LOCALMSPID=KosignMSP
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/fabric-demo/crypto-config/peerOrganizations/kosign.com/users/Admin@kosign.com/msp
export CORE_PEER_ADDRESS=peer0.kosign.com:7051

docker exec \
    -e "CORE_PEER_LOCALMSPID=${CORE_PEER_LOCALMSPID}" \
    -e "CORE_PEER_MSPCONFIGPATH=${CORE_PEER_MSPCONFIGPATH}" \
    -e "CORE_PEER_ADDRESS=${CORE_PEER_ADDRESS}" -it cli bash -c "./scripts/channel.sh"
