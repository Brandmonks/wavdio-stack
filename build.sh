#!/bin/bash
rm -rf ./wavdio-angular
rm -rf ./wavdio-express
rm -rf ./wavdio-mirror
git clone -b feat/containerize git@github.com:Brandmonks/wavdio-angular.git
git clone -b feat/containerize git@github.com:Brandmonks/wavdio-express.git
git clone git@github.com:Brandmonks/wavdio-mirror.git
docker build -t brandmonks/wavdio-angular ./wavdio-angular
docker build -t brandmonks/wavdio-express ./wavdio-express
docker build -t brandmonks/wavdio-mirror ./wavdio-mirror

echo "To try out the application, run: docker-compose up"