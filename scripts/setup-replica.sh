#!/bin/bash -e

# initiate the replica set in node 1 (mongo1)
docker-compose exec primary mongo --eval "rs.initiate()"

# query the status of replica set
# docker-compose exec primary mongo --eval "printjson(rs.status())"

# add node 2 to the replica set
docker-compose exec primary mongo --eval "rs.add(\"slave1\")"

# add node 3 to the replica set
docker-compose exec primary mongo --eval "rs.add(\"slave2\")"

# query the status of replica set again
# docker-compose exec primary mongo --eval "printjson(rs.status())"
