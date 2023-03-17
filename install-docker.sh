#!/bin/bash

# Docker run file project
docker-compose build && docker-compose up -d
docker exec -it website_app /bin/bash
./init.sh