FROM golang:latest

WORKDIR /app

COPY go.mod ./
RUN go mod download 

# RUN go get github.com/komal-gogi/go-on-prem
RUN cd ./ && git clone https://github.com/komal-gogi/go-on-prem.git

COPY *.go ./
RUN go build -o /go-docker

EXPOSE 8080

CMD ["/go-docker"]