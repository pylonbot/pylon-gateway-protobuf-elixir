#!/bin/bash
echo "> installing elixir + protbuf-compiler"
sudo apt-get install -y elixir protobuf-compiler

echo "> installing protoc"
export GO111MODULE=on
go install github.com/golang/protobuf/{proto,protoc-gen-go}

echo "> installing protoc-gen-elixir"
mix escript.install hex protobuf --force
export PATH="$PATH:$HOME/.mix/escripts"

echo "> removing old directories"
rm -rf lib/discord
rm -rf lib/gateway

echo "> cloning fresh protos..."
rm -rf proto
git clone https://github.com/pylonbot/pylon-gateway-protobuf.git proto

echo "> generating code"
protoc -Iproto --elixir_out=plugins=grpc:./lib/ \
    $(find ./ -type f -name "*.proto" | grep -v google)