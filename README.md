# StatusBoard
See [HERE](https://github.com/transcranial/statusboard) for configurations


## Running local
`go run server.go`


## Running in Docker
1. build docker image 
`docker build -t geouniq/statusboard:0.1 .`
3. run docker image 
`docker run -d -p 80:80 geouniq/statusboard:0.1`
or by passing your own **config.json** file
`docker run -d -p 80:80 -v /your/local/config.json:/static/config.json geouniq/statusboard:0.1`

[http://localhost](http://localhost)

The page will automatically subscribe to update events. Currently it's configured to display events from the most recent hour.
## CAVEAT
Does not work in docker with https URL  due to "x509: failed to load system roots and no roots provided" ERROR... to investigate
