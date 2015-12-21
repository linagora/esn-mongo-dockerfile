Docker ESN MongoDB Container
============================
A customized Mongo image to automatize the initialisation of the replicate set and other things.


| Environment variable         | Default value                                                                                                |
|------------------------------|--------------------------------------------------|
|REPLICATE_NAME                |esn
|OPLOG_SIZE                    |128


Build
-----

```
docker build -t linagora/esn-mongo .
```

Run
---

```
docker run -p 9200:9200 -p 9300:9300 \
           -e REPLICATE_NAME=esn \
           -e OPLOG_SIZE=128 \
           linagora/esn-mongo
```

Note
----

This container can be used outside the scope of a `docker-compose`.
If you have the need to start a MongoDB container pre-initialized in replication mode, this one could do the trick.