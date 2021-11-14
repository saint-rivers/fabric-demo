#!/bin/bash

rm -rf ./crypto-config 2> /dev/null

. ./scripts/env.sh

cryptogen generate --config=${FABRIC_CFG_PATH}/crypto-config.yaml