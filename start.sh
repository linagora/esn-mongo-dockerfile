#!/bin/bash

[ -z "$REPLICATE_NAME" ] || replicate_name="$REPLICATE_NAME"
[ -z "$OPLOG_SIZE" ]     || oplog_size="$OPLOG_SIZE"

sh -c "sleep 10; echo Initializing the replicate; mongo --eval 'printjson(rs.initiate())'" &
sh -c "sleep 20; echo Checking replicate state; mongo --eval 'printjson(rs.status())'" &

mongod --replSet ${replicate_name} --oplogSize ${oplog_size} --smallfiles
