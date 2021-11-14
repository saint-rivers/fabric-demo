#!/bin/bash

export ORDERER_ADDRESS="orderer.com:7050"
export CHANNEL_NAME=mychannel
export CHANNEL_CFG_FILE=/opt/gopath/fabric-demo/channel-artifacts/channel.tx
export OUTPUT_BLOCK=/opt/gopath/fabric-demo/channel-artifacts/${CHANNEL_NAME}.block

echo "======= Creating a new channel ======"
peer channel create \
    -o ${ORDERER_ADDRESS} \
    -c ${CHANNEL_NAME} \
    -f "${CHANNEL_CFG_FILE}" \
    --outputBlock ${OUTPUT_BLOCK}

peer channel list

sleep 4s
echo "======= Joining the new channel ======"
peer channel join -b ${OUTPUT_BLOCK}
    