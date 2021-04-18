FROM golang:1.14.2
ENV GO111MODULE=on 
WORKDIR /go/src/work
COPY ./work/* /go/src/work/
WORKDIR /go/src/
RUN go mod init go-echo-app && go get -u github.com/cosmtrek/air
