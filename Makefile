.PHONY: all build clean test

all: build run

build:
	go build -o tracking_test ./cmd/main.go


run:
	./tracking_test
