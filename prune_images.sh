#!/bin/sh
docker rmi -f $(docker images -aq)