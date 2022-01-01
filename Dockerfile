# ============================================
# # 2020/10/14最新versionを取得
# FROM golang:1.15.2-alpine
# # アップデートとgitのインストール！！
# RUN apk update && apk add git
# # appディレクトリの作成
# RUN mkdir /go/src/app
# # ワーキングディレクトリの設定
# WORKDIR /go/src/app
# # ホストのファイルをコンテナの作業ディレクトリに移行
# ADD . /go/src/app
# ===================================================

# FROM golang:latest as builder

# RUN apt-get update && apt-get install build-essential -y

# ENV CGO_ENABLED=1 \
#     GOOS=linux \
#     GOARCH=amd64 \
#     GO111MODULE=on

# # WORKDIR /go/src/app
# # COPY . /go/src/app
# WORKDIR /opt/app
# COPY . /opt/app
# # RUN go build -a -ldflags '-linkmode external -extldflags "-static"' 
# RUN go build -ldflags '-linkmode external -extldflags "-static"' 

# # runtime image
# FROM alpine
# # COPY --from=builder /go/src/app /go/src/app
# COPY --from=builder /opt/app /opt/app

# ===============================================================

## Build
FROM golang:1.16-buster AS build
WORKDIR /app

# Download dependencies
COPY go.mod .
COPY go.sum .
RUN go mod download

RUN go get github.com/mattn/go-sqlite3

# COPY . .

# RUN go build -o /myapp/nonstruct.go