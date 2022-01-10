FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on 

RUN go get github.com/komal-gogi/go-on-prem
RUN cd /build && git clone https://github.com/komal-gogi/go-on-prem.git

RUN cd /build/go-on-prem/src && go build

EXPOSE 8080

ENTRYPOINT ["/build/go-on-prem/src/main"]