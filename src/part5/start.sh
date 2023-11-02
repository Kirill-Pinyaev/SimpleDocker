#!/bin/bash

gcc hello.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
nginx -g "daemon off;"
