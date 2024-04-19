# 基於 golang 且 tag 為 1.21.5-alpine3.19 開始建構 image，取名為 "builder" stage
FROM golang:1.21.5-alpine3.19 AS builder

# 設置一些 Go 相關的環境變量
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

# 建立工作目錄 build，並切換到此 directory
WORKDIR /build

# 複製當下目錄的所有文件到 container 的 /build directory
COPY . .

# 下載 dependency 且 compile 專案的 golang code 弄成 binary
RUN go mod download -x && go build -o tracking_test ./cmd/main.go

# 基於 alpine:3.14 開始下一個  stage
FROM alpine:3.19

# 從前一個 builder stage 把 build 好的 binary 複製到現在這個 stage 的根目錄
COPY --from=builder /build/tracking_test /

# 提示說 container 會對外開放 5000 port
EXPOSE 5000

# 設定 container 啟動執行的命令，這邊就是跑 build 好的 binary
ENTRYPOINT [ "/tracking_test" ]
