#!/bin/bash
eval $(aws ecr get-login --no-include-email)
docker tag "sefaria-docker_web:latest" "058331968334.dkr.ecr.eu-central-1.amazonaws.com/shitufta-sefaria-api:latest"
docker tag "sefaria-docker_mongo:latest" "058331968334.dkr.ecr.eu-central-1.amazonaws.com/shitufta-sefaria-db:latest"
docker push "058331968334.dkr.ecr.eu-central-1.amazonaws.com/shitufta-sefaria-api:latest"
docker push "058331968334.dkr.ecr.eu-central-1.amazonaws.com/shitufta-sefaria-db:latest"
docker push "058331968334.dkr.ecr.eu-central-1.amazonaws.com/shitufta-cache-db:latest"
