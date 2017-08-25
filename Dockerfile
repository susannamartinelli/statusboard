FROM golang:1.8.3-alpine3.6
RUN mkdir /statusboard
ADD . /statusboard
WORKDIR /statusboard
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN  go build -a -installsuffix cgo -o server .
CMD ["/statusboard/server"]
EXPOSE 8080
