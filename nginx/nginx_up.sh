#!/bin/sh
docker-compose -f docker-compose.yml --env-file ../.env up -d --remove-orphans
