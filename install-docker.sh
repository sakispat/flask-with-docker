#!/bin/bash

# Docker run file project
docker-compose build && docker-compose up -d
docker exec -it <container_id> /bin/bash
./init.sh
