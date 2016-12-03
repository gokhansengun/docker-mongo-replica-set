#!/bin/bash -e

docker-compose exec primary mongo --eval "printjson(rs.status())"
