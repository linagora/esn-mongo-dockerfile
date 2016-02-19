# Docker ESN MongoDB Container

[![Build Status](https://travis-ci.org/linagora/esn-mongo-dockerfile.svg?branch=master)](https://travis-ci.org/linagora/esn-mongo-dockerfile)

A customized MongoDB image to automatize the initialisation of the replicaset.

## List of environment variables

| Environment variable         | Default value                                                                                                |
|------------------------------|--------------------------------------------------|
|REPLICATE_NAME                |esn
|OPLOG_SIZE                    |128

## Pull

```
docker pull linagora/esn-mongo
```

## Build

```
git clone https://github.com/linagora/esn-mongo-dockerfile.git
docker build -t linagora/esn-mongo .
```

## Run

```
docker run -p 27017:27017 \
           -e REPLICATE_NAME=esn \
           -e OPLOG_SIZE=128 \
           linagora/esn-mongo
```

## Note

This container can be used outside the scope of a `docker-compose`.
If you have the need to start a MongoDB container pre-initialized in replication mode, this one could do the trick.
