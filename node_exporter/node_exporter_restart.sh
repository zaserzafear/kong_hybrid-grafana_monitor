#!/bin/sh
docker-compose -f docker-compose.yml --env-file ../.env restart
