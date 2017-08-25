FROM golang:latest
RUN mkdir /statusboard
ADD . /statusboard
WORKDIR /statusboard
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN  go build -a -installsuffix cgo -o server .
CMD ["/statusboard/server"]
EXPOSE 8080
