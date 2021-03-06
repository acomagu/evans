FROM golang:1.9.2

RUN apt-get update && \
      apt-get install -y unzip && \
      curl -Lo protoc.zip https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip && \
      unzip protoc && \
      rm -rf protoc.zip && \
      go get github.com/golang/protobuf/protoc-gen-go
