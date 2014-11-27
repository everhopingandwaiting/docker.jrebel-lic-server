#!/bin/bash

OPTIONS=""
#OPTIONS="--no-cache=true"
docker build $OPTIONS -t="softeu/jrebel-lic-server" .

echo created softeu/jrebel-lic-server
