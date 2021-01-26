#!/bin/bash

echo "> installing elixir"
sudo apt-get install -y elixir

echo "> installing protoc"
export GO111MODULE=on
go get -u github.com/golang/protobuf/{proto,protoc-gen-go}
go get google.golang.org/grpc/cmd/protoc-gen-go-grpc
go get -u google.golang.org/grpc
go install github.com/golang/protobuf/{proto,protoc-gen-go}
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc

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