#!/bin/bash

# variables
CHANNEL_NAME=$1

rm -rf ./channel-artifacts 2> /dev/null

. ./scripts/env.sh

# create genesis block

configtxgen \
    -channelID system-channel \
    -profile TwoOrgOrdererGenesis \
    -outputBlock ./channel-artifacts/genesis.block 

# create channel configuration 

configtxgen \
    -channelID ${CHANNEL_NAME} \
    -profile TwoOrgChannel \
    -outputCreateChannelTx ./channel-artifacts/channel.tx


# create anchor peer update for each organization specified in configtx.yaml

configtxgen \
    -channelID ${CHANNEL_NAME} \
    -profile TwoOrgChannel \
    -outputAnchorPeersUpdate ./channel-artifacts/KshrdAnchorPeer.block -asOrg Kshrd

configtxgen \
    -channelID ${CHANNEL_NAME} \
    -profile TwoOrgChannel \
    -outputAnchorPeersUpdate ./channel-artifacts/KosignAnchorPeer.block -asOrg Kosign