#!/bin/bash
rm -rf ./wavdio-angular
rm -rf ./wavdio-express
git clone -b feat/containerize git@github.com:Brandmonks/wavdio-angular.git
git clone -b feat/containerize git@github.com:Brandmonks/wavdio-express.git
docker build -t brandmonks/wavdio-angular ./wavdio-angular
docker build -t brandmonks/wavdio-express ./wavdio-express

echo "To try out the application, run: docker-compose up"