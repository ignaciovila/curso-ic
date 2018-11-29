#!/bin/bash
docker rm -f curso-ic
docker run --rm --name curso-ic --link sql-server:sql-server --link some-redis:some-redis -e JAVA_OPTS="-Dspring.profiles.active=ic" -p 8080:8080 -d curso-ci:0.0.1-SNAPSHOT