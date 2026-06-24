#!/bin/bash

if [[ "$1" == "build" ]]; then
  docker build -t react-mod .
  docker run -d -p 5000:500 --name rmod react-mod
elif [[ "$1" == "stop" ]]; then
  docker stop rmod
  docker rm rmod
fi
